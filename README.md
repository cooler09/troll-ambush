# Troll Ambush
A troll is approaching your village, you and your fellow villagers don't have much time before he crashes in and wreaks havoc. Your village decides to elect 3-4 captains that are in charge of small teams to stop the troll. Each team will have 2-3 chances to prepare for the troll. Each team's preparation will have a random factor to the final effectiveness agianst the troll. 
* Unfinished tasks will still count toward the final goal, but completed tasks are much more effective
* Teams will have to work together to delegate tasks. They will need to do this so they are not trying to complete a task another team is working on. 
* Once a task is completed it can no longer be completed by another team
* Teams can only communicate to each other through their captains(excluding normal day to day talk)
#### How to defeat the Troll
Each task carries a difficulty, each difficulty puts you in a number range. If you complete the task the number range is increased, if you fail to complete you will use the standard number range
* With 3 groups, you will need 26 points to stop the troll
* With 4 groups you will need 32 points to stop the troll
* Difficulty 1: failed=1-3 pass=4-5
* Difficulty 2: failed=1-4 pass=5-6
* Difficulty 3: failed=1-5 pass=6-7

### Sharpen Weapons
##### Difficulty: 1
Weapons have different durability levels. Write a function to sharpen a weapon based on what the durability can handle. Each time you sharpen the weapon it's durability goes down.
* A weapon's durability and type is determined on object initialization
* If a weapon durability goes does to 0.0 the weapon is broken
* A weapon cannot be initialized with more than 1.0 durability
* A weapon cannot be initialized with less than 0.0 durability
* Axe sharpen process takes 0.3 from the durability
* Mace sharpen process takes 0.1 from the durability
* Sword sharpen process takes 0.5 from the durability
* Arrow sharpen process takes 0.7 from the durability
* Expected Input: none
* Expected Output: boolean indicating whether our sharpen process was successful or not

### Place Traps
##### Difficulty: 1
The village has decided to setup traps in various points throughout the village. They decided the place them an X pattern. The top left being spring rolling spike traps, top right being punji stick pits, bottom left being corn flour explosives, and bottom right being spear traps.
* Valid traps: ['spring_spear','corn_flour_explosive','punji_stick_pit','rolling_spikes']
* Make sure not to place any traps that are not valid
* When placing traps mark each trap with a special char. 'S' = 'spring_spear', 'C' = 'corn_flour_exploxive', 'P' = 'punji_stick_pit', 'R' = 'rolling_spikes'
* Places on your map that don't have any traps marks with the char '_'
* Expected input: array of valid traps
* Expected output: 10x10 2D array with placed traps, representing the village map

Location: "place_traps"

### Take Inventory
##### Difficulty: 2
As the troll approaches we will need to take inventory of all our items and weapons before he arrives. Create a hash that lists the name of the weapon and how many we have of that item.
* Valid Weapons: ['arrow', 'bow', 'sword','mace','torch','shield', 'axe']
* Make sure to declutter anything we don't need.
* Expected input: array of weapons. ex. ['arrow','arrow','bow']
* Expected output: hash with each weapon and count. ex. { 'arrow' => 2, 'bow' => 1 }

Location: "take_inventory"

### Barricade Entries
###### Difficulty: 3
Block entry points to the village! 
* Valid Entryways: ["large","medium","small"].
* Blocking materials: boulders, barrels, planks. ex. {"boulder"=>3,"plank"=>2, "barrel"=>4}
* Large entryways take 1 boulder or 2 barrels or 4 planks to block
* Medium entryways take 1 boulder or 1 barrel or 2 planks to block
* Small entryways take 1 boulder or 1 barrel or 1 plank to block
* Try not to overuse any materials, only use the minimum necessary!
* Expected Input: array of entryways, hash table of blocking materials. ex. ['large','medium','small'], {'boulder' => 1, 'barrel'=>1,'plank'=>1}
* Expected Output: boolean of whether we have the materials we need or not.

Location: "barricade_entries"

### Find Battle Stations
##### Difficulty: 3 
Different battle stations are located throughout the village(not just around the perimeter). You will need to identify the outermost battles stations to take down the troll. Write an algorithm that returns an array of the outermost points of the 2d array.
* The function should handle different size 2d arrays as input and does not contain points that are not battlestations.
* It can be assumes that anything passed in to the function is a battlestation
* The output array should only contain unique entries
* Expected Input: array of battlestations, battlestations are represented with x,y points. ex. [[0,0],[1,1],[5,5]]
* Expected Output: array of outermost battlestatations. ex. [[0,0],[5,5]]
Example: 

| X |   |   | X |   |   |
|---|---|---|---|---|---|
|   |   | X |   |   |   |
|   | X |   |   |   | X |
| X |   |   | X |   |   |
|   |   |   | X |   |   |

returns: [[0,0],[0,3],[3,0],[3,4],[5,2]]

Location: "battle_stations"