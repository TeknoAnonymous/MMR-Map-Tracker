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

function maskcount()
  masknum = 0
  if has("postman") then
    masknum = masknum + 1
  end
  if has("anm") then
    masknum = masknum + 1
  end
  if has("blast") then
    masknum = masknum + 1
  end
  if has("stone") then
    masknum = masknum + 1
  end
  if has("gfm") then
    masknum = masknum + 1
  end
  if has("keaton") then
    masknum = masknum + 1
  end
  if has("bunny") then
    masknum = masknum + 1
  end
  if has("dongero") then
    masknum = masknum + 1
  end
  if has("scents") then
    masknum = masknum + 1
  end
  if has("romani") then
    masknum = masknum + 1
  end
  if has("circus") then
    masknum = masknum + 1
  end
  if has("couple") then
    masknum = masknum + 1
  end
  if has("truth") then
    masknum = masknum + 1
  end
  if has("kamaro") then
    masknum = masknum + 1
  end
  if has("gibdo") then
    masknum = masknum + 1
  end
  if has("garo") then
    masknum = masknum + 1
  end
  if has("captain") then
    masknum = masknum + 1
  end
  if has("giant") then
    masknum = masknum + 1
  end
  if has("bremen") then
    masknum = masknum + 1
  end
  if has("kafei") then
    masknum = masknum + 1
  end
  return masknum
end

function explosives()
  if has("bombs")
  or has("blastmask") then
    return true
  else
    return false
  end
end

function has_paper()
  if has("mamaletter")
  or has("kafeiletter")
  or has("landdeed")
  or has("swampdeed")
  or has("mountaindeed")
  or has("oceandeed") then
    return true
  else
    return false
  end
end

function has_ikana_access()
  if has("gibdomask")
  or has("garomask")
  and (has("epona") and has("hookshot")) then
    return true
  else
    return false
  end
end

function has_ranged()
  if has("dekumask") and has("magic")
  or has("zoramask")
  or has("bow")
  or has("hookshot") then
    return true
  else
    return false
  end
end

function has_reach()
  if has("zoramask")
  or has("hookshot") then
    return true
  else
    return false
  end
end

function hotspring_access()
  if (has("goronmask")
  and has("lensoftruth")) or
  ((has("firearrow") and has("bow")) and
  (has("goronmask") or explosives())) then
    return has_bottle()
  else
    return false
  end
end

function STT_access()
  if ((has("goronmask") and has("zoramask")) or (has("zoramask") and has("tricks_on")) or (has("goronmask") and has("tricks_on")))
  and has("hookshot")
  and (has("gibdomask") or has("garomask"))
  and has("elegy")
  and has("bow")
  and (has("icearrow") or has("tricks_on")) then
    return true
  else
    return false
  end
end

function ISTT_access()
  if has("bow")
  and has("lightarrow")
  and has("magic")
  and STT_access() then
    return true
  else
    return false
  end
end

function enter_wft()
  if has("dekumask")
  and has("sonata")
  and (has("sword") or has("goronmask") or has("zoramask") or has("tricks_on")) then
    return true
  else
    return false
  end
end

function enter_sht()
  if has("bow")
  and has("goronmask")
  and has("lullaby")
  and (has("magic") or has("tricks_on")) then
    return true
  else
    return false
  end
end

function enter_gbt()
  if (has("epona") or (has("bombs") and has("tricks_on")))
  and has("zoramask")
  and has("newwave")
  and has("hookshot") then
    return true
  else
    return false
  end
end

function enter_istt()
  if has_ikana_access()
  and ISTT_access() then
    return true
  else
    return false
  end
end

function WFT_shuffle()
 if (has("wftwoodfall") and enter_wft()) or
 (has("wftsnowhead") and enter_sht()) or
 (has("wftgreatbay") and enter_gbt()) or
 (has("wftstonetower") and enter_istt()) then
    return true
  else
    return false
  end
end

function SHT_shuffle()
 if (has("shtwoodfall") and enter_wft()) or
 (has("shtsnowhead") and enter_sht()) or
 (has("shtgreatbay") and enter_gbt()) or
 (has("shtstonetower") and enter_istt()) then
    return true
  else
    return false
  end
end

function GBT_shuffle()
 if (has("gbtwoodfall") and enter_wft()) or
 (has("gbtsnowhead") and enter_sht()) or
 (has("gbtgreatbay") and enter_gbt()) or
 (has("gbtstonetower") and enter_istt()) then
    return true
  else
    return false
  end
end

function ISTT_shuffle()
 if (has("sttwoodfall") and enter_wft()) or
 (has("sttsnowhead") and enter_sht()) or
 (has("sttgreatbay") and enter_gbt()) or
 (has("sttstonetower") and enter_istt()) then
    return true
  else
    return false
  end
end

function woodfall_clear()
 if (has("wftwoodfall") and has("odolwaremains")) or
 (has("shtwoodfall") and has("gohtremains")) or
 (has("gbtwoodfall") and has("gyorgremains")) or
 (has("sttwoodfall") and has("twinmoldremains")) then
   return true
  else
   return false
  end
end

function snowhead_clear()
 if (has("wftsnowhead") and has("odolwaremains")) or
 (has("shtsnowhead") and has("gohtremains")) or
 (has("gbtsnowhead") and has("gyorgremains")) or
 (has("sttsnowhead") and has("twinmoldremains")) then
   return true
  else
   return false
  end
end

function greatbay_clear()
 if (has("wftgreatbay") and has("odolwaremains")) or
 (has("shtgreatbay") and has("gohtremains")) or
 (has("gbtgreatbay") and has("gyorgremains")) or
 (has("sttgreatbay") and has("twinmoldremains")) then
   return true
  else
   return false
  end
end

function stonetower_clear()
 if (has("wftstonetower") and has("odolwaremains")) or
 (has("shtstonetower") and has("gohtremains")) or
 (has("gbtstonetower") and has("gyorgremains")) or
 (has("sttstonetower") and has("twinmoldremains")) then
   return true
  else
   return false
  end
end

function has_bottle()
  local bottle = Tracker:ProviderCountForCode("bottle")
  local golddust = Tracker:ProviderCountForCode("golddust")
  local dekuprincess = Tracker:ProviderCountForCode("dekuprincess")
  local level =  AccessibilityLevel.Normal

  return (bottle - golddust - dekuprincess), level
end
