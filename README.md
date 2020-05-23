# MoreDisc

Minercraft version: 1.16+

This datapack add the possibility to have more disks, for this follow the instructions below
If the datapack for some reason doesn't work anymore try these commands:
`/reload` or
`/advancement revoke @s only more_disc:detect_disc`

***Note: If a music is playing don't break the jukebox***
## Instructions

**Note: Give the same filename to sounds (.ogg) and predicates (.json)**

1. Install the datapack and the ressource pack
2. Choose the music you want to add
3. Make sure it is in **OGG/Vorbis** and **mono** format
4. Go to the `/assets/minecraft/sounds/custom` folder in the **resource pack**
5. Copy your music to this folder
6. Go to the `/assets/minecraft` folder
7. Open the *sounds.json* file
8. Add your music as in the example below

Note: Don't forget to put a comma between each music each time you add one
```json
{
    "custom.c418_13": 
	{
	  "sounds": 
	  [
		  "custom/13"
	  ]
	},
	"custom.your_music": 
	{
	  "sounds": 
	  [
		  "custom/your_music"
	  ]
	}
}
```
9. Go to the `/data/more_disc/predicates/` in the **datapack folder**
10. Copy the file *c418_13.json* and rename it
11. Now open the renamed file
12. Instead of C418 - 13, put the name (Format : AuthorName - MusicName) of your disc in game
```json
{
    "condition": "minecraft:location_check",
    "predicate": {
      "block": {
        "block": "minecraft:jukebox",
        "nbt": "{RecordItem:{id:\"minecraft:music_disc_13\",tag:{display:{Name:'{\"text\":\"AuthorName - MusicName\"}'}}}}"
      }
    }
  }
```
14. Go to the `/data/more_disc/functions/` in the datapack folder.
15. Open the file *disc_inside.mcfunction*
16. Add the two lines of code below at the end of the file
17. Replace your_music with your music name
18. At this point `DiscId 0`, increment this value by one from the previous line
```
execute if predicate more_disc:your_music run scoreboard players set @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Jukebox] DiscId 0
execute if predicate more_disc:your_music run playsound minecraft:custom.your_music record @s ~ ~ ~
```
19. Open the no_disc_inside.mcfunction file in the same directory
20. Add the line below in the file before this line: `kill @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Jukebox]`
21. Replace your_music with your music name
22. At this point `DiscId matches 0`, insert the value that you have set in the previous points
```
execute if score @e[type=area_effect_cloud,limit=1,sort=nearest,tag=Jukebox] DiscId matches 0 run stopsound @s record minecraft:custom.your_music
```
23. Now you can listen to your custom music




