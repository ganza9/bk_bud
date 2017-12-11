# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Flower.destroy_all
Edible.destroy_all
Other.destroy_all
PreRoll.destroy_all
User.destroy_all

Flower.create(name: "Blue Dream", price: 14, thc: 18, description: "Blueberry x Haze. A West Coast classic, this potent sativa provides happy, uplifting, and euphoric effects without heavy sedation.")
Flower.create(name: "Amnesia", price: 15, thc: 23, description: "Jamaican Sativa x Laotian Sativa x Afghani Hawaiian. Good option for daytime play or creativity. Dense and sticky perfection.")
Flower.create(name: "Pink Cookies", price: 11, thc: 20, description: "Girl Scout Cookies x Cherry Pie. This peppery, earthy indica is great for those looking for sedation or stress-relief.")
Flower.create(name: "Dutch Grapefruit", price: 15, thc: 20, description: "Insanely strong euphoric effects that will hit you quickly leaving you feeling lifted up in the sky. This strain will keep you uplifted, motivated, and energized throughout your day.")
Flower.create(name: "Purple Punch", price: 18, thc: 21, description: "Grandaddy Purple x Larry OG. This strain smells like a combination of grape candy, blueberry muffins and Kool-Aid. The potency is a one-two punch to the head and body. It will slap a smile on your face then start moving down throughout the body.")

Edible.create(name: "Caramels", price: 10, thc: 10, description: "Creamy, smooth raspberry and lemon caramels. These caramels will elevate you to cloud nine. 2-pack, 4-pack, and 10-pack.")
Edible.create(name: "Mint Chocolate Bon-Bombs", price: 38, thc: 10, description: "A mint chocolate version of Verdelux's delightfully hardcore bon-bomb. Not too sweet, not too bitter: Just right!")
Edible.create(name: "Chocolate Covered Almonds", price: 35, thc: 10, description: "Deliciously infused chocolate covered almonds.")
Edible.create(name: "ZootRocks", price: 33, thc: 10, description: "Sweet, hard nuggets full of flavor and fun. Lemongrass and Cinnamon Varieties.")
Edible.create(name: "Ruby's Cannabis Sugar", price: 22, thc: 10, description: "Made from certified organic natural sugar, this flexible edible is perfect for beverages, baked goods, or anything that calls for sugar!")

Other.create(name: "Frit Spoon", price: 35, description: "Frit Spoon Hand pipe made on 25mm tubing. Its inverted mouthpiece catches ash, and its thick walls are made of layers of clear and colored frit glass, adding weight and durability. No accessories or water are necessary for using this hand pipe.")
Other.create(name: "Umbrella Perc Rig", price: 119, description: "The Rig is 6 inches tall and made on 45mm tubing. Its umbrella perc diffuses vapor through water. The rig comes ready to use with a 14mm female domeless nail made on heat-tolerant quartz, and it works best with approximately 1.5 inches of water.")
Other.create(name: "Small Upright Bubbler", price: 55, description: "The small Upright Bubbler is 6 inches tall and made on 32mm tubing. Its fission downstem diffuses smoke through water and is fixed inside the bubbler to prevent damage. Its angled mouthpiece acts as a splashguard, and its lip wrap is tooled for comfort. No accessories are necessary for using this bubbler, and it works best with approximately 1.5 inches of water.")
Other.create(name: "The Gandalf", price: 33, description: "10 inch Gandalf Pipe made on 44mm tubing with classic carb and extra-long stem. Complicated times call for deep thoughts in smoky silence. Consider every path and weigh every option with your trusted Gandalf.")
Other.create(name: "Hemisphere Bubbler ", price: 300, description: "The GRAV Arcline Hemisphere Bubbler is 6 inches tall and made on 28mm tubing. Its fission downstem diffuses smoke through water and is fixed inside the pipe to prevent breakage. The beautiful flame polished GRAV label conforms with the Arcline style, inspired by Tuscan columns from ancient Italy. The Arcline Hemisphere Bubbler comes ready to use with a 14mm Arcline Bowl and functions best with approximately 1 inch of water.")

PreRoll.create(name: "Gorilla Glue", price: 47, thc: 24, description: "Sour Dub x Chems Sister. This indica-dominant hybrid has a piney, fruity aroma and provides heavy-handed effects. Great for deep relaxation or sedation.")
PreRoll.create(name: "Nine Pound Hammer", price: 7, thc: 40, description: "Goo Berry x Jesus OG. Like the hammer of Thor itself, this strain will leave you feeling underneath the ground in no time, it'll do you in.")
PreRoll.create(name: "Dutch-47", price: 15, thc: 21, description: "Dutch Treat x AK-47. For those who enjoy a productive high, Dutch-47 is the perfect strain. The piney flavor isn't only good on the taste buds, but also interacts with your brains chemistry in a nice way.")
PreRoll.create(name: "Sour Diesel", price: 13, thc: 24, description: "Super Skunk x Chemdawg. Stimulating, energetic, head buzz. Gassy, pine flavor, clean your house type of feel. Also perfect for a wake n bake session in the morning, no need for coffee!")
PreRoll.create(name: "Nightmare Cookies", price: 12, thc: 26, description: "Platinum GSC x White Nightmare come together to create this robust euphoric experience. An aroma of earthy pine sap and sweet goodness. This strain will jolt you into an uplifting and happy space great for anytime throughout the day.")



5.times do |index|
  Review.create!(reviewer: Faker::Seinfeld.character,
                review_content: Faker::Seinfeld.quote,
                reviewable_id: Faker::Number.between(1, 5)
                )
end

p "Created #{Review.count} reviews"
