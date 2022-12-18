STATES = ['Alabama','Alaska','American Samoa','Arizona','Arkansas','California','Colorado','Connecticut','Delaware','District of Columbia','Federated States of Micronesia','Florida','Georgia','Guam','Hawaii','Idaho','Illinois','Indiana','Iowa','Kansas','Kentucky','Louisiana','Maine','Marshall Islands','Maryland','Massachusetts','Michigan','Minnesota','Mississippi','Missouri','Montana','Nebraska','Nevada','New Hampshire','New Jersey','New Mexico','New York','North Carolina','North Dakota','Northern Mariana Islands','Ohio','Oklahoma','Oregon','Palau','Pennsylvania','Puerto Rico','Rhode Island','South Carolina','South Dakota','Tennessee','Texas','Utah','Vermont','Virgin Island','Virginia','Washington','West Virginia','Wisconsin','Wyoming']
MONTHS = ["January","February","March","April","May","June","July","August","September","October","November","December"]

puts "Seeding Start"

puts "States"
STATES.each{|state| Location.create(state: state)}

puts "Months"
MONTHS.each{|month| Month.create(month: month)}

puts "Plants"
10.times do
    Plant.create(
    name: Faker::Games::Minecraft.item,
    symptoms: Faker::Games::Minecraft.enchantment,
    soil_mix: Faker::Games::Minecraft.block,
    harvest: Month.all.sample.month,
    description: Faker::Games::Minecraft.status_effect
    )
end

puts "Bugs"
10.times do
    Bug.create(
        name: Faker::Creature::Animal.name,
        description: Faker::Games::Minecraft.status_effect,
        prevention: Faker::Construction.heavy_equipment
    )
end

puts "Diseases"
10.times do
    Disease.create(
        name: Faker::Cannabis.cannabinoid,
        description: Faker::Cannabis.medical_use,
        prevention: Faker::Cannabis.health_benefit
    )
end

puts "PlantLocationMonth"
2.times do
    Plant.all.each{|plant| PlantLocationMonth.create(
    plant_id: plant.id,
    location_id: Location.all.sample.id,
    month_id: Month.all.sample.id
    )}
end

puts "PlantBug"
2.times do
    Plant.all.each{|plant| PlantBug.create(
    plant_id: plant.id,
    bug_id: Bug.all.sample.id
    )}
end

puts "PlantDisease"
2.times do
    Plant.all.each{|plant| PlantDisease.create(
    plant_id: plant.id,
    disease_id: Disease.all.sample.id
    )}
end

puts "Users"
5.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::FunnyName.name,
        password: rand(10000..99999),
        email: "#{Faker::Name.first_name}@gmail.com",
        profile_picture: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
        description: Faker::Quote.jack_handey,
        location_id: Location.all.sample.id

    )
end

puts "Posts"
5.times do
    User.all.each{|user| Post.create(
    title: Faker::Quote.singular_siegler,
    description: Faker::Quote.matz,
    likes: rand(0..100),
    user_id: user.id,
    plant_id: Plant.all.sample.id
    )}
end

puts "Comments"
2.times do
    Post.all.each{|post| Comment.create(
        comment: Faker::Quotes::Rajnikanth.joke,
        likes: rand(0..100),
        post_id: post.id,
        user_id: User.all.sample.id
    )}
end

puts "Replies"
20.times do
    Reply.create(
        reply: Faker::Quote.yoda,
        likes: rand(0..20),
        comment_id: Comment.all.sample.id,
        user_id: User.all.sample.id
    )
end


puts "Seeding Finished"