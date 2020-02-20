## PAKD server

This server provides the database and API endpoints for the PAKD client.

## Client:

[Babytivities client (GitHub)](https://github.com/codylee02/babytivities-react)

## Tech / Framework Used:

- Express
- PostgreSQL

## Endpoints

### /login

### /activities

- .get

  Returns an array of activity objects

### /activities/:activity_id

- .get

  Returns an activity object

### /favorites - Requires Auth

- .get

  Returns an array of user's favorites with the activity id they're associated with.

- .post

  Posts a new favorite

- .delete

  Removes a user's favorite. Requires favorite id in req.body. Ex: {id: [FAVORITE_ID]}
