class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == '/leagues' && req.get?
       leagues = League.all
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ leagues.to_json ]
      ]

    # elsif req.path.match(/leagues/) && req.post?
    #   body = JSON.parse(req.body.read)
    #   league = League.create(body)
    #   return [
    #     200, 
    #     { 'Content-Type' => 'application/json' }, 
    #     [ league.to_json ]
    #   ]

  elsif req.path == '/heros' && req.get?
    heros = Hero.all
    return [
      200, 
      { 'Content-Type' => 'application/json' }, 
      [ heros.to_json ]
    ]

  elsif req.path.match(/heros/) && req.get?
    id = req.path.split('/')[2]
    hero = Hero.find_by(id: id)
    if hero
      heros = hero.heroes
      hero_res = {
        name: hero.name,
        bio: hero.bio,
        heros: heros
      }
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ hero_res.to_json ]
      ]
    else
      return [
        204, 
        { 'Content-Type' => 'application/json' }, 
        [ { error: 'hero not found' }.to_json ]
      ]
    end

    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
