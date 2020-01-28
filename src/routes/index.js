const routes = require("express").Router();

const auth = require("./auth");

const users = require("./users");

routes.use("/auth", auth);

routes.use("/users", users);

module.exports = routes;
