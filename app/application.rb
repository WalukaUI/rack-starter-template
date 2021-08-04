class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/players/) 
      players=Player.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ players.to_json ]]
    elsif req.path.match(/teams/) 
      teams=Team.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [ teams.to_json ]]
    elsif req.path.match(/tournament/) 
      tournaments=Tournament.all
      return [200, 
      { 'Content-Type' => 'application/json' }, 
      [  tournaments.to_json ]]
    else
      res.write "Path Not Found"
    end

    res.finish
  end

end
