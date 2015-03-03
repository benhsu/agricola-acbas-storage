# agricola-acbas-storage

We are going to have 5 components: a tray for the animals, a tray for the extension tiles, two trays for player components (each of these will hold 9 borders and 3 disks), and a tray for everything else. The last tray will hold: the other 8 borders, base tile games such as the Stall and the Half Timbered House, the houses, reed, stone, and wood.

Some base numbers:

1. The box is 193mm x 193mm
2. all the walls, interior and exterior, are 2mm (we can go down to 1.2mm but that just makes the math more annoying
3. allow 1mm slack between trays so we can take them out
4. the tiles are 38mm on each side, the borders are 38mm long. allow 1-2mm slack between this and the interior wall

umbrella.scad
-------------

Loads all the other components and arranges them to be in the right positions

animals.scad
------------

Defines the tray for holding the animals. This will have four chambers for sheep, pigs, horses, and cows

expansions.scad
---------------

Defines the tray for holding expansions. This will have two chambers, each store two stacks of tile


player.scad
-----------

Defines the tray for storing the player disks, 9 borders, and the starting player token

rest.scad
---------

Defines the tray to store everything else.
