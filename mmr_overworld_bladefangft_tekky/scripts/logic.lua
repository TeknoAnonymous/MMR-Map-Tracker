function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function explosives()
  if has("bombs")
  or has("blastmask") then
    return 1
  else
    return 0
  end
end

function has_bottle()
  if has("bottle1")
  or has("bottle2")
  or has("bottle3")
  or has("bottle4")
  or has("bottle5")
  or has("bottle6") then
    return 1
  else
    return 0
  end
end

function has_paper()
  if has("mamaletter")
  or has("kafeiletter")
  or has("landdeed")
  or has("swampdeed")
  or has("mountaindeed")
  or has("oceandeed") then
    return 1
  else
    return 0
  end
end

function has_ikana_access()
  if has("gibdomask")
  or has("garomask")
  and (has("epona") and has("hookshot")) then
    return 1
  else
    return 0
  end
end

function has_ranged()
  if has("dekumask")
  or has("zoramask")
  or has("bow")
  or has("hookshot") then
    return 1
  else
    return 0
  end
end

function has_reach()
  if has("zoramask")
  or has("hookshot") then
    return 1
  else
    return 0
  end
end

function hotspring_access()
  if has("goron")
  and has("lensoftruth") then
    return has_bottle()
  else
    return has_firearrows() and has_bottle()
  end
end