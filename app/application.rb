class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    # ****all leagues route****

    if req.path == '/leagues' && req.get?
       leagues = League.all
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ leagues.to_json ]
      ]
    end

    # **** specific league ****

  if req.path.match('/leagues/') && req.get?
    id = req.path.split('/')[2]
      leagues = League.find(id)
      return [200, {'Content-Type' => 'application/json'}, [leagues.to_json]]
  end

  # **** league update ****

if req.path.match('/leagues/') && req.patch?
  id = req.path.split('/')[2]
  body = JSON.parse(req.body.read)
    league = League.find(id)
    league.update(body)
    return [202, {'Content-Type' => 'application/json'}, [league.to_json]]
end

   # **** create League ****

if req.path == ('/leagues') && req.post?
  body = JSON.parse(req.body.read)
  league = League.create(body)
  return [201, {'Content-Type' => 'application/json'}, [league.to_json]]
end

if req.path.match('/leagues/') && req.delete?
  id = req.path.split('/')[2]
    league = League.find(id)
    league.destroy
    return [200, {'Content-Type' => 'application/json'}]
end

    # **** all heroes route****

  if req.path == '/heros' && req.get?
    heros = Hero.all
    return [
      200, 
      { 'Content-Type' => 'application/json' }, 
      [ heros.to_json ]
    ]
  end

     # **** specific hero ****

  if req.path.match('/heros/') && req.get?
    id = req.path.split('/')[2]
      heros = Hero.find(id)
      return [200, {'Content-Type' => 'application/json'}, [heros.to_json]]
  end

# **** hero update ****

if req.path.match('/hero/') && req.patch?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
        hero = Hero.find(id)
        hero.update(body)
        return [202, {'Content-Type' => 'application/json'}, [hero.to_json]]
    end

   # **** create Hero ****

   if req.path == ('/heros') && req.post?
    body = JSON.parse(req.body.read)
    hero = Hero.create(body)
    return [201, {'Content-Type' => 'application/json'}, [hero.to_json]]
  end

   # **** Delete Hero ****

  if req.path.match('/heros/') && req.delete?
    id = req.path.split('/')[2]
      hero = Hero.find(id)
      hero.destroy
      return [200, {'Content-Type' => 'application/json'}]
  end
  

# testing route

  if req.path.match(/test/) 
    return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
