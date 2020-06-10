Student.delete_all
Duck.delete_all 

student_ids = []
10.times do
  s = Student.create(name: Faker::Name.name, mod: rand(1..5))
  student_ids << s.id
end


5.times do
  Duck.create(
    name: Faker::Creature::Dog.meme_phrase, 
    description: Faker::Creature::Dog.breed, 
    student_id: (student_ids).sample)
end
