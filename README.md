# AzerothCore modified for 5 man raid multiboxing

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
- [Mage](#mage)
- [Hunter](#hunter)
- [General Dungeon / Raid changes](#general-dungeon--raid-changes)
- [Raid Changes](#raid-changes)
  - [Naxxramas](#naxxramas)
    - [Noth](#noth)
    - [Anub'Rekhan](#anubrekhan)
    - [Thaddius](#thaddius)
    - [Sapphiron](#sapphiron)
    - [Patchwerk](#patchwerk)
    - [Gluth](#gluth)
    - [Maexxna](#maexxna)
    - [Gothik](#gothik)
    - [The Four Horsemen](#the-four-horsemen)
    - [Kel'Thuzad](#kelthuzad)
  - [Eye of Eternity](#eye-of-eternity)
    - [Malygos](#malygos)
  - [Vault of Archavon](#vault-of-archavon)
      - [Archavon](#archavon)
  - [Icecrown Citadel](#icecrown-citadel)
    - [Stinky / Precious](#stinky--precious)
    - [Festergut](#festergut)
  - [Ulduar](#ulduar)
    - [Flame Leviathan](#flame-leviathan)
    - [Razorscale](#razorscale)
    - [XT-002 Deconstructor](#xt-002-deconstructor)
    - [Hodir](#hodir)
    - [Thorim](#thorim)
    - [Freya](#freya)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## General Info
- Made for 5 man multiboxing. The goal is for everything to be doable with regular multiboxer tools like ISBoxer or HKN. No client unlocking required.
- Cross faction
- Instant 80
- No durability loss
- AHbot
- Buffbot
- Resurrection-Bot or "Rezbot"
- Mall in Dalaran (Krasus Landing)
- Free riding / flying
- Free dual-spec

## Mall in Dalaran (Krasus Landing)

* Class trainers
* Vendors with free uncommon quality gear (sourced from quest rewards)
* Uncommon / Rare / Epic Gem vendors with according gem prices
* Enchantment scroll vendors
* Glyph vendors
* Neutral auctioneer with ahbot
* Food and drink vendor with health / mana potions and special items:
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

The 25man versions of raids are currently disabled. Drops from 25 mans are found in 10 man versions.

Currently done:

- [x] Naxxramas 10
- [x] Obsidian Sanctum 10 
- [x] Eye of Eternity 10

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


### Eye of Eternity

#### Malygos
* Reduced damage of phase 3 Surge of Power by 80%, making the dragon shield ability obsolete. Didn't see any other way to make this viable for multiboxing otherwise (without client unlocks or anything)

### Vault of Archavon

##### Archavon

* Disabled Impale

### Icecrown Citadel

#### Stinky / Precious

* Disabled Mortal Wound

#### Festergut

* Disabled Gastric Bloat

### Ulduar

#### Flame Leviathan

* No adjustments except for health yet. Can be skipped by using the teleporter at the beginning of Ulduar, which is always unlocked.

#### Razorscale

* Minions are not random. Always one of each type spawns. Only one mole machine.
* Fuse Armor will fall off after 2 stacks

#### XT-002 Deconstructor

* Only one scrap heap spawns adds

#### Hodir

* Icicles fall less frequently
* Frozen Blows frost damage reduced, so no Frost Resistence is required
* Biting cold: When moving or near a fire 3 stacks are removed instead of just one

#### Thorim

* Players do not need to remain in the arena: 
* * Only the first batch of arena mobs will spawn
* * Thorim doesn't summon Lightning Orbs when no one is in the arena
* Unbalancing Strike: Doesn't reduce defense skill (even though the client still displays the defence reduction)

#### Freya

* Freya will neither autoattack nor chase in the first phase
* Threat resets at the beginning of the second phase