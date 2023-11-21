# TurtleWoW-Essentials
A collection of essential TurtleWoW AddOns to enhance the player's experience.

1. [Usage](#usage)
2. [AddOns](#addons)
3. [Dependencies](#dependencies)
4. [Special Thanks](#special-thanks-to)

## Usage

The point of this project is to automatically download updated versions of the selected AddOns. 
All AddOns are made specifically tailored to TurtleWoW.
Cloning 33 AddOns all at once is much faster than manually going through the [curated TurtleWoW AddOns list](https://turtle-wow.fandom.com/wiki/Addons).
However, it may still take some time. 
This is especially true for larger AddOns like [pfQuest](https://github.com/shagu/pfQuest.git) that have entire multilingual databases.

* You will need [Git](https://git-scm.com/) to use this project.
* It utilizes all listed AddOns by pulling them as [submodules](./.gitmodules).
* Some AddOns will be pulled in nested directories, contain multiple plugins or have `-vanilla` directory postfixes.
    - [MikScrollingBattleText](https://github.com/AtheneGenesis/Vanilla_MikScrollingBattleText.git), [PowerAuras](https://github.com/laytya/PowerAuras-vanilla.git), [RestBar](https://github.com/Steelbash/RestBar.git) and [Spy](https://github.com/laytya/Spy-vanilla.git) all have nested directories that will not work unless you extract the AddOn files.
    - [aux-addon](https://github.com/shirsig/aux-addon-vanilla.git), [Cleanup](https://github.com/shirsig/Cleanup-vanilla.git) and [MinimapButtonFrame](https://github.com/laytya/MinimapButtonFrame-vanilla.git) have a `-vanilla` postfix in the directory name with must be removed in order to match it with the AddOn files.
* [WorldBuffSoundAlert](https://github.com/Bergador/WorldBuffSoundAlert.git), [RestBar](https://github.com/Steelbash/RestBar.git), [SpartanUI_SpinCam](https://github.com/Daribon/SpartanUI_SpinCam.git) and [MobsToLevel](https://github.com/idontbyte/MobsToLevel.git) are highly recommended at lower levels for new players.

Use:
* `git clone https://github.com/GordijnMan/TurtleWoW-Essentials.git` to clone this repository without the AddOns.
* `git submodule init` (inside the repository) to initialize the AddOn submodules.
* `git submodule update` (inside the repository) to update all AddOns to their latest versions.

Or, use:
* `git clone https://github.com/GordijnMan/TurtleWoW-Essentials.git --recurse-submodules` to download updated versions of all AddOns instantly.

## AddOns

### Shagu AddOns: 9

These are by far the most minimalist and stable AddOns for TurtleWoW.
Most of Shagu's AddOns (except ShaguWidget) work out of the box, without much need for configuration.

1. [pfQuest](https://github.com/shagu/pfQuest.git)
2. [pfQuest-turtle](https://github.com/shagu/pfQuest-turtle.git)
   - Quest helper with TurtleWoW features.
   - Leveling without a quest helper is not recommended for new players.
3. [ShaguCombat](https://github.com/shagu/ShaguCombat.git)
   - Red glowing frame around your screen that shows when you are in combat.
   - Essential for Hardcore players.
4. [ShaguDPS](https://github.com/shagu/ShaguDPS.git) - Simple damage table, essential for testing your gear.
5. [ShaguError](https://github.com/shagu/ShaguError.git)
   - AddOn that displays errors for Shagu AddOns.
   - Essential for troubleshooting your Shagu AddOns.
6. [ShaguInventory](https://github.com/shagu/ShaguInventory.git) - Shows if you already have an item on other characters.
7. [ShaguPlates](https://github.com/shagu/ShaguPlates.git)
   - Highly customizable in-game nameplates.
   - Essential for displaying debuffs on mobs.
8. [ShaguTweaks](https://github.com/shagu/ShaguTweaks.git) - Quality of life improvements to the TurtleWoW UI customizations.
9. [ShaguWidget](https://github.com/shagu/ShaguWidget.git)
    - Highly customizable widget which can show detailed map location, AddOn memory, lag (ping), and much more.
    - If you don't like tinkering, you can use [my ShaguWidget configuration](./ShaguWidget.cfg).

### Vanilla AddOns: 24

Many of these vanilla AddOns were patched to work with TurtleWoW's customizations.
They vastly enhance user experience and/or make the game far more enjoyable to play.

1. [AddOnOrganizer](https://github.com/Monteo/AddOnOrganizer.git) - Essential AddOn for managing your other AddOns.
2. [Atlas](https://github.com/Nonameby/Atlas.git) - Dungeon maps.
3. [AtlasLoot](https://github.com/Lexiebean/AtlasLoot.git) - Dungeon loot tables.
4. [AtlasQuest](https://github.com/Nonameby/AtlasQuest.git) - Dungeon quest helpers.
5. [aux-addon](https://github.com/shirsig/aux-addon-vanilla.git)
6. [aux_merchant_prices](https://github.com/shirsig/aux_merchant_prices.git)
   - Aux with marchant prices tooltips.
   - Gives the player an auction house overlay and makes it extremely easy to compare prices.
7. [BetterCharacterStats](https://github.com/Lexiebean/BetterCharacterStats.git) - Essential AddOn which displays more detailed character stat information.
8. [Cleanup](https://github.com/shirsig/Cleanup-vanilla.git) - Essential AddOn which sorts your default bags in a given direction.
9. [CRF](https://github.com/luskanek/CRF.git) - Essential AddOn which displays a raid overlay with buffs and debuffs on raid and party members.
10. [FlightMap](https://github.com/GryllsAddons/FlightMap.git)
    - Very useful AddOn which displays flight timers and locations.
    - Especially recommended for new players.
11. [GryllsSwingTimer](https://github.com/GryllsAddons/GryllsSwingTimer.git)
    - Minimalistic swing timer with sleek design and alternative themes.
    - Originally from [zUI](https://github.com/Ko0z/zUI.git).
12. [Mail](https://github.com/EinBaum/Mail.git) - AddOn which lets you open all your mail at once or send multiple items very quickly.
13. [MikScrollingBattleText](https://github.com/AtheneGenesis/Vanilla_MikScrollingBattleText.git)
    - Complete damage and status text replacement.
    - Highly customizable quality of life improvement.
    - Comes with `MikScrollingBattleTextOptions`, so the directory must be fixed for the AddOn to load.
14. [MinimapButtonFrame](https://github.com/laytya/MinimapButtonFrame-vanilla.git)
    - Grabs all minimap buttons and collects them in inside a customizable frame.
    - Requires [TurtleSnacks](https://github.com/McPewPew/TurtleSnacks.git) to work for TurtleWoW.
    - Comes with `MinimapButtonFrameFu` plugin, so the directory must be fixed for the AddOn to load.
15. [MobsToLevel](https://github.com/idontbyte/MobsToLevel.git) - Simple AddOn to calculate the next level based on the last killed target.
16. [PowerAuras](https://github.com/laytya/PowerAuras-vanilla.git)
    - Useful AddOn which displays your most important buffs or cooldowns.
    - The configuration will depend on your current class and available skills.
    - Comes with a nested directory that must be copied into the AddOn directory.
17. [RestBar](https://github.com/Steelbash/RestBar.git)
    - Essential AddOn that provides a rested bar.
    - Extremely useful for new and leveling players.
    - Also comes inside a nested directory.
18. [SKMap](https://github.com/EinBaum/SKMap.git)
    - Addon which adds death and pvp information to the map.
19. [SortBags](https://github.com/refaim/SortBags.git)
    - Dependency for [Cleanup](https://github.com/shirsig/Cleanup-vanilla.git).
    - Allows to configure Left or Right sorting.
20. [SpartanUI_SpinCam](https://github.com/Daribon/SpartanUI_SpinCam.git) - Makes the camera spin around you when you are detected as AFK.
21. [Spy](https://github.com/laytya/Spy-vanilla.git)
    - Essential AddOn for PvP enabled players.
    - Tracks PvP players with high kill counts of the opposing faction.
    - Feature to add players to kill lists and trigger sound alerts when enemy players are near.
    - Has yet another nested directory.
22. [TargetFrameBuff](https://github.com/ZiiMs/TargetFrameBuff.git)
    - Extends visible (de)buffs on TurtleWoW unit frames to 16.
    - This AddOn will be displayed as 'out-of-date'.
23. [TurtleSnacks](https://github.com/McPewPew/TurtleSnacks.git)
    - Dependency for [MinimapButtonFrame](https://github.com/laytya/MinimapButtonFrame-vanilla.git).
    - Allows the collection of TurtleWoW minimap buttons.
24. [TWThreat](https://github.com/CosminPOP/TWThreat.git) - Useful threatmeter for dungeons.
25. [WorldBuffSoundAlert](https://github.com/Bergador/WorldBuffSoundAlert.git) - Sounds an alert when a world buff is detected.

**TOTAL: 34 (± 200MB)**

## Dependencies

* [AtlasLoot](https://github.com/Lexiebean/AtlasLoot.git) and [AtlasQuest](https://github.com/Nonameby/AtlasQuest.git) require [Atlas](https://github.com/Nonameby/Atlas.git).
  - Together, Atlas, AtlasLoot and AtlasQuest give the player access to loot tables for instances and dungeon quests.
  - These AddOns are more useful at later levels.
  - I recommended to disable them at first using [AddOnOrganizer](https://github.com/Monteo/AddOnOrganizer.git) to save AddOn memory.
* [aux_merchant_prices](https://github.com/shirsig/aux_merchant_prices.git) requires [aux-addon](https://github.com/shirsig/aux-addon-vanilla.git).
  - Never run a full scan, it is extremely time and resource consuming.
  - By the time you are finished scanning, the auction house will already look different.
* [Cleanup](https://github.com/shirsig/Cleanup-vanilla.git) requires [SortBags](https://github.com/refaim/SortBags.git) and will need to configure which direction to sort to (Left or Right).
  - It also needs to configure the sorting button and may take some tinkering when setting up.
* [MinimapButtonFrame](https://github.com/laytya/MinimapButtonFrame-vanilla.git) requires [TurtleSnacks](https://github.com/McPewPew/TurtleSnacks.git) to collect TurtleWoW's customized buttons.
  - It also adds a `no new mail` button to keep the frame from resizing.
  - This is useful if you want the frame to function as a locked toolbar.
* [pfQuest](https://github.com/shagu/pfQuest.git) requires [pfQuest-turtle](https://github.com/shagu/pfQuest-turtle.git)
  - This AddOn is essential when leveling and doing quests.
  - It is highly recommended for new players.
  - Contrary to [Atlas](https://github.com/Nonameby/Atlas.git), [AtlasLoot](https://github.com/Lexiebean/AtlasLoot.git) and [AtlasQuest](https://github.com/Nonameby/AtlasQuest.git), it is recommended to disable [pfQuest](https://github.com/shagu/pfQuest.git) at higher levels.
  - This is by far the biggest AddOn in this collection.

## Special thanks to:

- [Grylls](https://github.com/GryllsAddons)
- [Laytya](https://github.com/laytya)
- [Lexiebean](https://github.com/Lexiebean)
- [Nonameby](https://github.com/Nonameby)
- [Shagu](https://github.com/shagu)
- [Shirsig](https://github.com/Shirsig)
