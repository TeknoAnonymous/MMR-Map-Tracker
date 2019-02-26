--[[ checkA = 1

function tracker_on_accessibility_updated()
  local checkA1 = Tracker:FindObjectForCode("@Pinnacle Rock/20 Rupee Chest")
  local checkA2 = Tracker:FindObjectForCode("@Fisherman Game HP/Hop Hop")

  if checkA1 and checkA2 then
    if checkA == 0 then
      if (checkA1.AvailableChestCount == 0) or (checkA2.AvailableChestCount == 0) then
        checkA1.AvailableChestCount = 0
        checkA2.AvailableChestCount = 0
        checkA = 1
      end
    end
    if checkA == 1 then
      if (checkA1.AvailableChestCount > 0) or (checkA2.AvailableChestCount > 0) then
        checkA1.AvailableChestCount = 1
        checkA2.AvailableChestCount = 1
        checkA = 0
      end
    end
  end
end
]]

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
    return has("firearrow") and has("bow") and has_bottle()
  end
end

function STT_access()
  if has("dekumask")
  and has("goronmask")
  and has("zoramask")
  and has("hookshot")
  and has("elegy")
  and has("shield2") then
    return 1
  else
    return 0
  end
end

function ISTT_access()
  if has("bow")
  and has("lightarrow") then
    return explosives() and STT_access()
  else
    return 0
  end
end