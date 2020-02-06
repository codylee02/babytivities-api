const knex = require("knex");
const app = require("../../src/app");
const helpers = require("../test-helpers");

describe(`Protected endpoints`, function() {
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

  const protectedEndpoints = [
    {
      name: "GET /api/favorites",
      path: "/api/favorites",
      method: supertest(app).get
    },
    {
      name: "POST /api/favorites/",
      path: "/api/favorites/",
      method: supertest(app).post
    },
    {
      name: "DELETE /api/favorites/",
      path: "/api/favorites/",
      method: supertest(app).delete
    }
  ];

  protectedEndpoints.forEach(endpoint => {
    describe(endpoint.name, () => {
      it(`responds 401 'Missing bearer token' when no bearer token`, () => {
        return endpoint
          .method(endpoint.path)
          .expect(401, { error: `Missing bearer token` });
      });

      it(`responds 401 'Unauthorized request' when invalid JWT secret`, () => {
        const validUser = testUsers[0];
        const invalidSecret = "bad-secret";
        return endpoint
          .method(endpoint.path)
          .set(
            "Authorization",
            helpers.makeAuthHeader(validUser, invalidSecret)
          )
          .expect(401, { error: `Unauthorized request` });
      });

      it(`responds 401 'Unauthorized request' when invalid sub in payload`, () => {
        const invalidUser = { username: "user-not-existy", id: 1 };
        return endpoint
          .method(endpoint.path)
          .set("Authorization", helpers.makeAuthHeader(invalidUser))
          .expect(401, { error: "Unauthorized request" });
      });
    });
  });
});
