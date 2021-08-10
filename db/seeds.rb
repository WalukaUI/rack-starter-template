Team.destroy_all
# Team.reset_pk_sequence
Player.destroy_all
# Player.reset_pk_sequence
Tournament.destroy_all
# Tournament.reset_pk_sequence
TeamTournement.destroy_all
# TeamTournement.reset_pk_sequence

t1 = Team.create(name: "SL", logo_url:"N/A")
t2 = Team.create(name: "IND", logo_url:"N/A")
t3 = Team.create(name: "AUS", logo_url:"N/A")
t4 = Team.create(name: "PAK", logo_url:"N/A")

tou1 = Tournament.create(name: "T20", venue: "Colombo")
tou2 = Tournament.create(name: "ODI", venue: "Kandy")
tou3 = Tournament.create(name: "Test", venue: "NYC")

p1 = Player.create(name: Faker::Name.first_name, age: 25, skill: "Allrounder", team_id: t1.id)
p2 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Batsman"   , team_id: t2.id)
p3 = Player.create(name: Faker::Name.first_name, age: 22, skill: "Allrounder", team_id: t1.id)
p4 = Player.create(name: Faker::Name.first_name, age: 20, skill: "Batsman"   , team_id: t2.id)
p5 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Allrounder", team_id: t2.id)
p6 = Player.create(name: Faker::Name.first_name, age: 29, skill: "Allrounder", team_id: t3.id)
p7 = Player.create(name: Faker::Name.first_name, age: 30, skill: "Bowler"    , team_id: t4.id)
p8 = Player.create(name: Faker::Name.first_name, age: 35, skill: "Batsman"   , team_id: t1.id)
p9 = Player.create(name: Faker::Name.first_name, age: 33, skill: "Allrounder", team_id: t2.id)
p10 = Player.create(name: Faker::Name.first_name, age:22, skill: "Bowler"    , team_id: t3.id)
p11 = Player.create(name: Faker::Name.first_name, age: 25, skill: "Allrounder", team_id: t1.id)
p12 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Batsman"  , team_id: t1.id)
p13 = Player.create(name: Faker::Name.first_name, age: 22, skill: "Allrounder", team_id: t2.id)
p14 = Player.create(name: Faker::Name.first_name, age: 20, skill: "Batsman"  , team_id: t3.id)
p15 = Player.create(name: Faker::Name.first_name, age: 28, skill: "Allrounder",team_id: t4.id)
p16 = Player.create(name: Faker::Name.first_name, age: 29, skill: "Allrounder", team_id: t4.id)
p17 = Player.create(name: Faker::Name.first_name, age: 30, skill: "Bowler"   , team_id: t2.id)
p18 = Player.create(name: Faker::Name.first_name, age: 35, skill: "Batsman"  , team_id: t3.id)
p19 = Player.create(name: Faker::Name.first_name, age: 33, skill: "Allrounder", team_id: t4.id)
p20 = Player.create(name: Faker::Name.first_name, age:22, skill: "Bowler"    , team_id: t3.id)

j1 =TeamTournement.create(team_id: t4.id,tournament_id: tou1.id)
j2 =TeamTournement.create(team_id: t3.id,tournament_id: tou1.id)
j3 =TeamTournement.create(team_id: t2.id,tournament_id: tou1.id)
j4 =TeamTournement.create(team_id: t1.id,tournament_id: tou1.id)
j5 =TeamTournement.create(team_id: t4.id,tournament_id: tou2.id)
j6 =TeamTournement.create(team_id: t2.id,tournament_id: tou3.id)
j7 =TeamTournement.create(team_id: t1.id,tournament_id: tou2.id)
j8 =TeamTournement.create(team_id: t4.id,tournament_id: tou3.id)

puts ":)DONE SEEDED(:"