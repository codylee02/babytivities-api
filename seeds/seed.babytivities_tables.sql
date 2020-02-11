BEGIN;
TRUNCATE babytivities_users,
babytivities_activities,
babytivities_favorites,
babytivities_materials RESTART IDENTITY CASCADE;
INSERT INTO babytivities_users (id, username, first_name, last_name, password)
VALUES
  (
    '8de080e8-92f6-4689-a671-2f3a256eeb83',
    'dunder',
    'Dunder',
    'Mifflin',
    '$2a$12$lHK6LVpc15/ZROZcKU00QeiD.RyYq5dVlV/9m4kKYbGibkRc5l4Ne'
  ),
  (
    'df593d1a-212e-407f-a46d-464800e8c1be',
    'b.deboop',
    'Bodeep Deboop',
    'Bo',
    '$2a$12$VQ5HgWm34QQK2rJyLc0lmu59cy2jcZiV6U1.bE8rBBnC9VxDf/YQO'
  ),
  (
    '983cdfb1-aab9-4de4-b81a-4bf1b3640235',
    'c.bloggs',
    'Charlie Bloggs',
    'Charlie',
    '$2a$12$2fv9OPgM07xGnhDbyL6xsuAeQjAYpZx/3V2dnu0XNIR27gTeiK2gK'
  ),
  (
    '34a215f5-bb7d-41fd-bf26-890108a8fa83',
    's.smith',
    'Sam Smith',
    'Sam',
    '$2a$12$/4P5/ylaB7qur/McgrEKwuCy.3JZ6W.cRtqxiJsYCdhr89V4Z3rp.'
  ),
  (
    'ba464bf9-2fbd-418e-8080-e462de8543d6',
    'lexlor',
    'Alex Taylor',
    'Lex',
    '$2a$12$Hq9pfcWWvnzZ8x8HqJotveRHLD13ceS7DDbrs18LpK6rfj4iftNw.'
  ),
  (
    '6a583bf6-e06b-46ce-94bd-0d3b410ce521',
    'wippy',
    'Ping Won In',
    'Ping',
    '$2a$12$ntGOlTLG5nEXYgDVqk4bPejBoJP65HfH2JEMc1JBpXaVjXo5RsTUu'
  );
