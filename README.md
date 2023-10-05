# Dynamic-Difficulty-Deluxe
my own version of CubeMath's DynamicDifficulty, This plugins uses metamod and aims to have a big impact in the gameplay being a totaly diferent thing of what CubeMath's plugin does

# Install:
download code as a rar file
unzip inside scripts/plugins/
go to svencoop/default_plugins.txt and add this to there
```
	"plugin"
	{
		"name" "DynamicDifficultyDeluxe"
		"script" "Dynamic-Difficulty-Deluxe/DynamicDifficultyDeluxe"
	}
```

# Commands:

for use any of them write in your default_map_settings.cfg or map's cfg ``as_command .DynamicDifficultyDeluxe (command) (arguments)``

| as_command | default value | description |
|------------|---------------|-------------|
| disable | 0 | 1 = disables the plugin |
| vote cooldown | 60 | cooldown between votes |
| vote time | 15 | time for voting |
| vote allowin | 30 | time until vote get enabled during a map load |

<details><summary>default_map_settings.cfg</summary>
<p>

```
as_command .DynamicDifficultyDeluxe disable 0
as_command .DynamicDifficultyDeluxe vote cooldown 60
as_command .DynamicDifficultyDeluxe vote time 15
as_command .DynamicDifficultyDeluxe vote allowin 30
as_command .DynamicDifficultyDeluxe barnacle enable 1
as_command .DynamicDifficultyDeluxe barnacle diff 1
as_command .DynamicDifficultyDeluxe armorvest enable 1
as_command .DynamicDifficultyDeluxe armorvest reduction 0.8
as_command .DynamicDifficultyDeluxe uncrab enable 1
as_command .DynamicDifficultyDeluxe uncrab diff 1
as_command .DynamicDifficultyDeluxe agrunt punch 1
as_command .DynamicDifficultyDeluxe agrunt punch diff 10
as_command .DynamicDifficultyDeluxe agrunt stun 1
as_command .DynamicDifficultyDeluxe agrunt stun diff 20
as_command .DynamicDifficultyDeluxe agrunt berserk 1
as_command .DynamicDifficultyDeluxe agrunt berserk diff 1

```

</p>
</details>

# Features:

### Beheaded zombie

When atacking zombies, if the headcrab is not damaged enought, the zombie will be beheaded when he die, allowing the headcrab to jump from its human body

| as_command | default value | description |
|------------|---------------|-------------|
| uncrab enable | 1 | 0 = disable zombies being beheaded |
| uncrab diff | 1 | minimun difficulty in wich this feature will be enabled |

**NOTES:**

- Zombie's mdl files must ends with ``"_uncrab.mdl"``
- spawned headcrabs will share ``classify`` from it's zombie owner
- spawned headcrabs health will be based on the cvar sk_headcrab_health - damage the zombie received on the headcrab

---

### Armor vest npcs

when atacking npcs that looks like wearing armor vest, a spark effect will be shown and damage reduction on it will be decreased

| as_command | default value | description |
|------------|---------------|-------------|
| armorvest enable | 1 | enable armor vest reduction for some npcs |
| armorvest reduction | 0.8 | damage reduction for armor vest npcs ( 1.0 no reduction, less number less damage it takes ) |

Supported npcs:
```angelscript
    array<string> ValidMonsters =
    {
        'monster_barney',
        'monster_zombie_barney',
        'monster_human_grunt',
        'monster_grunt_repel',
        'monster_male_assassin',
        // Need model with hitgroup 2/3!
        //'monster_hwgrunt',
        //'monster_hwgrunt_repel',
        'monster_human_grunt_ally',
        'monster_grunt_ally_repel',
        'monster_human_medic_ally',
        'monster_medic_ally_repel',
        'monster_human_torch_ally',
        'monster_torch_ally_repel'
    };
```

---

### Barnacle speed up pulling players

Barnacles will pull players faster.

| as_command | default value | description |
|------------|---------------|-------------|
| barnacle enable | 1 | 0 = disable barnacle speed up eating for players |
| barnacle diff | 1 | minimun difficulty in wich this feature will be enabled |

**NOTES:**

- The speed up pulling is based on the current dificulty. to be exact, it pulls players 0.2 units multiplied per difficulty %

### alien grunt

| as_command | default value | description |
|------------|---------------|-------------|
| agrunt punch | 1 | 0 = disable alien grunt punch pushing players |
| agrunt punch diff | 1 | minimun difficulty in wich this feature will be enabled |
| agrunt stun | 1 | 0 = disable alien grunt's hornets stunning players |
| agrunt stun diff | 1 | minimun difficulty in wich this feature will be enabled |
| agrunt berserk | 1 | 0 = disable alien grunt's sk_agrunt_melee_engage_distance multiplier |
| agrunt berserk diff | 1 | minimun difficulty in wich this feature will be enabled |