# Troll Ambush
A troll is approaching your village, you and your fellow villagers don't have much time before he crashes in and wreaks havoc. Your village decides to elect 3-4 captains that are in charge of small teams to stop the troll. Each team will have 2-3 chances to prepare for the troll. Each team's preparation will have a random factor to the final effectiveness agianst the troll. 
* Unfinished tasks will still count toward the final goal, but completed tasks are much more effective
* Teams will have to work together to delegate tasks. They will need to do this so they are not trying to complete a task another team is working on. 
* Once a task is completed it can no longer be completed by another team
* Teams can only communicate to each other through their captains(excluding normal day to day talk)

### Place Traps
##### Difficulty: 1
The village has decided to setup traps in various points throughout the village. They decided the place them an X pattern. The top left being spring rolling spike traps, top right being punji stick pits, bottom left being corn flour explosives, and bottom right being spear traps.
* Valid traps: ['spring_spear','corn_flour_explosive','punji_stick_pit','rolling_spikes']
* Make sure not to place any traps that are not valid
* Expected input: array or valid traps
* Expected output: 10x10 2D array

Location: "place_traps"

### Take Inventory
##### Difficulty: 2
As the troll approaches we will need to take inventory of all our items and weapons before he arrives. Create a hash that lists the name of the weapon and how many we have of that item.
* Valid Weapons: ['arrow', 'bow', 'sword','mace','torch','shield', 'axe']
* Make sure to declutter anything we don't need.
* Expected input: array of weapons
* Expected output: hash with each weapon and count

Location: "take_inventory"

### Barricade Entries
###### Difficulty: 3
Block entry points to the village! 
* Valid Entryways: ["large","medium","small"].
* Blocking materials: ex. {"boulder"=>3,"plank"=>2, "barrel"=>4}
* Large entryways take 1 boulder or 2 barrels or 4 planks to block
* Medium entryways take 1 boulder or 1 barrel or 2 planks to block
* Small entryways take 1 boulder or 1 barrel or 1 plank to block
* Expected Input: array of entryways, hash table of blocking materials
* Expected Output: boolean of whether we have the materials we need or not

Location: "barricade_entries"

### Find Battle Stations
##### Difficulty: 3 
Different battle stations are located around the village. You will need to identify the outermost battles stations to take down the troll.
Write an algorithm that returns an array of the outermost points of the 2d array.
* Expected Input: array of battlestations, battlestations are represented with x,y points. ex. [[0,0],[5,5]]
* Expected Output: array of outermost battlestatations. ex. [[0,0],[5,5]]
Example: 
<!-- |0|1|2|3|4|5|6|7|
|---|---|---|---|---|---|---|---|
|X||||||||
||||||X|||
||X|||||||
||||X|||||
|||||||||
||X|||||X||
|X||||||||
||||X||||| -->
| X |   |   | X |   |   |
|---|---|---|---|---|---|
|   |   | X |   |   |   |
|   | X |   |   |   | X |
| X |   |   | X |   |   |
|   |   |   | X |   |   |

returns: [[0,0],[0,3],[3,0],[3,4],[5,2]]

Location: "battle_stations"