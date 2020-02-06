const routes = require("express").Router();

const auth = require("./auth");
const users = require("./users");
const favorites = require("./favorites");
const activities = require("./activities");

routes.use("/auth", auth);
routes.use("/users", users);
routes.use("/favorites", favorites);
routes.use("/activities", activities);

module.exports = routes;
