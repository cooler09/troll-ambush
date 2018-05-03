# Troll Ambush
A troll is approaching your village, you and your fellow villagers don't have much time before he crashes in and wreaks havoc. Your village decides to elect 3-4 captains that are in charge of small teams to stop the troll. Each team will have 2-3 chances to prepare for the troll. Each team's preparation will have a random factor to the final effectiveness agianst the troll. 
* Unfinished tasks will still count toward the final goal, but completed tasks are much more effective
* Teams will have to work together to delegate tasks. They will need to do this so they are not trying to complete a task another team is working on. 
* Once a task is completed it can no longer be completed by another team
* Teams can only communicate to each other through their captains(excluding normal day to day talk)

### Take Inventory
Difficulty:1-2
As the troll approaches we will need to take inventory of all our items and weapons before he arrives.
Make sure to declutter anything we don't need.
Items we need ['arrow', 'bow', 'sword','mace','torch','shield', 'axe']

Location: "take_inventory"

### Barricade Entries
Difficulty: 3
Block entry points to the village!
Entries will come in as an array of strings. Valid types ["large","medium","small"]
Items will come in as a hash table {"boulder"=>3,"plank"=>2, "barrel"=>4}
* Large entryways can take 1 boulder or 2 barrels or 4 planks
* Medium entryways can take 1 boulder or 1 barrel or 2 planks
* Small entryways can take 1 boulder or 1 barrel or 1 plank

Location: "barricade_entries"

### Find Battle Stations
Difficulty: 3
Different battle stations are located around the village. You will need to identify the outermost battles stations.
Write an algorithm that returns an array of the outermost points of the 2d array.
Example: 
|---|---|---|---|---|---|---|---|
|X||||||||
||||||X|||
||X|||||||
||||X|||||
|||||||||
||X|||||X||
|X||||||||
||||X|||||
returns: [[0,0],[3,7],[6,5],[0,6]]

Location: "battle_stations"