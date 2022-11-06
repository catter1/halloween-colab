### NOTE ###
# This script belongs inside the same folder as structures
# and must be executed in there as well.

import nbtlib
from nbtlib import Compound, Short, String, List, Int
import random
import os

choices = [String('minecraft:skeleton'), String('minecraft:wither_skeleton'), String('minecraft:wither_skeleton')]
tag = Compound({
    'nbt': Compound({
        'MaxNearbyEntities': Short(6),
        'RequiredPlayerRange': Short(16),
        'SpawnCount': Short(4),
        'SpawnData': Compound({'id': String('minecraft:skeleton')}),
        'MaxSpawnDelay': Short(800),
        'id': String('minecraft:mob_spawner'),
        'SpawnRange': Short(4),
        'Delay': Short(0),
        'MinSpawnDelay': Short(200),
        'SpawnPotentials': List[Compound]([
            Compound({
                'weight': Int(1),
                'data': Compound({
                    'entity': Compound({
                        'id': String('minecraft:skeleton')
                    }),
                    'custom_spawn_rules': Compound({
                        'block_light_limit': Compound({
                            'min_inclusive': Int(0),
                            'max_inclusive': Int(15)
                        }),
                        'sky_light_limit': Compound({
                            'min_inclusive': Int(0),
                            'max_inclusive': Int(15)
                        })
                    })
                })
            })
        ])
    }),
    'pos': List[Int]([
        Int(6),
        Int(16),
        Int(30)
    ]),
    'state': Int(46)
})



def main():
    for file in os.listdir(os.getcwd()):
        if file.endswith(".nbt"):
            nbt_file = nbtlib.load(file)
            spawners = []
            indices = []

            # Get the position/state data
            for i, item in enumerate(nbt_file.root["blocks"]):
                if item.find(nbtlib.String('SpawnData')):
                    spawners.append(
                        {
                            "pos": item["pos"],
                            "state": item["state"]
                        }
                    )

                    indices.append(i)

            # Only continue if there was *actually* a mob spawner in the structure
            if len(indices) >= 1:

                # Remove the old tags
                for i in reversed(indices):
                    del nbt_file.root["blocks"][i]

                # Create correct amount of new tags
                for i in range(len(spawners)):
                    nbt_file.root["blocks"].append(tag)

                # Find the new tags
                j = 0
                for i, item in enumerate(nbt_file.root["blocks"]):
                    if item.find(nbtlib.String('SpawnData')):
                        mob = random.choice(choices)

                        # Personalize each tag with correct data
                        nbt_file.root["blocks"][i]["nbt"]["SpawnPotentials"][0]["data"]["entity"]["id"] = mob
                        nbt_file.root["blocks"][i]["nbt"]["SpawnData"]["id"] = mob
                        nbt_file.root["blocks"][i]["pos"] = spawners[j]["pos"]
                        nbt_file.root["blocks"][i]["state"] = spawners[j]["state"]

                        j += 1

                nbt_file.save()

if __name__ == '__main__':
    main()