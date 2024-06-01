local util = require("data-util")

-- change stone furnace back to furnace type
-- data.raw["assembling-machine"]["stone-furnace"].type = "furnace"
-- data.raw.furnace["stone-furnace"].type = "furnace"

-- Lock items for game start
util.disable_recipe("iron-stick")
util.disable_recipe("iron-chest")
util.disable_recipe("iron-beam")
util.disable_recipe("inserter-parts")
util.disable_recipe("motor")
util.disable_recipe("iron-gear-wheel")
util.disable_recipe("burner-inserter")
util.disable_recipe("rare-metals")

-- Why cant i disable this items?
-- util.disable_recipe("transport-belt")

-- Science recipe changes
util.change_recipe_ingredients("automation-science-pack",
  {{"automation-core", 1}, {"motor", 1}, {"blank-tech-card", 5}},
  {{"automation-core", 2}, {"motor", 2}, {"blank-tech-card", 5}},
  20,
  30)
util.change_recipe_ingredients("logistic-science-pack",
  {{"sp-gearbox", 5}, {"electric-motor", 1}, {"engine-unit", 1}, {"blank-tech-card", 5}},
  {{"sp-gearbox", 8}, {"electric-motor", 2}, {"engine-unit", 1}, {"blank-tech-card", 5}},
  20,
  30)
util.change_recipe_ingredients("chemical-science-pack",
  {{type = "fluid", name = "sulfuric-acid", amount = 50}, {type = "fluid", name = "petroleum-gas", amount = 30}, {"plastic-bar", 5}, {"sp-graphite", 3}, {"blank-tech-card", 5}},
  {{type = "fluid", name = "sulfuric-acid", amount = 75}, {type = "fluid", name = "petroleum-gas", amount = 50}, {"plastic-bar", 5}, {"sp-graphite", 5}, {"blank-tech-card", 5}},
  20,
  30)

-- Lab inputs
table.insert(data.raw.lab["lab"].inputs, "sp-electronic-science-pack-1")
table.insert(data.raw.lab["lab"].inputs, "sp-geological-science-pack-1")
table.insert(data.raw.lab["lab"].inputs, "sp-material-science-pack-1")

data.raw.lab["biusart-lab"].inputs = data.raw.lab["lab"].inputs
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-automation-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-logistic-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-military-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-chemical-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-electronic-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-geological-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-material-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-astronomical-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "sp-computer-science-pack-2")
table.insert(data.raw.lab["biusart-lab"].inputs, "production-science-pack")
table.insert(data.raw.lab["biusart-lab"].inputs, "utility-science-pack")

data.raw.lab["kr-singularity-lab"].inputs = data.raw.lab["biusart-lab"].inputs
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-automation-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-logistic-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-military-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-chemical-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-electronic-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-geological-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-material-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-astronomical-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-computer-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-production-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "sp-utility-science-pack-3")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "matter-tech-card")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "space-science-pack")  -- Optimization tech card
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "advanced-tech-card")
table.insert(data.raw.lab["kr-singularity-lab"].inputs, "singularity-tech-card")

-- Hide uranium fuel
data.raw.recipe["uranium-fuel-cell"].hidden = true
data.raw.item["uranium-fuel-cell"].flags = {"hidden"}
data.raw.item["used-up-uranium-fuel-cell"].flags = {"hidden"}

-- Hide electronic components recipe
data.raw.recipe["electronic-components"].hidden = true
data.raw.recipe["kr-s-c-electronic-components"].hidden = true

-- Fix petroleum gas icon
util.change_fluid_icon("petroleum-gas", "__Spaghenutti__/graphics/icons/petroleum-gas.png", 64, nil)
