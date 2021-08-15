class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

# ----------------All gets---------------------------

    if req.path == "/players" && req.get?
      players=Player.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ players.to_json ]]

    elsif req.path == "/teams" && req.get?
      teams=Team.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ teams.to_json ]]

    elsif req.path == "/tournament" && req.get?
      tournaments=Tournament.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [  tournaments.to_json ]]

# ----------------Players---------------------------

    elsif req.path.match(/players/) && req.get?
      iD = req.path.split('/')[2]
      player=Player.find_by(id: iD)
      if player
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [  player.to_json ]
        ]
      else
        return [
          204, 
          { 'Content-Type' => 'application/json' },
          [ { error: 'Player not found' }.to_json ]
        ]
      end
    elsif req.path.match("/players") && req.delete?
      iD = req.path.split('/')[2]
      begin 
        person=Player.find(iD)
        person.destroy
        return [200,{'Content-Type' => 'application/json'}, [{message: "Player Destroyed"}.to_json]]
      rescue
        return [404,{'Content-Type' => 'application/json'}, [{message: "Player Not Found"}.to_json]]
      end

    elsif req.path.match('/players/') && req.patch?
        id = req.path.split('/')[2]
        body = JSON.parse(req.body.read)
        begin
          player=Player.find(id)
          player.update(body)
          return [202, {'Content-Type' => 'application/json'}, [player.to_json]]
        rescue
          return [404,{'Content-Type' => 'application/json'}, [{message: "Player Not Found"}.to_json]]
        end
    elsif req.path.match("/players") && req.post?
        body = JSON.parse(req.body.read)
        newPlayer=Player.create(body)
        return [
          200, 
          { 'Content-Type' => 'application/json' }, 
          [ newPlayer.to_json ]
        ]

# ----------------Teams---------------------------

    elsif req.path.match(/teams/) && req.get?
      iD = req.path.split('/')[2]
      team=Team.find_by(id: iD)
      teams_players=team.players
      if team
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [  teams_players.to_json ]
        ]
      else
        return [
          204, 
          { 'Content-Type' => 'application/json' },
          [ { error: 'Players not found' }.to_json ]
        ]
      end
    elsif req.path.match("/teams") && req.delete?
      iD = req.path.split('/')[2]
      begin 
        team=Team.find(iD)
        team.destroy
        return [200,{'Content-Type' => 'application/json'}, [{message: "Team Destroyed"}.to_json]]
      rescue
        return [404,{'Content-Type' => 'application/json'}, [{message: "Team Not Found"}.to_json]]
      end

    elsif req.path.match("/teams") && req.post?
      body = JSON.parse(req.body.read)
      new_team=Team.create(body)
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ new_team.to_json ]
      ]

    elsif req.path.match('/teams/') && req.patch?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      begin
        team=Team.find(id)
        team.update(body)
        return [202, {'Content-Type' => 'application/json'}, [team.to_json]]
      rescue
        return [404,{'Content-Type' => 'application/json'}, [{message: "Team Not Found"}.to_json]]
      end



# ----------------Tournamnets---------------------------

    elsif req.path == "/tournaments" && req.get?
      tournaments=Tournament.all
        return [200, 
        { 'Content-Type' => 'application/json' }, 
        [ tournaments.to_json ]]


      elsif req.path.match(/tournaments/) && req.get?
        id = req.path.split('/')[2]
        tournamnet_info=Tournament.find(id)
        teams_of_the_tournamnet=tournamnet_info.teams
        if teams_of_the_tournamnet
          return [
            200,
            { 'Content-Type' => 'application/json' },
            [  teams_of_the_tournamnet.to_json ]
          ]
        else
          return [
            204, 
            { 'Content-Type' => 'application/json' },
            [ { error: 'Teams of the Tournament not found' }.to_json ]
          ]
        end

    else
      res.write "Path Not Found"
    end
   
    res.finish
  end

end
