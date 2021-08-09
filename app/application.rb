class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

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

    elsif req.path.match(/players/) && req.get?
      iD = req.path.split('/')[2]
      player=Player.find_by(id: iD)
      player_teams=player.team
      if player
        player_res={
          name: player.name,
          age: player.age,
          skill: player.skill,
          team: player_teams.name
        }
        return [
          200,
          { 'Content-Type' => 'application/json' },
          [  player_res.to_json ]
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


    else
      res.write "Path Not Found"
    end

    res.finish
  end

end
