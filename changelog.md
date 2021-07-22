# 2.0.0.0
```
Hey there, Tekky here! I have since stopped really working on the tracker, but ZombiePhoenix has stepped in and made quite a few overhauls to the tracker. I don't know how
much I'll be able to help out bugtesting, but this change really has overhauled a lot of stuff in the backend.
ZombiePhoenix's changelog:
+ Added all 1041 checks added in current release, including keysanity, skullsanity, and mundane checks.
+ Updated logic to match current release.
+ Added options based on new item list layout in randomizer. You can now add checks based on vanilla item (left column in randomizer) or by check type (top row in randomizer).
+ Added Spin Attack as trackable by right clicking sword. This impacts Keaton grass logic.
+ Added keysy and chest fairies as an option. 
+ Improved settings icons courtesy of max chewy.

+ Optimized tracking for standard racing. When you open the tracker, it will default to have standard on (this is also the the only option for the regular map tracker).
Including...
+ Updates to handling of tricks by splitting into 3 categories:
  Standard Tricks: Logic = tricks enabled in standard are active in tracker, so checks will show green (i.e. tracker expects Poison Swamp as Zora).
  Standard Tricks: Show = these checks will appear in yellow instead.
  Allowed Tricks: Show = tricks that are not in logic for racing but are not banned will show as yellow.
  Allowed Tricks: Logic = checks accessible by these tricks will be green.
  Banned Tricks: Hide = tricks banned in racing (i.e. Goron Fence Jump) will no longer show at all normally.
  Banned Tricks: Logic = shows banned tricks in green.
+ Bottle contents now have capture boxes shown in the bottom left of the map so you can take notes on which scoops are which when scoops are randomized.

+ Probably a bunch of stuff i'm not thinking of. This update was a hefty one.

If there are any bugs, make sure to tell ZombiePhoenix#4490 on Discord so any changes will be made.
```

# 1.4.0.0
```
+ Race Mode
  Added a new version of the tracker that reflects the current race
  settings (08-08-20). Removes and adds certain checks.
```

# 1.3.1.0
```
+ Logic Updates
  Great Fairy Magic now checks for any transformation mask instead of all of them
  Fixed GBT Fairy Access rules
  Don Gero Mask check now requires magic
  Fixed Beans Grotto 20 Rupee check
  Fixed Termina Field stump check
  Removed Zora Mask as a requirement from Ocean Spider House
```

# 1.3.0.0
```
+ Added Dungeon ER support to the tracker
+ Added Song of Healing onto the tracker layouts
+ Added Magic tracking
+ Added Kokiri Sword tracking
* Updated logic to account for the additional tracking options
* Various other logic updates
```

# 1.2.0.0
```
* Redid logic to coincide with ZoeyZolotova's MMR builds.
```

# 1.1.2.0
```
* Reordered dungeon layouts to match the intended vanilla path through the dungeons.
* Bottle counter max increased to 6.
* Fixed Ikana Canyon Upper Region logic.
* Fixed Goron Village shop access rules.
```

# 1.1.0.1
```
+ Added an Items Only variant.
+ Added the forgotten and missing Old Hag's Potion Shop checks for Shopsanity.
* Fixed issues with broadcast view on the new layout.
```

# 1.1.0.0
```
+ Added a smaller version of the item layout for those with smaller screens.
  + Changed the current version to a variant called "Expanded Layout," for those who still would like to use it.
  * The smaller version splits Deku Princess and Gold Dust apart from the normal bottles, which are now a counter up to 4.
  * The smaller version also removes some unnecessary and untracked items from the list.
  !! This may get implemented as an override in the near future, to reduce variant clutter. !!
+ Added Shopsanity as an option.
  * The Goron Shop is merged with Goron Village due to the lack of checks in the location.
* Fixed map DPI issues introduced with the new updates.
* Increased the size of checks on the map for easier accessibility, and minor rearrangements for their positions.
```

# 1.0.2.0
```
+ Added missing Giant's Mask Check
* Refinements to map tracker logic to be faithful to logic in use by the randomizer.
* Several alternate ways marked as sequence breaks.
* Fixed missing hookshot requirement for "PF Guard Room 100 rupees"
* Fixed access rules for Stone Tower Temple Dungeon as well as chests outside.
```

# 1.0.1.1
```
* Minor logic and bug fixes.
```

# 1.0.1.0
```
+ Adds gold dust, Gilded Sword checks for this now (out of logic if you don't have it marked).
+ Sets Mask of Truth as obtainable but out of logic until you obtain Odolwa's Remains.
* Fixed Fisherman Grotto to require "Everything Else."
* Fixed Zora Cape Grotto to require "Everything Else."
* Fixed Zora Cape Underwater Chest to require "Everything Else."
* Fixed Underwater Pirate Fortress Exterior chests to require "Everything Else."
* Fixed Ikana Graveyard to check for Epona.
* Fixed Secret Shrine and the grotto outside to check for "Everything Else."
* Fixed Path to Ikana grotto and pillar chests to check for "Everything Else."
* Fixed Bombchu Pillar Grotto to require "Everything Else."
* Changed Shed 50 Rupees Logic to require nothing but "Everything Else" (according to current logic).
```

# 1.0.0

Tracker package created, with an Everything Else Randomized option alongside a mostly tested map tracker with the current logic, and an item tracker to facilitate MM's wacky randomizer.