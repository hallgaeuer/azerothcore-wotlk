# AzerothCore modified for 5 man raids

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [General Info](#general-info)
- [Mall in Dalaran (Krasus Landing)](#mall-in-dalaran-krasus-landing)
- [Class Changes](#class-changes)
  - [Druid](#druid)
  - [Shaman](#shaman)
  - [Priest](#priest)
  - [Paladin](#paladin)
  - [Warlock](#warlock)
- [General Dungeon / Raid changes](#general-dungeon--raid-changes)
- [Raid Changes](#raid-changes)
  - [Naxxramas](#naxxramas)
    - [Anub'Rekhan](#anubrekhan)
    - [Thaddius](#thaddius)
    - [Sapphiron](#sapphiron)
    - [Gluth](#gluth)
    - [Maexxna](#maexxna)
  - [Vault of Archavon](#vault-of-archavon)
      - [Archavon](#archavon)
  - [Icecrown Citadel](#icecrown-citadel)
    - [Stinky / Precious](#stinky--precious)
    - [Festergut](#festergut)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## General Info
- Cross faction
- Instant 80
- No durability loss
- Auctionhouse bot is running

## Mall in Dalaran (Krasus Landing)

* Class trainers
* Vendors with free uncommon quality gear (sourced from quest rewards)
* Uncommon / Rare / Epic Gem vendors with according gem prices
* Glyph vendors
* Neutral auctioneer with ahbot
* Food and drink vendor with potions and special items:
* * `Endless Bowl of Tasty Ramen`: Infinitely usable Food/Drink item 
* * `Book of Buffing`: Summons a Buffbot that can buff you with typical raid buffs
* * `Book of Rezzing`: Summons a Rezbot that automatically revives dead players after combat is dropped. Only usable in dungeons or raids

## Class Changes

### Druid

* Added `Cleanse` spell, only usable in raids

### Shaman

* Added `Cleanse` spell, only usable in raids

### Priest

* Added `Cleanse Spirit` spell, only usable in raids
* `Misery` now also Triggers `Curse of the Elements`

### Paladin

* Added `Cleanse Spirit` spell, only usable in raids

### Warlock

* Soul Shards stackable up to 200, unlimited amount
* `Drain Soul` creates 10 soul shards instead of 1

## Mage

* Added `Heroism` / `Bloodlust` spell, only usable in raids

## Hunter

* Added `Heroism` / `Bloodlust` spell, only usable in raids

## General Dungeon / Raid changes

* Dungeon finder item level requirements removed
* ICC dungeons completely locked for now
* ToC dungeon locked for now
* Random dungeons via dungeon finder reward Emblems of Triumph instead of Emblems of Frost
* Heroic dungeon bosses and raid bosses drop appropriate emblems for the item level of the raid / dungeon
* Heroic dungeon bosses and raid bosses drop appropriate emblems for the item level of the raid / dungeon

## Raid Changes

Health and Damage values were readjusted for all raids
Specific values can be seen in the mod_quickbalance_* tables.

The 25man versions of raids are planned to be more challenging modes.

Currently done:

- [x] Naxxramas 10 (not playtested)
- [ ] Naxxramas 25
- [x] Obsidian Sanctum 10 (not playtested yet)
- [ ] Obsidian Sanctum 25
- [x] Eye of Eternity 10 (not playtested yet)
- [ ] Eye of Eternity 25

### Naxxramas

#### Noth
* Curse only targets one player

#### Anub'Rekhan
* Reduced movement speed of Anub'Rekhan during Locust Swarm by 80% instead of 40%. This way the tank should still be able to pick up Crypt Guard adds

#### Thaddius
* Reduced damage of Feugen and Stalagg _severely_. This way damage dealers are able to tank one side.
* Reduced Thaddius HP to compensate for lower possible polarity shift stacks

#### Sapphiron
* Only cast 1 life drain in 10 man mode (instead of 2)
* Only casts ice bolt on one person
* Ice bolt does not target lowest threat target (which should usually be the healer)

#### Patchwerk
* Hateful Strike always strikes the closest target that is not the tank (not only melee range). Damage significantly reduced. Ignores Armor. Does not cause spell pushback.

#### Gluth
* Disabled Mortal Wound
* Zombie movement speed reduced by 70%

#### Maexxna
* Web Wrap will not target lowest threat target (usually the healer)

#### Gothik
* Gate is always open

#### The Four Horsemen
* Damage of Horsemen and Marks reduced so all can be tanked at once

#### Kel'Thuzad
* Frost Bolt is cast less frequently

### Vault of Archavon

##### Archavon

* Disabled Impale

### Icecrown Citadel

#### Stinky / Precious

* Disabled Mortal Wound

#### Festergut

*  Disabled Gastric Bloat