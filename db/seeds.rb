Team.destroy_all
Team.reset_pk_sequence
Player.destroy_all
Player.reset_pk_sequence
Tournament.destroy_all
Tournament.reset_pk_sequence


t1 = Team.create(name: "SL", logo_url:)1, tournament_id:1)
t2 = Team.create(name: "IND", logo_url:2, tournament_id:2)
t3 = Team.create(name: "AUS", logo_url:1, tournament_id:2)
t4 = Team.create(name: "PAK", logo_url:3, tournament_id:3)

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