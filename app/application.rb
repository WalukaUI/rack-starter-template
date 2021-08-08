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



    else
      res.write "Path Not Found"
    end

    res.finish
  end

end
