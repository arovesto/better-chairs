import os


def generate_place(func_dir):
    prolog = [
        "# GENERATED DO NOT EDIT",
        "advancement revoke @s only chairs:place",
        "scoreboard players set #bool chairs_logic_var 0",
    ]

    r = 5

    n = 200
    for i in range(1,n+1):
        prolog.append(f'execute unless score #bool chairs_logic_var matches 1 rotated as @s anchored eyes positioned ^ ^ ^{r / n * i:.2f} if block ~ ~ ~ #minecraft:stairs align x align y align z store success score #bool chairs_logic_var run function chairs:place_at')

    with open(f"{func_dir}/place.mcfunction", "w") as f:
        f.write("\n".join(prolog))


def generate_remove(func_dir):
    prolog = ["# GENERATED DO NOT EDIT",
              "scoreboard players set #bool chairs_logic_var 0",
              "execute on attacker store result score #bool chairs_logic_var if entity @s[tag=this]",
              "execute if score #bool chairs_logic_var matches 1 at @s run kill @e[type=minecraft:interaction,tag=chair_sit,distance=..0.5]",
              "execute if score #bool chairs_logic_var matches 1 at @s run kill @s"]

    epilogue = [
        "execute if score #bool chairs_logic_var matches 1 at @s run setblock ~ ~ ~ minecraft:air",
        "execute if score #bool chairs_logic_var matches 1 run data remove entity @s interaction"
    ]

    names = """oak_stairs, spruce_stairs, birch_stairs, jungle_stairs, acacia_stairs, dark_oak_stairs, crimson_stairs, warped_stairs, mangrove_stairs, bamboo_stairs, cherry_stairs"""
    for n in names.split(", "):
        name_user = " ".join(w.capitalize() for w in n.split("_")[:-1]) + " Chair"
        prolog.append(f"""execute if score #bool chairs_logic_var matches 1 at @s if block ~ ~ ~ minecraft:{n} run summon item ~ ~0.5 ~ {{Item:{{id:{n},count:1,components:{{custom_name:'[{{"text":"{name_user}","italic":false,"color":"green"}}]',custom_data:{{type:chair}}}}}}}}""")

    with open(f"{func_dir}/at_break.mcfunction", "w") as f:
        f.write("\n".join(prolog + epilogue))


def gen_recipies(recipies_dir):
    template = """{
  "type": "minecraft:crafting_shapeless",
  "category": "blocks",
  "group": "chairs",
  "ingredients": [
    {
      "item": "minecraft:NAME"
    },
    {
      "item": "minecraft:CARPET"
    }
  ],
  "result": {
    "id": "minecraft:NAME",
    "count": 1,
    "components": {
      "minecraft:custom_name": "[{'text':'BLOCK_USER','italic':false, 'color':'green'}]",
      "minecraft:custom_data": {
        "type": "chair"
      }
    }
  }
}"""

    names = """oak_stairs, spruce_stairs, birch_stairs, jungle_stairs, acacia_stairs, dark_oak_stairs, crimson_stairs, warped_stairs, mangrove_stairs, bamboo_stairs, cherry_stairs"""

    carpets = """white_carpet, orange_carpet, magenta_carpet, light_blue_carpet, yellow_carpet, lime_carpet, pink_carpet, gray_carpet, light_gray_carpet, cyan_carpet, purple_carpet, blue_carpet, brown_carpet, green_carpet, red_carpet, black_carpet"""

    for n in names.split(", "):
        for c in carpets.split(", "):
            with open(f"{recipies_dir}{os.path.sep}{n}_{c}.json", "w") as f:
                name_user = " ".join(w.capitalize() for w in n.split("_")[:-1]) + " Chair"
                f.write(template.replace("NAME", n).replace("CARPET", c).replace("BLOCK_USER", name_user))


def main():
    func_dir = "../chairs/data/chairs/function"
    recipies_dir = "../chairs/data/chairs/recipe"

    generate_place(func_dir)
    generate_remove(func_dir)
    gen_recipies(recipies_dir)


if __name__ == "__main__":
    main()
