const express = require("express");
const service = require("./service");

const router = express.Router();
const jsonBodyParser = express.json();

router.route("/").get(jsonBodyParser, (req, res, next) => {
  service
    .getActivities(req.app.get("db"))
    .then(activities => {
      res.status(200).json(activities);
      next();
    })
    .catch(next);
});

router.route("/:activity_id").get(jsonBodyParser, (req, res, next) => {
  const activityId = req.params.activity_id;
  let response = {};

  let p1 = service
    .getActivity(req.app.get("db"), activityId)
    .then(activity => (response = { ...response, ...activity }));
  let p2 = service
    .getMaterials(req.app.get("db"), activityId)
    .then(materials => (response = { ...response, materials: materials }));

  Promise.all([p1, p2])
    .then(() => {
      if (response.title === undefined) {
        return res.status(404).json({
          error: { message: `Activity doesn't exist` }
        });
      }

      res.status(200).json(response);
      next();
    })
    .catch(next);
});

module.exports = router;
