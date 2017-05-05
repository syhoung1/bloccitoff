10.times do 
  User.create!(
    name: Faker::Superhero.name,
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password(10,20)
  )
end

users = User.all

10.times do
  users.sample.items.create!(
    body: Faker::Hipster.sentence
  )
end