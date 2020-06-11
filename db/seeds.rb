Student.destroy_all
Duck.destroy_all
print "seeding students...........\n"
c=0
10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
  c +=1
  print "round #{c}\n"
end
print "seeding ducks............\n"

c=0
5.times do
  Duck.create(name: Faker::Creature::Dog.meme_phrase, description: Faker::Creature::Dog.breed)
  c +=1
  print "round #{c}\n"
end
print "done"
