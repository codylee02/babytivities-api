const service = {
  getActivities(db) {
    return db
      .from("babytivities_activities AS activities")
      .select(
        "activities.id",
        "activities.title",
        "activities.type",
        "activities.age"
      );
  },
  getActivity(db, activityId) {
    return db
      .from("babytivities_activities AS activities")
      .select(
        "activities.id",
        "activities.title",
        "activities.type",
        "activities.age",
        "activities.instructions"
      )
      .where("activities.id", activityId)
      .then(([activity]) => activity);
  },
  getMaterials(db, activityId) {
    return db
      .from("babytivities_materials AS materials")
      .select("materials.id", "materials.item")
      .where("activity_id", activityId);
  }
};

module.exports = service;
