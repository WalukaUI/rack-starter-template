Team.destroy_all

Player.destroy_all

Tournament.destroy_all

TeamTournement.destroy_all

t1 = Team.create(name: "SL", logo_url:"N/A")
t2 = Team.create(name: "IND", logo_url:"N/A")
t3 = Team.create(name: "AUS", logo_url:"N/A")
t4 = Team.create(name: "PAK", logo_url:"N/A")

tou1 = Tournament.create(name: "T20", venue: "Colombo")
tou2 = Tournament.create(name: "ODI", venue: "Kandy")
tou3 = Tournament.create(name: "Test", venue: "NYC")

p1 = Player.create(name: Faker::Name.first_name, age: 25, skill: "Allrounder", team_id:1)
p2 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Batsman",team_id:1)
p3 = Player.create(name: Faker::Name.first_name, age: 22, skill: "Allrounder", team_id:3)
p4 = Player.create(name: Faker::Name.first_name, age: 20, skill: "Batsman", team_id:2)
p5 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Allrounder",team_id:2)
p6 = Player.create(name: Faker::Name.first_name, age: 29, skill: "Allrounder", team_id:2)
p7 = Player.create(name: Faker::Name.first_name, age: 30, skill: "Bowler", team_id:4)
p8 = Player.create(name: Faker::Name.first_name, age: 35, skill: "Batsman", team_id:4)
p9 = Player.create(name: Faker::Name.first_name, age: 33, skill: "Allrounder", team_id:1)
p10 = Player.create(name: Faker::Name.first_name, age:22, skill: "Bowler", team_id:4)
p11 = Player.create(name: Faker::Name.first_name, age: 25, skill: "Allrounder", team_id:1)
p12 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Batsman",team_id:1)
p13 = Player.create(name: Faker::Name.first_name, age: 22, skill: "Allrounder", team_id:3)
p14 = Player.create(name: Faker::Name.first_name, age: 20, skill: "Batsman", team_id:2)
p15 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Allrounder",team_id:2)
p16 = Player.create(name: Faker::Name.first_name, age: 29, skill: "Allrounder", team_id:2)
p17 = Player.create(name: Faker::Name.first_name, age: 30, skill: "Bowler", team_id:4)
p18 = Player.create(name: Faker::Name.first_name, age: 35, skill: "Batsman", team_id:4)
p19 = Player.create(name: Faker::Name.first_name, age: 33, skill: "Allrounder", team_id:1)
p20 = Player.create(name: Faker::Name.first_name, age:22, skill: "Bowler", team_id:4)

j1 =TeamTournement.create(team_id:4,tournament_id:3)
j2 =TeamTournement.create(team_id:3,tournament_id:3)
j3 =TeamTournement.create(team_id:2,tournament_id:3)
j4 =TeamTournement.create(team_id:1,tournament_id:3)
j5 =TeamTournement.create(team_id:4,tournament_id:1)
j6 =TeamTournement.create(team_id:3,tournament_id:2)
j7 =TeamTournement.create(team_id:2,tournament_id:2)
j8 =TeamTournement.create(team_id:1,tournament_id:1)

puts ":)DONE SEEDED(:"