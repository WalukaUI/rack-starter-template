class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match("/players") && req.get?
      players=Player.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ players.to_json ]]
    elsif req.path.match("/teams") && req.get?
      teams=Team.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ teams.to_json ]]
    elsif req.path.match("/tournament") && req.get?
      tournaments=Tournament.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [  tournaments.to_json ]]
    elsif req.path.match(/players/) && req.get?
      id = req.path.split('/')[2]
      player=Players.find_by(id: id)
      if player
        
    else
      res.write "Path Not Found"
    end

    res.finish
  end

end
