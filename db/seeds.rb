Team.destroy_all

Player.destroy_all

Tournament.destroy_all



t1 = Team.create(name: "SL", logo_url:"N/A")
t2 = Team.create(name: "IND", logo_url:"N/A")
t3 = Team.create(name: "AUS", logo_url:"N/A")
t4 = Team.create(name: "PAK", logo_url:"N/A")

tou1 = Tournament.create(name: "T20", venue: "Colombo")
tou2 = Tournament.create(name: "ODI", venue: "Kandy")
tou3 = Tournament.create(name: "Test", venue: "NYC")

p1 = Player.create(name: Faker::Name.first_name, age: 25, skill: "Allrounder", tournament_id:1, team_id:1)
p2 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Batsman", tournament_id:1)
p3 = Player.create(name: Faker::Name.first_name, age: 22, skill: "Allrounder", tournament_id:2, team_id:3)
p4 = Player.create(name: Faker::Name.first_name, age: 20, skill: "Batsman", tournament_id:3, team_id:2)
p5 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Allrounder", tournament_id:2)
p6 = Player.create(name: Faker::Name.first_name, age: 29, skill: "Allrounder", tournament_id:2, team_id:2)
p7 = Player.create(name: Faker::Name.first_name, age: 30, skill: "Bowler", tournament_id:3, team_id:4)
p8 = Player.create(name: Faker::Name.first_name, age: 35, skill: "Batsman", tournament_id:3, team_id:4)
p9 = Player.create(name: Faker::Name.first_name, age: 33, skill: "Allrounder", tournament_id:3, team_id:1)
p10 = Player.create(name: Faker::Name.first_name, age:22, skill: "Bowler", tournament_id:1, team_id:4)

puts ":)DONE SEEDED(:"