INSERT INTO babytivities_activities (id, title, age, type, instructions)
VALUES
  (
    '73d71ae4-4ad4-11ea-b77f-2e728ce88125',
    'Freeze Game',
    '36m+',
    'Physical',
    'Play a song on your device and encourage your child to dance and wiggle and hop and move as much as they can. When you stop the music, say “FREEZE!” and have them stay as still as they can until the music starts playing again.'
  ),
  (
    '73d71da0-4ad4-11ea-b77f-2e728ce88125',
    'Ball Ramps',
    '36m+',
    'Physical',
    'Place balls inside muffin tin. Lean the piece of cardboard (or whatever else you have chosen) against the stool, and tape it if necessary to hold it in place. Fold the sides of a piece of construction paper up, and then tape the bottom of the ramp to the cardboard. Repeat this with two other pieces of construction paper. Then, have your toddler take the balls from the muffin tin and roll them down the ramps and watch them place them down them again and again!Tip: For even more fun, try placing different textures on the bottom of the ramps and explore with your child to see which ones make the balls go faster or slower. These textures could be things such as: tin foil, a small towel, or anything else you can think of!'
  ),
  (
    '73d71efe-4ad4-11ea-b77f-2e728ce88125',
    'Frozen Archaeologists',
    '36m+',
    'Physical',
    'Freeze the small toys in the ice cube trays for at least 6 hours, orovernight. Take out the ice when it is solid and place it in the large bowl or bin. With supervision, allow children to chip away at the ice with their hammers to extract the toys. If children seem to be frustrated with getting the toys out, pour some warm water on the ice to melt it a little bit.'
  ),
  (
    '73d7203e-4ad4-11ea-b77f-2e728ce88125',
    'Plastic Bag Kites',
    '36m+',
    'Physical',
    'This is a great activity for children that can be created in the nick of time! Simply loop the string through the handles of the bag, tie a knot at the end, and enjoy as your children run with their kites flying behind them in the air!'
  ),
  (
    '73d726c4-4ad4-11ea-b77f-2e728ce88125',
    'Crocodile Snap Game',
    '36m+',
    'Literacy',
    'Have your child in front of you with your bag of items beside you. Move your hands like a crocodile and sing: “Crocodile, Crocodile, down by the lake, I’m going to reach my hands in your bag and see what you ate!” Then reach in the bag and pull out an item. Give your child a few seconds to say the object first, and then sound out the object together. Tip: After you sing the song, you can have your child be the one to pull something out of the bag, but make sure they are quick about it and don’t spend too long picking something out!'
  ),
  (
    '73d7282c-4ad4-11ea-b77f-2e728ce88125',
    'Parking Game',
    '36m+',
    'Literacy',
    ' On the large piece of paper, draw parking spots that are big enough for the cars or other toys you have, and write a different letter or number in each spot. On the smaller piece of paper, write corresponding letters that are small enough to fit on the toys, then cut out the letters and tape them to the toys. Have your child match the toys to the correct letter on the paper, and have fun with it! If they place a toy in the “wrong” spot, ask them if the letters match up and if they can see the same letter anywhere else. Tip: This can be done with any topic you are wanting to work on with your child- Numbers, colors, and even if you feel they are up to it- words!'
  ),
  (
    '73d72958-4ad4-11ea-b77f-2e728ce88125',
    'Scavenger Hunt',
    '36m+',
    'Literacy',
    'Simply hide these pictures around the house or outside, and encourage your child to search for the items around the house on their own. Provide support when necessary. It might be helpful to let the child know how many items they have left to find after they find one. This is a simple one, but it is always a hit if you put some effort into it!'
  ),
  (
    '73d72a84-4ad4-11ea-b77f-2e728ce88125',
    'Stickers!',
    '36m+',
    'Art',
    'Allow your child to just stick those stickers you have laying around wherever they want on the paper! Many people tend to only let their children use a few stickers at a time. However, stickers are a great art AND fine motor activity because they challenge children to peel off stickers, which is not always easy to do. As long as they do not stick their stickers on everything in sight, stickers can be a great, no-mess alternative to painting or coloring!'
  ),
  (
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125',
    'Pom-pom Painting',
    '36m+',
    'Art',
    'Attach a few cotton balls to clothespins, and let your child use them as an alternative to paint brushes. As simple as this may sound, this is a great way to introduce your child to different utensils, as it is likely that they have never painted with a clothespin. It also provides them with a different experience because of the way that the pom-poms paint compared to a traditional paintbrush. Tip: Be prepared for a mess, and let your child explore to their heart’s content! The more they are allowed to explore with the paint, the more willing they will be to be creative with it!'
  ),
  (
    '73d72cc8-4ad4-11ea-b77f-2e728ce88125',
    'Non-Traditional Painting',
    '36m+',
    'Art',
    'With your alternative paintbrush ready, allow your child to explore the different utensils in whatever way they would like with the paint!'
  ),
  (
    '73d73088-4ad4-11ea-b77f-2e728ce88125',
    'Marble Painting',
    '36m+',
    'Art',
    'Tape the paper to the bottom of the box or tray. Dip a marble in some paint, have your child drop it in the box, and let them have fun as they move the box around to watch as the marble leaves a trail behind!'
  ),
  (
    '73d731f0-4ad4-11ea-b77f-2e728ce88125',
    'Homemade Face Painting',
    '36m+',
    'Art',
    'Mix together the cornstarch, lotion, and 1 T oil together. Add more oil if you would like a thinner consistency. Add in little drops of paint to get the color that you want. Be sure to test out the paint on the back of your hand before using on anyone’s face so that it isn’t too dry or cracking on their skin. Enjoy!'
  ),
  (
    '73d7331c-4ad4-11ea-b77f-2e728ce88125',
    'Coffee Filter Painting',
    '36m+',
    'Art',
    'Lay 1 or 2 coffee filters flat and add about a tablespoon of paint in the middle of the filter. Gather all the edges together and tie the yarn around the middle to secure the paint inside. Drop the coffee filters on the paper like a stamp to see how it makes a different experience from just painting with a paint brush!'
  ),
  (
    '73d734d4-4ad4-11ea-b77f-2e728ce88125',
    'Sensory Table Ideas',
    '36m+',
    'Sensory',
    ' Pour your sensory item into the plastic container, as well as a few toys for your little one to dig and find (make sure not to add too many toys as this can sometimes be overwhelming! Stick to 2-3 larger toys, or 5-6 smaller ones)'
  ),
  (
    '73d73632-4ad4-11ea-b77f-2e728ce88125',
    'Sensory Bags',
    '36m+',
    'Sensory',
    'Squeeze the bottle of hair gel into the bag, then add the small objects to the bag if you would like to. Seal it and tape up all of the edges of the bag really well. If you would like, you can tape the bag to a hard surface such as a table or window so that your child can’t poke holes in it as easily.'
  ),
  (
    '73d73768-4ad4-11ea-b77f-2e728ce88125',
    'Play Dough',
    '36m+',
    'Sensory',
    'Add all dry ingredients to a saucepan (Yes, that is ⅓ cup of salt!). Next, add a few drops of food coloring to the water, and pour that water, along with the oil, into the saucepan with the dry ingredients. Turn on the heat to medium/low, and stir the mix. It will be a little lumpy, but that’s okay. Stir until it starts to solidify. Once it starts to stick to the spoon and form a solid mass, remove from heat and allow it to cool on wax paper or a paper plate. Knead the dough to get out all the lumps and to desired consistency.'
  ),
  (
    '73d73894-4ad4-11ea-b77f-2e728ce88125',
    'Oobleck',
    '36m+',
    'Sensory',
    'Place about ¼ cup of cornstarch in a shallow dish. Then, place a few drops of food coloring in about ¼ cup water and stir. Very slowly pour water over the cornstarch and slowly mix until desired consistency. IMPORTANT!- Do not add too much water, or it will be like soup, you want the oobleck to move like a liquid, but feel like a solid.'
  ),
  (
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125',
    'Shaving Cream Rain Clouds',
    '36m+',
    'Science',
    'Fill the small containers with a little bit of water (the less water used, the more it will “rain”) Then, place about 10 drops of food coloring in each small container. In your bowl, cup, or vase, fill it about halfway with water, and then pile some shaving cream on top. Use the eye dropper or syringe to drop the colored water over the shaving cream, and watch as the colors “rain” from the shaving cream like a cloud!'
  ),
  (
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125',
    'Magic Milk',
    '36m+',
    'Science',
    'Cover the bottom of your dish with about 1 inch of milk. Randomly drop a few drops of food coloring all over the milk. Dip the q-tip in dish soap, and then dip the q-tip in the milk. Enjoy as you watch the colors all scatter and make a beautiful design!'
  ),
  (
    '73d73e48-4ad4-11ea-b77f-2e728ce88125',
    'Sticky Art',
    '25-36m',
    'Art',
    'VERY CAREFULLY remove the backing from the contact paper, and with the sticky side up, tape each edge to a wall, door, or floor. Allow children to stick craft materials to the sticky side and make their own collage!'
  ),
  (
    '73d73f74-4ad4-11ea-b77f-2e728ce88125',
    'Edible Painting',
    '25-36m',
    'Art',
    'Place some of the Cool Whip or Yogurt into a bowl, and drop a few drops of food coloring into it and mix. Offer to your child and let them paint with their fingers or with paint brushes, and even let them eat it if they want to!'
  ),
  (
    '73d740aa-4ad4-11ea-b77f-2e728ce88125',
    'Simple Moon Sand',
    '25-36m',
    'Sensory',
    'Put all ingredients in a large mixing bowl, and combine using a dough blender well for about 10 minutes. May be a good idea to play with it outside because it is quite messy! Store in a bag.'
  ),
  (
    '73d741cc-4ad4-11ea-b77f-2e728ce88125',
    'Tape Walk',
    '25-36m',
    'Physical',
    'Place the different colors of tape next to each other in zig zags, waves, and straight lines to encourage your toddler to work on their coordination in following their lines.'
  ),
  (
    '73d74596-4ad4-11ea-b77f-2e728ce88125',
    'Toddler Croquet',
    '25-36m',
    'Physical',
    'Cut the papers into thirds, and tape them to the floor so that they form arches in the middle, like a croquet arch. Have your child try and roll the balls through the arches.'
  ),
  (
    '73d746ea-4ad4-11ea-b77f-2e728ce88125',
    'Scoop and Transfer',
    '25-36m',
    'Physical',
    'Fill one of the containers with water, and place the bath toys inside, and place the empty container beside it on top of the towels. Model for your toddler how to take the slotted spoon and transfer the bath toys to the empty bucket before handing them the spoon.'
  ),
  (
    '73d74816-4ad4-11ea-b77f-2e728ce88125',
    'Find the Pipe Cleaner',
    '25-36m',
    'Physical',
    'Cut the pipe cleaners with the scissors into 1-inch pieces. Place the pipe cleaners in the plastic bottle, and model for your child how to guide the magnets over the container to pick up the pipe cleaners from the outside.'
  ),
  (
    '73d74938-4ad4-11ea-b77f-2e728ce88125',
    'Hidden Colors',
    '25-36m',
    'Science',
    'Place the muffin tin in the storage bin. Place a drop of food coloring in each of the wells of the muffin tin. Cover the drops of food coloring with baking soda. Fill the squirt bottle with the vinegar, and model for your toddler how to gently squirt the vinegar over the baking soda to reveal the magic colors!'
  ),
  (
    '73d74a5a-4ad4-11ea-b77f-2e728ce88125',
    'DIY Fluffy Slime',
    '25-36m',
    'Science',
    'Place the glue in a plastic bowl, along with the food coloring if you are using it. Once you mix it and it is the desired color, add the saline solution and mix until combined. Then stir in the shaving cream (the more you add, the thicker it will be). Stir until you can’t anymore, and then knead with your hands until it is no longer sticky. Enjoy!'
  ),
  (
    '73d75040-4ad4-11ea-b77f-2e728ce88125',
    'Textures',
    '0-3m',
    'Physical',
    'While you are hanging out with your baby and feel the need to occupy them, having your baby’s hand touch different textures is a great way to help them explore the world around them! Have them feel your soft blanket, a smooth table, someone’s rough beard, or really anything that you can think of. Babies use their senses to explore the world around them when they are so young, so it is important to give them as many opportunities to do this as you can!'
  ),
  (
    '73d75176-4ad4-11ea-b77f-2e728ce88125',
    'Reading',
    '0-3m',
    'Literacy',
    'Yes! You read that right! Please read to your child, even if you feel a little silly reading to them. Get them used to the rhythm of the books, flipping the pages, and looking at the pictures. Reading is such a good thing to do with your children at any age, and even though they won’t quite understand what’s going on in the story, creating good memories around reading is crucial for a good attitude towards it later on in life.'
  ),
  (
    '73d75298-4ad4-11ea-b77f-2e728ce88125',
    'Tummy Time',
    '0-3m',
    'Physical',
    'Never underestimate the power of tummy time for an infant! Be sure to place a blanket or rag under your baby when placing them on their tummy to catch any drool or spit-up that may come out of their mouth! Also, interacting with your baby while they are on their tummy can help distract them if they are not enjoying it. Making faces and talking encouragingly can make maybe 30 seconds of tummy time turn into three to five minutes of tummy time. Tummy time is so heavily talked about because it’ll help your little guy to gain more head control and not bob their head so much. It can also give them the core strength that they need to roll over, sit up, and so much more!'
  ),
  (
    '73d753c4-4ad4-11ea-b77f-2e728ce88125',
    'Bouncy Balloons',
    '4-6m',
    'Physical',
    'Next time you are at the supermarket, pick up a few helium balloons (the mylar ones are best-less of a choking hazard). When you are home, lay your baby on the floor on their back, and gently tie the balloons to their wrists and ankles. Stand by and watch as your little one sees how the balloons bounce in the air as their hands and feet move.'
  ),
  (
    '73d754e6-4ad4-11ea-b77f-2e728ce88125',
    'Finger Toys',
    '4-6m',
    'Physical',
    'Give your infant some small (safe) toys to grab and figure out how to use and manipulate on their own. Try not to move the toys closer to him if he drops it near him to allow the opportunity to reach and control their grasp.'
  ),
  (
    '73d75842-4ad4-11ea-b77f-2e728ce88125',
    'Shaker Bottles',
    '7-12m',
    'Physical',
    'For a fun way to help your infant develop their fine motor skills, fill oneof the water bottles with your dried rice, or whatever other object youhave on hand. in order to really secure the lid, tape it up well so the rice does not fall out. Hand the bottle to your baby and watch as they shake the bottle to their heart''s content.'
  ),
  (
    '73d7598c-4ad4-11ea-b77f-2e728ce88125',
    'Magic Tricks',
    '7-12m',
    'Physical',
    'This is so fun to do with babies at this age because they have not yet mastered the concept of object permanence. This means that when something is blocked from their view, they literally think it has disappeared forever, and are really surprised when they see it appear again. For this activity, just place the cracker or block under one of the cups, move them around in different places, and then watch your infant and how amazed they are as you reveal the item from under one of the cups.'
  ),
  (
    'f0b9447e-4c50-11ea-b77f-2e728ce88125',
    'Sock Puppets',
    '13-24m',
    'Physical',
    'As simple as it sounds, a simple sock puppet can provide hours of entertainment for your little guy at any time. In the car, before bed time, during lunch, or really anytime. Just draw a face on the sock, put it over your hand, and use it to make funny faces, sing songs, and play with your little one.'
  ),
  (
    'f0b946ea-4c50-11ea-b77f-2e728ce88125',
    'Cardboard Coloring Page',
    '13-24m',
    'Physical',
    'This is a wonderful activity to occupy your little one during a rainy day. Just lay down the box on the floor and let your little one go crazy with drawing all over the box.'
  ),
  (
    'f0b9483e-4c50-11ea-b77f-2e728ce88125',
    'Noodle Neclaces',
    '13-24m',
    'Physical',
    'This may be a little difficult for your 1-year-old, but is wonderful for them to practice their fine-motor skills. Have them string the pasta through string or pipe cleaner. If it helps them, you can also have the hold the string or pipe cleaner so that you can thread the pasta on.'
  ),
  (
    'f0b94b5e-4c50-11ea-b77f-2e728ce88125',
    'Bathtub Painting',
    '13-24m',
    'Sensory',
    'In an empty bathtub, put a little bit of paint on the tub and have your baby explore and paint all over the place. When they are done, just wash down the tub and then give your little guy a quick bath.'
  ),
  (
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125',
    'Edible Slime',
    '13-24m',
    'Sensory',
    'In mixing bowl, mix Jell-O and cornstarch until combined. Slowly pour water into mix, stirring the entire time. The mixture will become tough to stir, but resist adding more water so that it does not become more like oobleck. However, if you do need to add water, add it by a few drops at a time because it will quickly change its consistency. Have fun with your edible slime with your toddler!'
  ),
  (
    '73d74b86-4ad4-11ea-b77f-2e728ce88125',
    'Mirror Time',
    '0-3m',
    'Physical',
    'Hang a mirror in front of your baby, or place them in front of a mirror for them to really explore the face in front of them as it moves at the sametime that they do!'
  ),
  (
    '73d74f00-4ad4-11ea-b77f-2e728ce88125',
    'Singing',
    '0-3m',
    'Literacy',
    'Gently and softly singing a song to your sweet baby during diaper changes, car rides, play time, or really any time to mezmerize them (for at least a few moments) and allow them to hear the rhythm and tone in your music.'
  ),
  (
    'f0b94fdc-4c50-11ea-b77f-2e728ce88125',
    'No-mess Paint',
    '13-24m',
    'Art',
    'On the canvas, place drops of paint all over, and then cover it with the cling wrap.'
  ),
  (
    'f0b9513a-4c50-11ea-b77f-2e728ce88125',
    'Tummy-Time Finger Painting',
    '4-6m',
    'Art',
    'This is a fun way to switch up tummy time if your infant is growing a little tired of the same old thing every day with tummy time. Place a few drops of paint on the paper, and carefully place it in the Ziploc bag. Place the bag under your infant at tummy time, and encourage them to push on the paint and create something beautiful.'
  );
