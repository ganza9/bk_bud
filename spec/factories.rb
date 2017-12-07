FactoryBot.define do

  factory :flower do
    name 'Blue Dream'
    price 14
    thc 18
    description 'Blueberry x Haze. A West Coast classic, this potent sativa provides happy, uplifting, and euphoric effects without heavy sedation.'
  end

  factory :edible do
    name 'ZootRocks'
    price 33
    thc 10
    description 'Sweet, hard nuggets full of flavor and fun. Lemongrass and Cinnamon Varieties.'
  end

  factory :other do
    name 'The Gandalf'
    price 33
    description '10 inch Gandalf Pipe made on 44mm tubing with classic carb and extra-long stem. Complicated times call for deep thoughts in smoky silence. Consider every path and weigh every option with your trusted Gandalf.'
  end

  factory :pre_roll do
    name 'Gorilla Glue'
    price 47
    thc 24
    description 'Sour Dub x Chems Sister. This indica-dominant hybrid has a piney, fruity aroma and provides heavy-handed effects. Great for deep relaxation or sedation.'
  end

end
