const knex = require("knex");
const app = require("../../src/app");
const helpers = require("../test-helpers");

describe("Activities endpoint", function() {
  const endpoint = "/api/activities";
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

  describe(`GET /api/activities`, () => {
    it(`responds with an array of activity objects`, () => {
      const expectedActivities = [
        {
          id: testActivities[0].id,
          title: testActivities[0].title,
          type: testActivities[0].type,
          age: testActivities[0].age
        },
        {
          id: testActivities[01].id,
          title: testActivities[1].title,
          type: testActivities[1].type,
          age: testActivities[1].age
        },
        {
          id: testActivities[2].id,
          title: testActivities[2].title,
          type: testActivities[2].type,
          age: testActivities[2].age
        },
        {
          id: testActivities[3].id,
          title: testActivities[3].title,
          type: testActivities[3].type,
          age: testActivities[3].age
        },
        {
          id: testActivities[4].id,
          title: testActivities[4].title,
          type: testActivities[4].type,
          age: testActivities[4].age
        }
      ];

      return supertest(app)
        .get(endpoint)
        .expect(200, expectedActivities);
    });
  });

  describe(`GET /api/activities/:activity_id`, () => {
    it(`responds with a specific activity object`, () => {
      const activityId = testActivities[3].id;
      const expectedActivity = {
        id: testActivities[3].id,
        title: testActivities[3].title,
        type: testActivities[3].type,
        instructions: testActivities[3].instructions,
        age: testActivities[3].age,
        materials: [
          {
            id: testMaterials[11].id,
            item: testMaterials[11].item
          },
          {
            id: testMaterials[12].id,
            item: testMaterials[12].item
          },
          {
            id: testMaterials[13].id,
            item: testMaterials[13].item
          },
          {
            id: testMaterials[14].id,
            item: testMaterials[14].item
          }
        ]
      };

      return supertest(app)
        .get(`${endpoint}/${activityId}`)
        .expect(200, expectedActivity);
    });

    it(`responds with 404 not found if activity doesn't exist`, () => {
      const activityNotExist = "8c70e9b7-4746-47ce-9c96-a362eb60fcf1";

      return supertest(app)
        .get(`${endpoint}/${activityNotExist}`)
        .expect(404, { error: { message: `Activity doesn't exist` } });
    });
  });
});
