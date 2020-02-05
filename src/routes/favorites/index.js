const express = require("express");
const path = require("path");
const service = require("./service");
const { requireAuth } = require("../../middleware/jwt-auth");

const router = express.Router();
const jsonBodyParser = express.json();

router
  .route("/")
  .all(requireAuth)
  .get(jsonBodyParser, (req, res, next) => {
    const userId = req.user.id;
    service
      .getFavorites(req.app.get("db"), userId)
      .then(favorites => {
        if (favorites.length === 0) {
          return res.status(204).end();
        }
        res.json(favorites);
        next();
      })
      .catch(next);
  })
  .post(jsonBodyParser, (req, res, next) => {
    const user_id = req.user.id;
    const activity_id = req.body.activity_id;
    newFavoriteActivity = { user_id, activity_id };

    service
      .insertFavorite(req.app.get("db"), newFavoriteActivity)
      .then(newFavorite => {
        res.status(201).json(newFavorite);
      })
      .catch(next);
  })
  .delete(jsonBodyParser, (req, res, next) => {
    const userId = req.user.id;
    const favoriteId = req.body.id;
    favoriteToRemove = { userId, favoriteId };

    service
      .removeFavorite(req.app.get("db"), favoriteToRemove)
      .then(() => {
        return res.status(204).end();
      })
      .catch(next);
  });

module.exports = router;
