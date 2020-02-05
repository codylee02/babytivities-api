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

function makeActivitiesArray() {
  return [
    {
      id: '1890fac0-479a-11ea-b77f-2e728ce88125',
      title: 'Sticky Art',
      type: 'Art',
      instructions: 'VERY CAREFULLY remove the backing from the contact paper, and with the sticky side up, tape each edge to a wall, door, or floor. Allow children to stick craft materials to the sticky side and make their own collage!',
      age: '13-24m',
      date_created: '2019-11-06 22:26:24.065662',
    },
    {
      id: '1890fd36-479a-11ea-b77f-2e728ce88125',
      title: 'Frozen Archaeologists',
      type: 'Physical',
      instructions: 'Freeze the small toys in the ice cube trays for at least 6 hours, or overnight. Take out the ice when it is solid and place it in the large bowl or bin. With supervision, allow children to chip away at the ice with their hammers to extract the toys. If children seem to be frustrated with getting the toys out, pour some warm water on the ice to melt it a little bit.',
      age: '25-36m',
      date_created: '2019-11-06 22:26:24.065662',
    },
    {
      id: '1890fe8a-479a-11ea-b77f-2e728ce88125',
      title: 'Bouncy Balloons',
      type: 'Sensory',
      instructions: 'Next time you are at the supermarket, pick up a few helium balloons (the mylar ones are best-less of a choking hazard). When you are home, lay your baby on the floor on their back, and gently tie the balloons to their wrists and ankles. Stand by and watch as your little one sees how the balloons bounce in the air as their hands and feet move.',
      age: '0-12m',
      date_created: '2019-11-06 22:26:24.065662',
    },
    {
      id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
      title: 'Scoop and Transfer',
      type: 'Physical',
      instructions: 'Fill the smaller container with water and place the bath toys inside. Then place the container with water in the larger container. Make sure to model this first for your toddler! Show them how to scoop the bath toys into the empty container before handing them the spoon.',
      age: '13-24m',
      date_created: '2019-11-06 22:26:24.065662',
    },
    {
      id: '189100f6-479a-11ea-b77f-2e728ce88125',
      title: 'Crocodile Snap',
      type: 'Literacy',
      instructions: 'Have your child in front of you with your bag of items beside you. Move your hands like a crocodile and sing: “Crocodile, Crocodile, down by the lake, I’m going to reach my hands in your bag and see what you ate!” Then reach in the bag and pull out an item. Give your child a few seconds to say the object first, and then sound out the object together. Tip: After you sing the song, you can have your child to be the one to pull something out of the bag, but make sure they are quick about it and don’t spend too long picking something out!',
      age: '25-36m',
      date_created: '2019-11-06 22:26:24.065662',
    }
  ]
}

function makeMaterialsArray() {
  return [
    {
      id: 'fff7d272-479e-11ea-b77f-2e728ce88125',
      item: 'Large piece of contact paper',
      activity_id: '1890fac0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7d7ea-479e-11ea-b77f-2e728ce88125',
      item: 'Masking Tape',
      activity_id: '1890fac0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7d952-479e-11ea-b77f-2e728ce88125',
      item: 'Craft materials (feathers, yarn, pieces of paper beads, etc.)',
      activity_id: '1890fac0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7da88-479e-11ea-b77f-2e728ce88125',
      item: 'Bowls or ice cube trays',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7dbd2-479e-11ea-b77f-2e728ce88125',
      item: 'Small plastic toys that can be frozen',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7dd08-479e-11ea-b77f-2e728ce88125',
      item: 'Water',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7de2a-479e-11ea-b77f-2e728ce88125',
      item: 'Plastic hammers or utensils',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7df60-479e-11ea-b77f-2e728ce88125',
      item: 'Large plastic bin or bowl',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7e442-479e-11ea-b77f-2e728ce88125',
      item: 'Goggles (if available)',
      activity_id: '1890fd36-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7e5a0-479e-11ea-b77f-2e728ce88125',
      item: 'Balloons filled with helium',
      activity_id: '1890fe8a-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7e6cc-479e-11ea-b77f-2e728ce88125',
      item: 'String',
      activity_id: '1890fe8a-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7e802-479e-11ea-b77f-2e728ce88125',
      item: 'Slotted spoon',
      activity_id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7e924-479e-11ea-b77f-2e728ce88125',
      item: 'Bath Toys',
      activity_id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7eb2c-479e-11ea-b77f-2e728ce88125',
      item: 'Two plastic storage containers (1 large, 1 small)',
      activity_id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7eea6-479e-11ea-b77f-2e728ce88125',
      item: 'Water',
      activity_id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7f004-479e-11ea-b77f-2e728ce88125',
      item: 'A bag that cannot be seen through (a tote bag, grocery bag, etc.',
      activity_id: '189100f6-479a-11ea-b77f-2e728ce88125',
    },
    {
      id: 'fff7f126-479e-11ea-b77f-2e728ce88125',
      item: 'Small, random items from around the house (Tip: if you want to focus on certain topics, include them in the bag: Letters, different colored paper, different animals, numbers, etc.',
      activity_id: '189100f6-479a-11ea-b77f-2e728ce88125',
    },
  ]
}

function makeFavoritesArray() {
  return [
    {
      id: 'fff7f32e-479e-11ea-b77f-2e728ce88125',
      user_id: '01f0d52c-c529-467b-81bc-486f53558aef',
      activity_id: '1890fe8a-479a-11ea-b77f-2e728ce88125',
      date_created: '2019-11-06 22:26:24.065662',
    },{
      id: 'fff7f482-479e-11ea-b77f-2e728ce88125',
      user_id: '01f0d52c-c529-467b-81bc-486f53558aef',
      activity_id: '1890ffc0-479a-11ea-b77f-2e728ce88125',
      date_created: '2019-11-06 22:26:24.065664',
    },{
      id: 'fff7f5b8-479e-11ea-b77f-2e728ce88125',
      user_id: '01f0d52c-c529-467b-81bc-486f53558aef',
      activity_id: '1890fac0-479a-11ea-b77f-2e728ce88125',
      date_created: '2019-11-06 22:26:24.065665',
    }
  ]
}

function makeBabytivitiesFixtures() {
  const testUsers = makeUsersArray();
  const testActivities = makeActivitiesArray();
  const testMaterials = makeMaterialsArray();
  const testFavorites = makeFavoritesArray();

  return {
    testUsers,
    testActivities,
    testMaterials,
    testFavorites
  };
}

function seedUsers(db, users) {
  const preppedUsers = users.map(user => ({
    ...user,
    password: bcrypt.hashSync(user.password, 1)
  }));
  return db.into("babytivities_users").insert(preppedUsers);
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

function seedBabytivitiesTables(db, users, activities, materials, favorites) {
  return db.transaction(async trx=> {
    await seedUsers(trx, users);
    await trx.into('babytivities_activities').insert(activities);
    await trx.into('babytivities_materials').insert(materials);
    await trx.into('babytivities_favorites').insert(favorites);
  })
}


module.exports = {
  makeUsersArray,
  makeActivitiesArray,
  makeMaterialsArray,
  makeFavoritesArray,

  makeBabytivitiesFixtures,
  seedUsers,
  cleanTables,
  seedBabytivitiesTables
};
