const routes = require("express").Router();

const auth = require("./auth");
const users = require("./users");
const favorites = require("./favorites");

routes.use("/auth", auth);
routes.use("/users", users);
routes.use("/favorites", favorites);

module.exports = routes;
