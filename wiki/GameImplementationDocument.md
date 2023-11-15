This documents how the Godot application is constructed.

At the moment, it is an unorganized collection of important information.

# Collision Layers

SMC operates with eight (8) collision layers:

1. Hero - This is assigned to the Hero scene
1. Challenger - This is assigned to Vampire, Skeleton Warrior, Skeleton Grim Reaper, and Skull of Death scenes.
1. Hero Weapons - This is assigned to both of the Hero's weapons.
1. Challenger Weapons - This is assign to all of the Challenger character-type weapons
1. Containers and Items - This is assigned to all of the containers and items within them.
1. Power-ups - This is assigned to all of the power-ups.
1. Zones and Areas - Unassigned at this time as we are not using these right now.
1. Walls and Objects - This is assigned to all walls and objects that other scenes need to 'see'. Used mainly by the tile sets.

# Groups

We use groups to add metadata about certain scenes. We use this to make decisions on whether or not to execute certain code. Example: Run code for a signal only if it's the Hero:

```if body.is_in_group("Hero"):```

Current groups are:
* Hero
* Challenger
* HeroWeapon
* ChallengerWeapon

# Directory Structure 
* res://
  - Audio
    + Music
    + SoundEffects
  - documentation
    + images
  - Graphics
    + Challengers
      * SkeletonGrimReaper
      * SkeletonWarrior
      * SkullOfDeath
    + Hero
    + Items
      * Gems
    + Misc
    + Powerups
    + UIImages
    + Weapons
      * Explosion1
      * Fireball1
      * FireBlast
  - Scenes
    + Characters
      * Challengers
    + Items
    + Levels
    + Sandbox
    + UI
    + Weapons
  - templates
  - wiki

# SMC Specific Classes

For nodes/objects that have common properties and methods we define a single parent class. We then define 
child classes as we need them. At this time we have only a single inheritance from the parent class. 
The child classes have no children.

## Current Classes

* Character
  * Hero
  * SkeletonWarrior
  * SkeletonGrimReaper
  * Vampire
  * SkullOfDeath
* Weapon
  * Bomb
  * Bolt
  * Knife
  * FireBall
  * Scythe
  * Laser
  * FireBlast
  * ShortShield
  * LongShield
* Container
  * SmallChest
  * MediumChest
  * LargeChest
* Item
  * Coin
  * Gem
  * ExtraLifePoints
* PowerUp
  * PrimaryWeaponRefill
  * SecondaryWeaponRefill
  * ShortShieldRefill
  * LongShieldRefill
  * LifePotion
    
