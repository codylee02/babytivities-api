const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

function makeUsersArray() {
  return [
    {
      id: "01f0d52c-c529-467b-81bc-486f53558aef",
      username: "dunder",
      first_name: "Dunder",
      last_name: "Mifflin",
      password: "$2a$12$lHK6LVpc15/ZROZcKU00QeiD.RyYq5dVlV/9m4kKYbGibkRc5l4Ne",
      date_created: "2019-11-06 22:26:24.065662"
    },
    {
      id: "bf87b68b-8de3-42bb-9857-a8750bcf1895",
      username: "b.deboop",
      first_name: "Bodeep Deboop",
      last_name: "Bo",
      password: "$2a$12$VQ5HgWm34QQK2rJyLc0lmu59cy2jcZiV6U1.bE8rBBnC9VxDf/YQO",
      date_created: "2019-11-06 22:26:24.065662"
    },
    {
      id: "a191bd9e-ffd6-4fce-b4dc-6143ba11620b",
      username: "c.bloggs",
      first_name: "Charlie Bloggs",
      last_name: "Charlie",
      password: "$2a$12$2fv9OPgM07xGnhDbyL6xsuAeQjAYpZx/3V2dnu0XNIR27gTeiK2gK",
      date_created: "2019-11-06 22:26:24.065662"
    },
    {
      id: "2302cf21-92f7-4145-a48a-031e0d5e4376",
      username: "s.smith",
      first_name: "Sam Smith",
      last_name: "Sam",
      password: "$2a$12$/4P5/ylaB7qur/McgrEKwuCy.3JZ6W.cRtqxiJsYCdhr89V4Z3rp.",
      date_created: "2019-11-06 22:26:24.065662"
    },
    {
      id: "3cbed6a5-28bf-4813-88da-97130deeed7f",
      username: "lexlor",
      first_name: "Alex Taylor",
      last_name: "Lex",
      password: "$2a$12$Hq9pfcWWvnzZ8x8HqJotveRHLD13ceS7DDbrs18LpK6rfj4iftNw.",
      date_created: "2019-11-06 22:26:24.065662"
    },
    {
      id: "f7fa755d-733b-4c3a-b5ad-a6b8290e46cd",
      username: "wippy",
      first_name: "Ping Won In",
      last_name: "Ping",
      password: "$2a$12$ntGOlTLG5nEXYgDVqk4bPejBoJP65HfH2JEMc1JBpXaVjXo5RsTUu",
      date_created: "2019-11-06 22:26:24.065662"
    }
  ];
}

function makeBabytivitiesFixtures() {
  const testUsers = makeUsersArray();

  return {
    testUsers
  };
}

function cleanTables(db) {
  return db.raw(
    `TRUNCATE
    babytivities_activities,
    babytivities_favorites,
    babytivities_materials,
    babytivities_users`
  );
}

function seedUsers(db, users) {
  const preppedUsers = users.map(user => ({
    ...user,
    password: bcrypt.hashSync(user.password, 1)
  }));
  return db.into("babytivities_users").insert(preppedUsers);
}

module.exports = {
  makeUsersArray,

  makeBabytivitiesFixtures,
  seedUsers,
  cleanTables
};
