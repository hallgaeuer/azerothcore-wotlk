# AzerothCore modified for 5 man raids

## Mall in Dalaran (Krasus Landing)

* Class trainers
* Vendors with free green quality quest gear
* Green quality gem vendors
* Glyph vendors
* Neutral auctioneer with ahbot
* Food and drink vendor with free food and potions
* Buffbot. Summonable via item sold for free by the food and drink vendor

## Class Changes

### Warlock

* Soul Shards stackable up to 200, unlimited amount
* Drain Soul creates 10 soul shards instead of 1

## General Dungeon / Raid changes

* Dungeon finder item level requirements removed
* ICC dungeons completely locked for now
* Random dungeons via dungeon finder reward Emblems of Triumph instead of Emblems of Frost
* Heroic dungeon bosses and raid bosses drop appropriate emblems for the item level of the raid / dungeon

## Raid Changes

Health and Damage values were readjusted for all raids
Specific values can be seen in the mod_quickbalance_* tables.

The 25man version of raids can be seen as "challenge modes".

Currently done:

- [x] Naxxramas 10 (not playtested)
- [ ] Naxxramas 25
- [x] Obsidian Sanctum 10 (not playtested yet)
- [ ] Obsidian Sanctum 25
- [x] Eye of Eternity 10 (not playtested yet)
- [ ] Eye of Eternity 25

### Naxxramas

#### Anub'Rekhan
* Reduced movement speed of Anub'Rekhan during Locust Swarm by 80% instead of 40%. This way the tank should still be able to pick up Crypt Guard adds

#### Thaddius
* Reduced damage of Feugen and Stalagg _severely_ to accommodate only 1 healer.

#### Sapphiron
* Only cast 1 life drain in 10 man mode (instead of 2)
* Only casts ice bolt on one person
* Ice bolt does not target lowest threat target

#### Gluth
* Disabled Mortal Wound
* Zombie movement speed reduced by 70%

#### Maexxna
* Web Wrap will not target lowest threat target (usually the healer)

### Vault of Archavon

##### Archavon

* Disabled Impale

### Icecrown Citadel

#### Stinky / Precious

* Disabled Mortal Wound

#### Festergut

*  Disabled Gastric Bloat