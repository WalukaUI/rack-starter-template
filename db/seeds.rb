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

tou1 = Tournament.create(name: "T20", venue: "Colombo",image_url:"https://cricketcrowd.com/images/ground/ground_164_0225163633.jpg")
tou2 = Tournament.create(name: "ODI", venue: "Kandy",image_url:"https://upload.wikimedia.org/wikipedia/commons/c/ca/Mahinda_Rajapaksa_International_Cricket_Stadium.jpg")
tou3 = Tournament.create(name: "Test", venue: "NYC",image_url:"https://www.cricket.com.au/~/-/media/News/2016/06/4citi_nyc.ashx?w=1600")

randomTeam=[t1.id,t2.id,t3.id,t4.id]
skills=["Allrounder","Batsman","Bowler"]
countries=["SL","IND","AUS","PAK"]

  60.times do
    Player.create(name: Faker::Name.name_with_middle, 
                age: rand(20..40), 
                skill: skills.sample, 
                team_id: randomTeam.sample,
                runs: rand(1000..7000),
                wikets:rand(50..300),
                country: countries.sample
                )
  end

j1 =TeamTournement.create(team_id: t4.id,tournament_id: tou1.id)
j2 =TeamTournement.create(team_id: t3.id,tournament_id: tou1.id)
j3 =TeamTournement.create(team_id: t2.id,tournament_id: tou1.id)
j4 =TeamTournement.create(team_id: t1.id,tournament_id: tou1.id)
j5 =TeamTournement.create(team_id: t4.id,tournament_id: tou2.id)
j6 =TeamTournement.create(team_id: t2.id,tournament_id: tou3.id)
j7 =TeamTournement.create(team_id: t1.id,tournament_id: tou2.id)
j8 =TeamTournement.create(team_id: t4.id,tournament_id: tou3.id)



puts ":)DONE SEEDED(:"