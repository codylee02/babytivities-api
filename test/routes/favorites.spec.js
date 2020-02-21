const knex = require("knex");
const app = require("../../src/app");
const helpers = require("../test-helpers");

describe("Favorites endpoint", function() {
  const endpoint = "/api/favorites";
  let db;
  const {
    testUsers,
    testActivities,
    testMaterials,
    testFavorites
  } = helpers.makeBabytivitiesFixtures();

  before("make knex instance", () => {
    db = knex({
      client: "pg",
      connection: process.env.TEST_DATABASE_URL
    });
    app.set("db", db);
  });

  after("disconnect from db", () => db.destroy());

  before("cleanup", () => helpers.cleanTables(db));

  afterEach("cleanup", () => helpers.cleanTables(db));

  beforeEach("seed tables", () =>
    helpers.seedBabytivitiesTables(
      db,
      testUsers,
      testActivities,
      testMaterials,
      testFavorites
    )
  );

  describe(`GET /api/favorites`, () => {
    context(`Given the user has favorites`, () => {
      it(`responds with an array of user's favorites`, () => {
        const testUser = testUsers[0];
        const expectedFavoritesArray = [
          {
            id: testFavorites[0].id,
            activity_id: testFavorites[0].activity_id
          },
          {
            id: testFavorites[1].id,
            activity_id: testFavorites[1].activity_id
          },
          {
            id: testFavorites[2].id,
            activity_id: testFavorites[2].activity_id
          }
        ];

        return supertest(app)
          .get(endpoint)
          .set("Authorization", helpers.makeAuthHeader(testUser))
          .expect(200, expectedFavoritesArray);
      });
    });

    context(`Given the user has no favorites`, () => {
      it(`responds resolves to an 200`, () => {
        const testUser = testUsers[1];

        return supertest(app)
          .get(endpoint)
          .set("Authorization", helpers.makeAuthHeader(testUser))
          .expect(200);
      });
    });
  });

  describe(`POST /api/favorites`, () => {
    it(`adds favorite, responds 201 and the activity id of the favorite`, () => {
      const testUser = testUsers[1];
      const newFavoriteActivityId = {
        activity_id: "1890fe8a-479a-11ea-b77f-2e728ce88125"
      };

      return supertest(app)
        .post(endpoint)
        .set("Authorization", helpers.makeAuthHeader(testUser))
        .send(newFavoriteActivityId)
        .expect(201)
        .expect(res => {
          expect(res.body).to.have.property("id");
          expect(res.body.activity_id).to.eql(
            newFavoriteActivityId.activity_id
          );
        })
        .expect(res =>
          db
            .from("babytivities_favorites")
            .select("*")
            .where({ id: res.body.id })
            .first()
            .then(row => {
              expect(row.activity_id).to.eql(newFavoriteActivityId.activity_id);
              expect(row.user_id).to.eql(testUser.id);
            })
        );
    });
  });

  describe(`DELETE /api/favorites`, () => {
    it(`removes the favorite and respoinds 204`, () => {
      const testUser = testUsers[0];
      const favoriteToDelete = { id: testFavorites[0].id };
      const expectedFavoritesArray = [
        {
          id: testFavorites[1].id,
          activity_id: testFavorites[1].activity_id
        },
        {
          id: testFavorites[2].id,
          activity_id: testFavorites[2].activity_id
        }
      ];

      return supertest(app)
        .delete(endpoint)
        .set("Authorization", helpers.makeAuthHeader(testUser))
        .send(favoriteToDelete)
        .expect(204)
        .then(() => {
          return supertest(app)
            .get(endpoint)
            .set("Authorization", helpers.makeAuthHeader(testUser))
            .expect(expectedFavoritesArray);
        });
    });
  });
});