INSERT INTO babytivities_materials (id, item, activity_id)
VALUES
  (
    '333eeb6c-4c58-11ea-b77f-2e728ce88125',
    'Something that plays music',
    '73d71ae4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eea18-4c58-11ea-b77f-2e728ce88125',
    'A small tool',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee734-4c58-11ea-b77f-2e728ce88125',
    'A muffin tin',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee608-4c58-11ea-b77f-2e728ce88125',
    'A few small balls',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee4e6-4c58-11ea-b77f-2e728ce88125',
    'A long board or flat surface (cookie sheet, piece of cardboard, etc.)',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee3ba-4c58-11ea-b77f-2e728ce88125',
    '3 different colored pieces of construction paper, cut in half the long way',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee284-4c58-11ea-b77f-2e728ce88125',
    'Tape',
    '73d71da0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ee108-4c58-11ea-b77f-2e728ce88125',
    'Bowls or ice cube trays',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333edd98-4c58-11ea-b77f-2e728ce88125',
    'Small plastic toys that can be frozen',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333edc76-4c58-11ea-b77f-2e728ce88125',
    'Water',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333edb4a-4c58-11ea-b77f-2e728ce88125',
    'Plastic hammers or utensils',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eda1e-4c58-11ea-b77f-2e728ce88125',
    'Large plastic bin or bowl',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed8f2-4c58-11ea-b77f-2e728ce88125',
    'Goggles (if available)',
    '73d71efe-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed7a8-4c58-11ea-b77f-2e728ce88125',
    'A few plastic grocery bags without holes in them',
    '73d7203e-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed654-4c58-11ea-b77f-2e728ce88125',
    'A long piece of thick, sturdy string',
    '73d7203e-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed3a2-4c58-11ea-b77f-2e728ce88125',
    'A bag that cannot be seen through (a tote bag, grocery bag, etc.)',
    '73d726c4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed26c-4c58-11ea-b77f-2e728ce88125',
    'Small, random items from around the house (Tip: if you want to focus on certain topics, include them in the bag: Letters, different colored paper, differ animals, numbers, etc.)',
    '73d726c4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ed0f0-4c58-11ea-b77f-2e728ce88125',
    'Large piece of paper (cardboard or a pizza box work well too)',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ecd1c-4c58-11ea-b77f-2e728ce88125',
    'Marker',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ecbf0-4c58-11ea-b77f-2e728ce88125',
    'Any toy cars, blocks, legos, or other toys you might have laying around the house',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eca92-4c58-11ea-b77f-2e728ce88125',
    'A piece of paper',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec72c-4c58-11ea-b77f-2e728ce88125',
    'Tape',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec60a-4c58-11ea-b77f-2e728ce88125',
    'Scissors',
    '73d7282c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec4e8-4c58-11ea-b77f-2e728ce88125',
    'Pictures of any items from a theme that you might want to practice (letters, numbers, animals, foods, cars, colors, etc.)',
    '73d72958-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec3bc-4c58-11ea-b77f-2e728ce88125',
    'Optional: toy binoculars, notebook for taking notes, bag for holding found items',
    '73d72958-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec290-4c58-11ea-b77f-2e728ce88125',
    'Stickers',
    '73d72a84-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ec146-4c58-11ea-b77f-2e728ce88125',
    'Lots of spare paper',
    '73d72a84-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ebdf4-4c58-11ea-b77f-2e728ce88125',
    'Pom-poms (or cotton balls, small pieces of sponge)',
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ebcd2-4c58-11ea-b77f-2e728ce88125',
    'Clothespins',
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ebba6-4c58-11ea-b77f-2e728ce88125',
    'Paper',
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eba52-4c58-11ea-b77f-2e728ce88125',
    'Paint',
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb8a4-4c58-11ea-b77f-2e728ce88125',
    'Bowl for paint',
    '73d72ba6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb778-4c58-11ea-b77f-2e728ce88125',
    'Anything you can find that can be used to paint with (some of my favorites are things that can be found in nature- leaves, flowers, twigs, grass, hay, small pieces of mulch, pinecones- but can be anything you would like, such as sponges, qtips, feathers, plastic forks, cut apples or potatoes, old toy cars, yarn cookie cutters, a toothbrush, and much more!)',
    '73d72cc8-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb638-4c58-11ea-b77f-2e728ce88125',
    'Paint',
    '73d72cc8-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb372-4c58-11ea-b77f-2e728ce88125',
    'Bowl for paint',
    '73d72cc8-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb246-4c58-11ea-b77f-2e728ce88125',
    'Paper',
    '73d72cc8-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eb11a-4c58-11ea-b77f-2e728ce88125',
    'Paint',
    '73d73088-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eaff8-4c58-11ea-b77f-2e728ce88125',
    'Marbles',
    '73d73088-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eaed6-4c58-11ea-b77f-2e728ce88125',
    'Large sheets of paper (newspapers work well)',
    '73d73088-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ead96-4c58-11ea-b77f-2e728ce88125',
    'Tape',
    '73d73088-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333eaa4e-4c58-11ea-b77f-2e728ce88125',
    'Shallow dish, tray, or box (shoe boxes work well)',
    '73d73088-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea92c-4c58-11ea-b77f-2e728ce88125',
    'Few drops of washable kids paint',
    '73d731f0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea800-4c58-11ea-b77f-2e728ce88125',
    '1/2 cup cornstarch',
    '73d731f0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea6de-4c58-11ea-b77f-2e728ce88125',
    '1-2 Tbs vegetable oil',
    '73d731f0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea5b2-4c58-11ea-b77f-2e728ce88125',
    '1/2 cup of your favorite face lotion',
    '73d731f0-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea486-4c58-11ea-b77f-2e728ce88125',
    'Yarn',
    '73d7331c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea332-4c58-11ea-b77f-2e728ce88125',
    'Coffee filters',
    '73d7331c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333ea062-4c58-11ea-b77f-2e728ce88125',
    'Paint',
    '73d7331c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9f40-4c58-11ea-b77f-2e728ce88125',
    'Paper',
    '73d7331c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9e1e-4c58-11ea-b77f-2e728ce88125',
    'Any textured item you can think of (and are okay with not using again)',
    '73d734d4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9cf2-4c58-11ea-b77f-2e728ce88125',
    'Sand, flour, water (cold or warm) pasta (cooked or uncooked), small pebbles, rice, popcorn kernels, dry beans, puffy shaving cream (not the gel kind), animal bedding, bird or sunflower seeds, potting soil, shredded paper, wheat, water marbles (make sure these are NEVER digested), etc.',
    '73d734d4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9bd0-4c58-11ea-b77f-2e728ce88125',
    'Small toys that can be played within the items above: plastic/rubber animals, sand toys, plastic blocks, bath toys, funnels, etc.',
    '73d734d4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9a90-4c58-11ea-b77f-2e728ce88125',
    'Shallow plastic container',
    '73d734d4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e970c-4c58-11ea-b77f-2e728ce88125',
    'Towels to put underneath container',
    '73d734d4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e95e0-4c58-11ea-b77f-2e728ce88125',
    'Plastic ziplock bags (the thicker the pastic on the bags, the better to prevent holes) (nail polish remover and a cotton ball will take the Ziploc sign right off the bag',
    '73d73632-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9482-4c58-11ea-b77f-2e728ce88125',
    'Large bottle of cheap hair gel',
    '73d73632-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9338-4c58-11ea-b77f-2e728ce88125',
    'Optional: Small objects to be placed in a bag (buttons, plastic animals, beads, sequins, glitter, or anything else you can find around the house)',
    '73d73632-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e9180-4c58-11ea-b77f-2e728ce88125',
    'Duct tape',
    '73d73632-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e905e-4c58-11ea-b77f-2e728ce88125',
    '1 cup all-purpose flour',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e8f14-4c58-11ea-b77f-2e728ce88125',
    'Water',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e8b04-4c58-11ea-b77f-2e728ce88125',
    '2 Tsp cream of tartar',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e853c-4c58-11ea-b77f-2e728ce88125',
    '1/3 cup cheap table salt',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e8406-4c58-11ea-b77f-2e728ce88125',
    'Vegetable or canola oil',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e82bc-4c58-11ea-b77f-2e728ce88125',
    'Gel food coloring (makes more vibrant colors than regular food dye)',
    '73d73768-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e80b4-4c58-11ea-b77f-2e728ce88125',
    'Cornstarch',
    '73d73894-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7f6a-4c58-11ea-b77f-2e728ce88125',
    'Water',
    '73d73894-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7e0c-4c58-11ea-b77f-2e728ce88125',
    'Liquid food coloring',
    '73d73894-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7a92-4c58-11ea-b77f-2e728ce88125',
    'Towels (for the mess)',
    '73d73894-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7970-4c58-11ea-b77f-2e728ce88125',
    'Shallow dish (such as bakind pan or cookie sheet)',
    '73d73894-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7844-4c58-11ea-b77f-2e728ce88125',
    'A few clear bowls, cups, or vases',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7722-4c58-11ea-b77f-2e728ce88125',
    'Different colors of food coloring',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e75f6-4c58-11ea-b77f-2e728ce88125',
    'Shaving Cream (not the gel kind)',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7498-4c58-11ea-b77f-2e728ce88125',
    'An eye dropper, syringe,, or small measuring spoon',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7164-4c58-11ea-b77f-2e728ce88125',
    'Small bowls or containers',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e7038-4c58-11ea-b77f-2e728ce88125',
    'Water',
    '73d73bdc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6f02-4c58-11ea-b77f-2e728ce88125',
    'Shallow dish, such as a pie plate',
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6d90-4c58-11ea-b77f-2e728ce88125',
    'Enough milk to cover bottom of dish about 1 inch',
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6ac0-4c58-11ea-b77f-2e728ce88125',
    'Different colors of food coloring',
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e698a-4c58-11ea-b77f-2e728ce88125',
    'Dish soap',
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6840-4c58-11ea-b77f-2e728ce88125',
    'Q-tip',
    '73d73d1c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e65de-4c58-11ea-b77f-2e728ce88125',
    'Large piece of contact paper',
    '73d73e48-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e64bc-4c58-11ea-b77f-2e728ce88125',
    'Masking tape',
    '73d73e48-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6390-4c58-11ea-b77f-2e728ce88125',
    'Craft materials (feathers, yarn, pieces of paper, beads, etc.)',
    '73d73e48-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6264-4c58-11ea-b77f-2e728ce88125',
    'Food Coloring',
    '73d73f74-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e6138-4c58-11ea-b77f-2e728ce88125',
    'Yogurt or Cool Whip',
    '73d73f74-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e5fda-4c58-11ea-b77f-2e728ce88125',
    'Bowls and Spoons for mixing',
    '73d73f74-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e5c88-4c58-11ea-b77f-2e728ce88125',
    'Paint Brushes',
    '73d73f74-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e5b66-4c58-11ea-b77f-2e728ce88125',
    'Cookie sheet or tray',
    '73d73f74-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e590e-4c58-11ea-b77f-2e728ce88125',
    '1 cup baby oil',
    '73d740aa-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e57c4-4c58-11ea-b77f-2e728ce88125',
    '8 cups flour',
    '73d740aa-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e54f4-4c58-11ea-b77f-2e728ce88125',
    'Large mixing bowl',
    '73d740aa-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e53c8-4c58-11ea-b77f-2e728ce88125',
    'Large Ziploc bag',
    '73d740aa-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e529c-4c58-11ea-b77f-2e728ce88125',
    '3 different colors of masking tape',
    '73d741cc-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e517a-4c58-11ea-b77f-2e728ce88125',
    'Masking Tape',
    '73d74596-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e504e-4c58-11ea-b77f-2e728ce88125',
    'Construction paper',
    '73d74596-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e4f22-4c58-11ea-b77f-2e728ce88125',
    'Plastic Balls',
    '73d74596-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e4dce-4c58-11ea-b77f-2e728ce88125',
    'Scissors',
    '73d74596-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e4ad6-4c58-11ea-b77f-2e728ce88125',
    'Slotted Spoon',
    '73d746ea-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e49aa-4c58-11ea-b77f-2e728ce88125',
    'Bath Toys',
    '73d746ea-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e487e-4c58-11ea-b77f-2e728ce88125',
    'Two plastic containers',
    '73d746ea-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e4752-4c58-11ea-b77f-2e728ce88125',
    'Water',
    '73d746ea-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e45d6-4c58-11ea-b77f-2e728ce88125',
    'Towels',
    '73d746ea-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e41ee-4c58-11ea-b77f-2e728ce88125',
    'Empty & dry plastic water bottles or large plastic bins (such as a pretzel container)',
    '73d74816-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e40c2-4c58-11ea-b77f-2e728ce88125',
    'Several pipe cleaners',
    '73d74816-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3f96-4c58-11ea-b77f-2e728ce88125',
    'Scissors',
    '73d74816-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3e6a-4c58-11ea-b77f-2e728ce88125',
    'Magnet wands or regular refrigerator magnets',
    '73d74816-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3d34-4c58-11ea-b77f-2e728ce88125',
    'Muffin tin',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3bf4-4c58-11ea-b77f-2e728ce88125',
    'Different colors of food coloring',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e385c-4c58-11ea-b77f-2e728ce88125',
    'Squirt bottle',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3730-4c58-11ea-b77f-2e728ce88125',
    'Baking soda',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e35e6-4c58-11ea-b77f-2e728ce88125',
    'Vinegar',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e33b6-4c58-11ea-b77f-2e728ce88125',
    'Storage bin',
    '73d74938-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e328a-4c58-11ea-b77f-2e728ce88125',
    '1 4oz Bottle of Elmer''s white school glue',
    '73d74a5a-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e315e-4c58-11ea-b77f-2e728ce88125',
    '2 Tablespoons contact saline solution (or liquid laundry detergent)',
    '73d74a5a-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e3032-4c58-11ea-b77f-2e728ce88125',
    '1-2 cups shaving cream',
    '73d74a5a-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2ef2-4c58-11ea-b77f-2e728ce88125',
    'Optional: food coloring',
    '73d74a5a-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2bc8-4c58-11ea-b77f-2e728ce88125',
    'Any textured item (velcro, soft blanket, warm water, smooth glass, etc.',
    '73d75040-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2a92-4c58-11ea-b77f-2e728ce88125',
    'Strong, sturdy board books with simple words and bright colors',
    '73d75176-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2966-4c58-11ea-b77f-2e728ce88125',
    'A blanket',
    '73d75298-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2830-4c58-11ea-b77f-2e728ce88125',
    'One or more mylar balloons with strings attached',
    '73d753c4-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e26fa-4c58-11ea-b77f-2e728ce88125',
    'Small toys your child can easily grab, but can''t fit in their mounth)',
    '73d754e6-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e25a6-4c58-11ea-b77f-2e728ce88125',
    'Empty water bottles or containers',
    '73d75842-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e23c6-4c58-11ea-b77f-2e728ce88125',
    'Dry rice, beans, sprinkles, pasta, or similar items',
    '73d75842-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e2056-4c58-11ea-b77f-2e728ce88125',
    'Optional: tape',
    '73d75842-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1f20-4c58-11ea-b77f-2e728ce88125',
    'Small objects, such as a cracker or block',
    '73d7598c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1d2c-4c58-11ea-b77f-2e728ce88125',
    '3 cups',
    '73d7598c-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1c00-4c58-11ea-b77f-2e728ce88125',
    'Some old socks',
    'f0b9447e-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1aca-4c58-11ea-b77f-2e728ce88125',
    'Markers',
    'f0b9447e-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e196c-4c58-11ea-b77f-2e728ce88125',
    'Large cardboard box, cut open and laid flat',
    'f0b946ea-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1656-4c58-11ea-b77f-2e728ce88125',
    'Crayons, markers',
    'f0b946ea-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e152a-4c58-11ea-b77f-2e728ce88125',
    'Long piece of string or pipe cleaners',
    'f0b9483e-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e1408-4c58-11ea-b77f-2e728ce88125',
    'Dry ziti pasta',
    'f0b9483e-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e12dc-4c58-11ea-b77f-2e728ce88125',
    'Washable Paint',
    'f0b94b5e-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e119c-4c58-11ea-b77f-2e728ce88125',
    'Measuring cups',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0e2c-4c58-11ea-b77f-2e728ce88125',
    'Mixing bowl',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0d0a-4c58-11ea-b77f-2e728ce88125',
    'Mixing spoon',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0be8-4c58-11ea-b77f-2e728ce88125',
    '3 oz. box of sugar-free Jell-o',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0ab2-4c58-11ea-b77f-2e728ce88125',
    '1 cup cornstarch',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0954-4c58-11ea-b77f-2e728ce88125',
    '1/2 cup warm water',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0706-4c58-11ea-b77f-2e728ce88125',
    'Cookie sheet',
    'f0b94ca8-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e03e6-4c58-11ea-b77f-2e728ce88125',
    'A sturdy, unbreakable mirror',
    '73d74b86-4ad4-11ea-b77f-2e728ce88125'
  ),
  (
    '333e02ba-4c58-11ea-b77f-2e728ce88125',
    'Piece of cardboard or canvas',
    'f0b94fdc-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333e0170-4c58-11ea-b77f-2e728ce88125',
    'Large piece of cling wrap',
    'f0b94fdc-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333dfedc-4c58-11ea-b77f-2e728ce88125',
    'Paint',
    'f0b94fdc-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333dfd92-4c58-11ea-b77f-2e728ce88125',
    'Tape',
    'f0b94fdc-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '333dfb26-4c58-11ea-b77f-2e728ce88125',
    '1 piece of paper',
    'f0b9513a-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '7e61abfe-4c65-11ea-b77f-2e728ce88125',
    'Few drops of paint',
    'f0b9513a-4c50-11ea-b77f-2e728ce88125'
  ),
  (
    '7e61affa-4c65-11ea-b77f-2e728ce88125',
    'Gallon-sized Ziploc bag',
    'f0b9513a-4c50-11ea-b77f-2e728ce88125'
  );
COMMIT;