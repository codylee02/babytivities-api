const service = {
  getById(db, id) {
    return db
      .from("babytivities_favorites AS favorites")
      .select("favorites.id", "favorites.activity_id", "favorites.user_id")
      .where("favorites.id", id)
      .first();
  },
  getFavorites(db, userId) {
    return db
      .from("babytivities_favorites AS favorites")
      .select("favorites.id", "favorites.activity_id")
      .where("favorites.user_id", userId);
  },
  insertFavorite(db, newFavorite) {
    return db
      .insert(newFavorite)
      .into("babytivities_favorites")
      .returning("*")
      .then(([favorite]) => favorite)
      .then(favorite => service.getById(db, favorite.id));
  },
  removeFavorite(db, favoriteToRemove) {
    return db("babytivities_favorites")
      .where({
        id: favoriteToRemove.favoriteId,
        user_id: favoriteToRemove.userId
      })
      .delete();
  }
};

module.exports = service;
