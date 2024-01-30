local util = require("data-util")

-- TODO:
--  - remove:
--    - "rare-metals" (only k2)
--    - "electronic-components" (only k2)
--  - add recipes for:
--    - "sp-plutonium-240"
--    - "sp-plutonium-239"
--    + "sp-tellurium"
--    + "sp-rubber"
--    + "sp-urea"
--    + "sp-phosphoric-acid"
--    + "sp-carbon-fiber"
--    + "sp-monocrystal"
--    ++ "sp-quasicrystal"
--    + "sp-heavy-bearing"
--    + "sp-electrode"
--    + "sp-actuator"
--    + "sp-composites" (add more recipes)
--    + "sp-heating-filament"
--    + "sp-relay"
--    + "sp-insulation-sheet"
--    + "sp-transformer"
--    + "sp-wheel"
--    + "sp-train-boige"
--    + "sp-cubit" (fix recipe?)
--    + "sp-deuterium" (fluid)
--    + "sp-ethylene" (fluid)
--    + "sp-ethylene-dichloride" (fluid)
--    + "sp-sodium-hydroxide" (fluid)
--    + "sp-sodium-carbonate" (fluid)
--    ++ "sp-propane" (fluid)
--    + "sp-propylene" (fluid)
--    + "sp-benzene" (fluid)
--    + "sp-styrene" (fluid)
--    + "sp-vynil-chloride" (fluid)
--    + "sp-methyl-tert-butyl-ether" (fluid)
--    + "sp-control-unit" (similar icon to rocket control unit)
--    + "sp-sensor"
--    - "sp-dynamo" (electric motor and battery)
--    - "sp-nuclear-waste"
--    - "sp-nanowire"
--    - "sp-biochip"
--    - "sp-vortex-core"
--    - "sp-cryptochip"
--    - "sp-nanoflex"
--    - "sp-quantum-logic-gate"
--    - "sp-plasmacore"
--    - "sp-advanced-automation-core"
--    - "sp-flux-capacitor" (device from back to the future)
--    - "sp-gamma-radiation-source"
--    - "sp-fusion-core"
--    - "sp-quantum-foam"
--    - "sp-chronomatter"
--    - "sp-plasma-crystals"
--    - "sp-quantum-crystals"
--    - "sp-dark-matter"
--    - "sp-gravitonium"
--    - "sp-chronalite"
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--  - add uses to:
--    - "sp-antimony"
--    - "sp-calcium"
--    - "sp-liquid-sodium"
--    - "sp-stibnite"
--    - "sp-tellurium"
--    - "sp-zircon"
--    - "sp-platinum"
--    - "sp-palladium"
--    - "sp-tungsten-slab"
--    - "sp-niobium-powder"
--    - "sp-niobium-billet"
--    - "sp-lithium-oxide"
--    - "sp-iridium"
--    - "sp-lanthanum"
--    - "sp-gold"
--    - "sp-fluorspar"
--    - "sp-cobalt-billet"
--    - "sp-chromium-plate"
--    - "sp-lead-slab"
--    - "sp-tantalum-billet"
--    - "sp-zinc-plate"
--    - "sp-zirconia"
--    - "sp-zirconium-rod"
--    - "stone-tablet" (only k2)
--    - "sp-rubber"
--    - "sp-urea"
--    - "sp-methyl-tert-butyl-ether" (fluid)
--    - "sp-phosphoric-acid"
--    - "sp-brass"
--    - "sp-duralumin"
--    - "sp-niobium-steel"
--    - "sp-niobium-tin"
--    - "sp-carbon-fiber"
--    - "sp-carbon-nanotubes"
--    - "sp-graphene"
--    - "sp-diamond"
--    - "sp-titanium-carbide"
--    - "sp-titanium-nitride"
--    - "sp-monocrystal"
--    - "sp-quasicrystal"
--    - "sp-ceramics"
--    - "sp-crucible"
--    - "sp-filter"
--    - "sp-glass-fiber"
--    - "sp-heat-resistant-tile"
--    - "sp-heavy-bearing"
--    - "sp-kevlar"
--    - "sp-magnet"
--    - "sp-neodymium-magnet"
--    - "sp-sinter-filter"
--    - "sp-spring"
--    - "sp-advanced-compute-unit"
--    - "sp-antenna-chip"
--    - "sp-capacitor"
--    - "sp-diode"
--    - "sp-cmos"
--    - "sp-coil"
--    - "sp-compute-unit"
--    - "sp-electrode"
--    - "sp-infra-red-filter"
--    - "sp-integrated-circuit"
--    - "sp-laser"
--    - "sp-lens"
--    - "sp-light-emitting-diode"
--    - "sp-memory-chip"
--    - "sp-lens"
--    - "sp-mirror"
--    - "sp-processor"
--    - "sp-silver-solder"
--    - "sp-solder"
--    - "sp-resistor"
--    - "sp-transistor"
--    - "sp-vacuum-tube"
--    - "sp-actuator"
--    - "sp-catalyst"
--    - "sp-composites"
--    - "sp-electromagnet"
--    - "sp-gyro"
--    - "sp-heating-filament"
--    - "sp-heatsink"
--    - "sp-high-pressure-tank"
--    - "sp-plate-heat-exchanger"
--    - "sp-transformer"
--    - "sp-wheel"
--    - "sp-cryostat"
--    - "sp-quantum-data-plane"
--    - "sp-spark-plug"
--    - "sp-superconductor"
--    - "sp-deuterium" (fluid)
--    - "sp-ethylene" (fluid)
--    - "sp-ethylene-dichloride" (fluid)
--    - "sp-sodium-hydroxide" (fluid)
--    - "sp-sodium-carbonate" (fluid)
--    - "sp-propane" (fluid)
--    - "sp-propylene" (fluid)
--    - "sp-benzene" (fluid)
--    - "sp-styrene" (fluid)
--    - "sp-vynil-chloride" (fluid)
--    - "sp-relay"
--    - "sp-insulation-sheet"
--    - "sp-train-boige"
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
--    - 
data:extend({
  {
    type = "recipe",
    name = "sp-alumina",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-ore", amount = 3}
    },
    results = {
      {type = "item", name = "sp-alumina", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-aluminum-sheet",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-alumina", amount = 3}
    },
    results = {
      {type = "item", name = "sp-aluminum-sheet", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-aluminum-frame",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-sheet", amount = 2}
    },
    results = {
      {type = "item", name = "sp-aluminum-frame", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-aluminum-cable",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-sheet", amount = 1}
    },
    results = {
      {type = "item", name = "sp-aluminum-cable", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-carbon-nanotubes",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 10,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-graphite", amount = 1}
    },
    results = {
      {type = "item", name = "sp-carbon-nanotubes", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-graphene",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-graphite", amount = 1}
    },
    results = {
      {type = "item", name = "sp-graphene", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-calcium-carbonate",  -- #ForRegEx# - recipe
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/calcium-carbonate.png", 64, nil,
                                   "__Spaghenutti__/graphics/icons/fluorspar.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-limestone", amount = 2},
    },
    results = {
      {type = "item", name = "sp-calcium-carbonate", probability = 0.8, amount = 3},
      {type = "item", name = "sp-fluorspar", probability = 0.2, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-calcium-and-fluorine",  -- #ForRegEx# - recipe
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/fluorine.png", 64, nil,
                                   "__Spaghenutti__/graphics/icons/calcium.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-fluorspar", amount = 1},
    },
    results = {
      {type = "item", name = "sp-fluorine", amount = 2},
      {type = "item", name = "sp-calcium", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-salt",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      {type = "fluid", name = "water", amount = 50},
    },
    results = {
      {type = "item", name = "sp-salt", amount = 2}
    },
    crafting_machine_tint = {
      primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
      secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
      tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
      quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
    }
  },
  {
    type = "recipe",
    name = "sp-liquid-sodium",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients = {
      {type = "item", name = "sp-sodium", amount = 2},
    },
    results = {
      {type = "fluid", name = "sp-liquid-sodium", amount = 40}
    },
    crafting_machine_tint = {
      primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
      secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
      tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
      quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
    }
  },
  {
    type = "recipe",
    name = "sp-magnesium-chloride",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-magnesium-ore", amount = 3}
    },
    results = {
      {type = "item", name = "sp-magnesium-chloride", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-chloride",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-ore", amount = 3},
    },
    results = {
      {type = "item", name = "sp-titanium-chloride", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-sponge",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/titanium-sponge.png",
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    hide_from_player_crafting = true,
    ingredients = {
      {type = "item", name = "sp-titanium-chloride", amount = 3},
      {type = "item", name = "sp-sodium", amount = 2},
    },
    results = {
      {type = "item", name = "sp-titanium-sponge", amount = 3},
      {type = "item", name = "sp-salt", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-ingot",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-sponge", amount = 2},
    },
    results = {
      {type = "item", name = "sp-titanium-ingot", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-plate",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-ingot", amount = 2},
    },
    results = {
      {type = "item", name = "sp-titanium-plate", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-frame",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-plate", amount = 2},
    },
    results = {
      {type = "item", name = "sp-titanium-frame", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-carbide",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-ingot", amount = 1},
      {type = "item", name = "sp-graphite", amount = 3},
    },
    results = {
      {type = "item", name = "sp-titanium-carbide", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-tin-ingot",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tinstone", amount = 4},
    },
    results = {
      {type = "item", name = "sp-tin-ingot", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-tin-and-lead",  -- #ForRegEx# - recipe
    -- icon = "__Spaghenutti__/graphics/icons/tin-and-lead.png",
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/tin-ingot.png", 64, nil, 
                                   "__Spaghenutti__/graphics/icons/lead-slab.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-material",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    hide_from_player_crafting = true,
    ingredients = {
      {type = "item", name = "sp-tinstone", amount = 3},
    },
    results = {
      {type = "item", name = "sp-tin-ingot", probability = 0.75, amount = 2},
      {type = "item", name = "sp-lead-slab", probability = 0.25, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-bronze-rod",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tin-ingot", amount = 2},
      {type = "item", name = "copper-plate", amount = 3},
    },
    results = {
      {type = "item", name = "sp-bronze-rod", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-brass",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zinc-plate", amount = 2},
      {type = "item", name = "copper-plate", amount = 3},
    },
    results = {
      {type = "item", name = "sp-brass", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-tellurium",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sulfur", amount = 20},
    },
    results = {
      {type = "item", name = "sp-zircon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-zircon",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 10,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zirconium-ore", amount = 12},
    },
    results = {
      {type = "item", name = "sp-zircon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-zirconium-rod",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zirconium-ore", amount = 2}
    },
    results = {
      {type = "item", name = "sp-zirconium-rod", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-zinc-sulfate",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zinc-ore", amount = 2}
    },
    results = {
      {type = "item", name = "sp-zinc-sulfate", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-zinc-plate",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/zinc-plate.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zinc-sulfate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-zinc-plate", amount = 1},
      {type = "item", name = "sulfur", probability=0.05, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-niobium-billet",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-aqueous-niobium", amount = 50}
    },
    results = {
      {type = "item", name = "sp-niobium-billet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-tantalum-billet",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 2.8,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-aqueous-tantalum", amount = 50}
    },
    results = {
      {type = "item", name = "sp-tantalum-billet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-ammonium-paratungstate",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-ore", amount = 2}
    },
    results = {
      {type = "item", name = "sp-ammonium-paratungstate", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-tungsten-powder",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-ammonium-paratungstate", amount = 2},
      {type = "item", name = "sp-sodium-carbonate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-tungsten-powder", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "sp-tungsten-slab",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-powder", amount = 6}
    },
    results = {
      {type = "item", name = "sp-tungsten-slab", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-tungsten-carbide",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-powder", amount = 4},
      {type = "item", name = "sp-graphite", amount = 3}
    },
    results = {
      {type = "item", name = "sp-tungsten-carbide", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-chromium-plate",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/chromium-plate.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-chromite", amount = 3}
    },
    results = {
      {type = "item", name = "sp-chromium-plate", amount = 2},
      {type = "item", name = "iron-plate", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-cobalt-sulfate",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/cobalt-sulfate.png",
    icon_size = 256,
    scale = 0.25,
    category = "crafting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 0.4,  -- time in seconds to make the item
    hide_from_player_crafting = true,
    ingredients = {
      {type = "item", name = "sp-nickel-ore", amount = 1}
    },
    results = {
      {type = "item", name = "sp-cobalt-sulfate", probability = 0.2, amount = 1},
      {type = "item", name = "iron-ore", probability = 0.5, amount = 1},
      {type = "item", name = "sp-sand", probability = 0.3, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-cobalt-billet",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-cobalt-sulfate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-cobalt-billet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-nickel-ingot",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/nickel-ingot.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nickel-ore", amount = 2}
    },
    results = {
      {type = "item", name = "sp-nickel-ingot", amount = 1},
      {type = "item", name = "iron-plate", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-cobalt-and-nickel",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/cobalt-billet.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nickel-ore", amount = 1}
    },
    results = {
      {type = "item", name = "sp-nickel-ingot", probability = 0.4, amount = 1},
      {type = "item", name = "iron-plate", probability = 0.35, amount = 1},
      {type = "item", name = "sp-cobalt-billet", probability = 0.25, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-stibnite",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-limestone", amount = 4}
    },
    results = {
      {type = "item", name = "sp-stibnite", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-antimony",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/antimony.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-stibnite", amount = 1}
    },
    results = {
      {type = "item", name = "sp-antimony", amount = 1},
      {type = "item", name = "sulfur", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-silver-palladium",  -- #ForRegEx# - recipe
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/silver.png", 64, nil,
                                  "__Spaghenutti__/graphics/icons/palladium.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    hide_from_player_crafting = true,
    ingredients = {
      {type = "item", name = "copper-ore", amount = 1},
    },
    results = {
      {type = "item", name = "copper-plate", probability = 0.978, amount = 1},
      {type = "item", name = "sp-silver", probability = 0.017, amount = 1},
      {type = "item", name = "sp-palladium", probability = 0.005, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-palladium",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/palladium.png",
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    hide_from_player_crafting = true,
    ingredients = {
      {type = "item", name = "sp-nickel-ore", amount = 2},
    },
    results = {
      {type = "item", name = "sp-nickel-ingot", probability = 0.485, amount = 1},
      {type = "item", name = "iron-plate", probability = 0.485, amount = 1},
      {type = "item", name = "sp-palladium", probability = 0.03, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-stainless-steel",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "steel-plate", amount = 8},
      {type = "item", name = "sp-nickel-ingot", amount = 1},
      {type = "item", name = "sp-chromium-plate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-stainless-steel", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "sp-invar",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 3},
      {type = "item", name = "sp-nickel-ingot", amount = 2}
    },
    results = {
      {type = "item", name = "sp-invar", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-stainless-steel-gear-wheel",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-stainless-steel", amount = 2}
    },
    results = {
      {type = "item", name = "sp-stainless-steel-gear-wheel", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-duralumin",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 16,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-sheet", amount = 8},
      {type = "item", name = "copper-plate", amount = 2},
      {type = "item", name = "sp-zirconium-rod", amount = 1}
    },
    results = {
      {type = "item", name = "sp-duralumin", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "sp-aluminum-brass",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 16,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-sheet", amount = 7},
      {type = "item", name = "sp-zinc-plate", amount = 2},
      {type = "item", name = "sp-magnesium-slab", amount = 1},
      {type = "item", name = "copper-plate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-aluminum-brass", amount = 12}
    }
  },
  {
    type = "recipe",
    name = "sp-inconel",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 16,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nickel-ingot", amount = 7},
      {type = "item", name = "sp-chromium-plate", amount = 2},
      {type = "item", name = "iron-plate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-inconel", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "sp-TiAlSn",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 14,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-plate", amount = 8},
      {type = "item", name = "sp-aluminum-sheet", amount = 2},
      {type = "item", name = "sp-tin-ingot", amount = 1}
    },
    results = {
      {type = "item", name = "sp-TiAlSn", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "sp-TiNb",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-plate", amount = 5},
      {type = "item", name = "sp-niobium-billet", amount = 4}
    },
    results = {
      {type = "item", name = "sp-TiNb", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-nitenol",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-ingot", amount = 3},
      {type = "item", name = "sp-nickel-ingot", amount = 2}
    },
    results = {
      {type = "item", name = "sp-nitenol", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-niobium-steel",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 24,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "steel-plate", amount = 20},
      {type = "item", name = "sp-niobium-billet", amount = 1}
    },
    results = {
      {type = "item", name = "sp-niobium-steel", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-niobium-tin",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tin-ingot", amount = 1},
      {type = "item", name = "sp-niobium-billet", amount = 2}
    },
    results = {
      {type = "item", name = "sp-niobium-tin", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-copper-tube",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 0.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 1}
    },
    results = {
      {type = "item", name = "sp-copper-tube", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-pressure-tube",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-stainless-steel", amount = 1},
      {type = "item", name = "sp-inconel", amount = 1}
    },
    results = {
      {type = "item", name = "sp-pressure-tube", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-spring",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-stick", amount = 2}
    },
    results = {
      {type = "item", name = "sp-spring", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-connecting-rod",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "steel-plate", amount = 2},
      {type = "item", name = "sp-bronze-rod", amount = 2}
    },
    results = {
      {type = "item", name = "sp-connecting-rod", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-bolts",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 2}
    },
    results = {
      {type = "item", name = "sp-bolts", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-ball-bearing",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-bronze-rod", amount = 3},
      {type = "item", name = "sp-chromium-plate", amount = 2},
      {type = "fluid", name = "lubricant", amount = 5}
    },
    results = {
      {type = "item", name = "sp-ball-bearing", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-infrared-filter",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 1.6,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-aqueous-tantalum", amount = 10},
      {type = "item", name = "sp-silica", amount = 1}
    },
    results = {
      {type = "item", name = "sp-infrared-filter", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-glass-fiber",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-silica", amount = 4},
      {type = "item", name = "sp-aluminum-sheet", amount = 2},
      {type = "item", name = "sp-sodium", amount = 1}
    },
    results = {
      {type = "item", name = "sp-glass-fiber", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-resistor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-graphite", amount = 1},
      {type = "item", name = "copper-plate", amount = 2}
    },
    results = {
      {type = "item", name = "sp-resistor", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-capacitor-from-aluminum",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/capacitor.png", 64,
                                    "__Spaghenutti__/graphics/icons/aluminum-sheet.png", 64),
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-aluminum-sheet", amount = 2}
    },
    results = {
      {type = "item", name = "sp-capacitor", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-capacitor-from-niobium",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/capacitor.png", 64,
                                    "__Spaghenutti__/graphics/icons/niobium-billet.png", 64),
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-niobium-billet", amount = 2}
    },
    results = {
      {type = "item", name = "sp-capacitor", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-capacitor-from-tantalum",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/capacitor.png", 64,
                                    "__Spaghenutti__/graphics/icons/tantalum-billet.png", 64),
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-tantalum-billet", amount = 1}
    },
    results = {
      {type = "item", name = "sp-capacitor", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-coil",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-cable", amount = 3},
      {type = "item", name = "sp-nickel-ingot", amount = 1}
    },
    results = {
      {type = "item", name = "sp-coil", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-solder",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-lead-slab", amount = 1},
      {type = "item", name = "sp-tin-ingot", amount = 3}
    },
    results = {
      {type = "item", name = "sp-solder", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "sp-silver-solder",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 16,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-silver", amount = 1},
      {type = "item", name = "sp-tin-ingot", amount = 8}
    },
    results = {
      {type = "item", name = "sp-silver-solder", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "sp-empty-circuit-board",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "sp-glass-fiber", amount = 1},
      {type = "item", name = "sp-solder", amount = 2}
    },
    results = {
      {type = "item", name = "sp-empty-circuit-board", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-circuit-board",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-empty-circuit-board", amount = 1},
      {type = "item", name = "sp-resistor", amount = 2},
      {type = "item", name = "sp-capacitor", amount = 2},
      {type = "item", name = "sp-diode", amount = 1},
      {type = "item", name = "sp-transistor", amount = 1}
    },
    results = {
      {type = "item", name = "sp-circuit-board", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-memory-chip",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "sp-high-purity-silicon", amount = 1},
      {type = "item", name = "copper-cable", amount = 1},
      {type = "item", name = "sp-cerium", amount = 1},
      {type = "item", name = "sp-phosphorus", amount = 1},
      {type = "item", name = "sp-silver-solder", amount = 1}
    },
    results = {
      {type = "item", name = "sp-memory-chip", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-antenna-chip",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "sp-high-purity-silicon", amount = 2},
      {type = "item", name = "copper-cable", amount = 1},
      {type = "item", name = "sp-platinum", amount = 1},
      {type = "item", name = "sp-silver-solder", amount = 1}
    },
    results = {
      {type = "item", name = "sp-antenna-chip", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-processor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "sp-high-purity-silicon", amount = 4},
      {type = "item", name = "sp-phosphorus", amount = 2},
      {type = "item", name = "sp-palladium", amount = 1},
      {type = "item", name = "sp-silver-solder", amount = 1}
    },
    results = {
      {type = "item", name = "sp-processor", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-cmos",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "sp-high-purity-silicon", amount = 2},
      {type = "item", name = "sp-phosphorus", amount = 2},
      {type = "item", name = "sp-iridium", amount = 1},
      {type = "item", name = "sp-aluminum-sheet", amount = 1},
      {type = "item", name = "sp-silver-solder", amount = 1}
    },
    results = {
      {type = "item", name = "sp-cmos", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-compute-unit",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-circuit-board", amount = 1},
      {type = "item", name = "sp-memory-chip", amount = 2},
      {type = "item", name = "sp-processor", amount = 1},
      {type = "item", name = "sp-integrated-circuit", amount = 4},
      {type = "item", name = "sp-coil", amount = 2},
      {type = "item", name = "sp-heatsink", amount = 1}
    },
    results = {
      {type = "item", name = "sp-compute-unit", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-heat-resistant-tile",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zirconia", amount = 2},
      {type = "item", name = "sp-silica", amount = 1},
      {type = "item", name = "sp-graphite", amount = 3}
    },
    results = {
      {type = "item", name = "sp-heat-resistant-tile", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-fabric",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 2}
    },
    results = {
      {type = "item", name = "sp-fabric", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-magnet",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 3},
      {type = "item", name = "iron-ore", amount = 1}
    },
    results = {
      {type = "item", name = "sp-magnet", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-neodymium-magnet",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 7},
      {type = "item", name = "sp-neodymium", amount = 1}
    },
    results = {
      {type = "item", name = "sp-neodymium-magnet", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-cement",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-calcium-carbonate", amount = 5},
      {type = "item", name = "sp-alumina", amount = 1},
      {type = "item", name = "iron-ore", amount = 2},
      {type = "fluid", name = "water", amount = 100}
    },
    results = {
      {type = "item", name = "sp-cement", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-diamond",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-graphite", amount = 12}
    },
    results = {
      {type = "item", name = "sp-diamond", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-ceramics",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zirconia", amount = 3},
      {type = "item", name = "sp-silica", amount = 1}
    },
    results = {
      {type = "item", name = "sp-ceramics", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-crucible",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-calcium-carbonate", amount = 2},
      {type = "item", name = "sp-graphite", amount = 3}
    },
    results = {
      {type = "item", name = "sp-crucible", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-flange",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-bolts", amount = 2},
      {type = "item", name = "sp-stainless-steel", amount = 1}
    },
    results = {
      {type = "item", name = "sp-flange", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-filter",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 2},
      {type = "item", name = "sp-stainless-steel", amount = 1}
    },
    results = {
      {type = "item", name = "sp-filter", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-sinter-filter",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-bronze-rod", amount = 3},
      {type = "item", name = "sp-stainless-steel", amount = 2}
    },
    results = {
      {type = "item", name = "sp-sinter-filter", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-coolant",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-fluorine", amount = 1},
      {type = "item", name = "sp-graphite", amount = 1},
      {type = "fluid", name = "water", amount = 50}
    },
    results = {
      {type = "fluid", name = "sp-coolant", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "sp-electromagnet",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "iron-stick", amount = 1},
      {type = "item", name = "copper-cable", amount = 3}
    },
    results = {
      {type = "item", name = "sp-electromagnet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-cryostat",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "sp-titanium-frame", amount = 1},
      {type = "item", name = "sp-ceramics", amount = 3},
      {type = "fluid", name = "sp-liquid-nitrogen", amount = 40}
    },
    results = {
      {type = "item", name = "sp-cryostat", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-plate-heat-exchanger",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-bolts", amount = 1},
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-aluminum-sheet", amount = 3}
    },
    results = {
      {type = "item", name = "sp-plate-heat-exchanger", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-spark-plug",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-inconel", amount = 2},
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-tungsten-carbide", amount = 1}
    },
    results = {
      {type = "item", name = "sp-spark-plug", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-valve",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-bronze-rod", amount = 2},
      {type = "item", name = "sp-bolts", amount = 1}
    },
    results = {
      {type = "item", name = "sp-valve", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-gyro",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-magnet", amount = 2},
      {type = "item", name = "sp-silica", amount = 1},
      {type = "item", name = "copper-cable", amount = 1}
    },
    results = {
      {type = "item", name = "sp-gyro", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-pressure-tank",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-stainless-steel", amount = 4},
      {type = "item", name = "sp-flange", amount = 2}
    },
    results = {
      {type = "item", name = "sp-pressure-tank", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-high-pressure-tank",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-brass", amount = 2},
      {type = "item", name = "sp-TiNb", amount = 1},
      {type = "item", name = "sp-carbon-fiber", amount = 6}
    },
    results = {
      {type = "item", name = "sp-high-pressure-tank", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-phosphorus",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-limestone", amount = 2},
      {type = "fluid", name = "sulfuric-acid", amount = 2}
    },
    results = {
      {type = "item", name = "sp-phosphorus", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-lithium-oxide",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/lithium-oxide.png",
    icon_size = 64,
    mip_maps = 4,
    category = "smelting",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-spodumene", amount = 4}
    },
    results = {
      {type = "item", name = "sp-lithium-oxide", amount = 1},
      {type = "item", name = "sp-alumina", amount = 1},
      {type = "item", name = "sp-silica", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-turbine-blade-from-stainless-steel",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/turbine-blade.png", 64,
                                    "__Spaghenutti__/graphics/icons/stainless-steel.png", 64),
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-stainless-steel", amount = 5}
    },
    results = {
      {type = "item", name = "sp-turbine-blade", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-turbine-blade-from-TiAlSn",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/turbine-blade.png", 64,
                                    "__Spaghenutti__/graphics/icons/TiAlSn.png", 64),
    category = "crafting",
    enabled = false,
    energy_required = 4.8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-TiAlSn", amount = 3}
    },
    results = {
      {type = "item", name = "sp-turbine-blade", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-turbine-rotor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-TiAlSn", amount = 4},
      {type = "item", name = "sp-titanium-carbide", amount = 2},
      {type = "item", name = "sp-titanium-nitride", amount = 1},
      {type = "item", name = "sp-tungsten-slab", amount = 5},
      {type = "item", name = "sp-ceramics", amount = 5},
      {type = "item", name = "sp-turbine-blade", amount = 24}
    },
    results = {
      {type = "item", name = "sp-turbine-rotor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-turbine-stator",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 26,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-TiAlSn", amount = 4},
      {type = "item", name = "sp-titanium-nitride", amount = 2},
      {type = "item", name = "sp-titanium-frame", amount = 20},
      {type = "item", name = "sp-flange", amount = 5},
      {type = "item", name = "sp-turbine-blade", amount = 24},
    },
    results = {
      {type = "item", name = "sp-turbine-stator", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-turbopump",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4.8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-turbine-blade", amount = 10},
      {type = "item", name = "sp-ceramics", amount = 2},
      {type = "item", name = "sp-stainless-steel", amount = 3},
      {type = "item", name = "sp-tungsten-slab", amount = 3},
      {type = "item", name = "sp-bolts", amount = 8}
    },
    results = {
      {type = "item", name = "sp-turbopump", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-nozzle",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 2},
      {type = "item", name = "sp-TiAlSn", amount = 2},
      {type = "item", name = "sp-tungsten-slab", amount = 6},
      {type = "item", name = "sp-tungsten-carbide", amount = 2},
      {type = "item", name = "sp-bolts", amount = 4}
    },
    results = {
      {type = "item", name = "sp-nozzle", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-fuel-injector",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-carbide", amount = 1},
      {type = "item", name = "sp-inconel", amount = 1}
    },
    results = {
      {type = "item", name = "sp-fuel-injector", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-cybernetics",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-frame", amount = 2},
      {type = "item", name = "sp-actuator", amount = 2},
      {type = "item", name = "sp-advanced-compute-unit", amount = 1},
    },
    results = {
      {type = "item", name = "sp-cybernetics", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-combustion-chamber",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 24,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-fuel-injector", amount = 20},
      {type = "item", name = "sp-tungsten-slab", amount = 2},
      {type = "item", name = "sp-inconel", amount = 3},
      {type = "item", name = "sp-bolts", amount = 4}
    },
    results = {
      {type = "item", name = "sp-combustion-chamber", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-rocket-engine",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-turbopump", amount = 2},
      {type = "item", name = "sp-nozzle", amount = 1},
      {type = "item", name = "sp-combustion-chamber", amount = 1},
      {type = "item", name = "sp-bolts", amount = 6}
    },
    results = {
      {type = "item", name = "sp-rocket-engine", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-solid-rocket-motor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-frame", amount = 2},
      {type = "item", name = "solid-fuel", amount = 10},
      {type = "item", name = "sp-phosphorus", amount = 1}
    },
    results = {
      {type = "item", name = "sp-solid-rocket-motor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-control-rod",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4.8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-TiAlSn", amount = 3},
      {type = "item", name = "sp-zirconium-rod", amount = 1}
    },
    results = {
      {type = "item", name = "sp-control-rod", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-empty-fuel-rod",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-graphite", amount = 2},
      {type = "item", name = "sp-tungsten-slab", amount = 1},
      {type = "item", name = "sp-zirconium-rod", amount = 2},
      {type = "item", name = "sp-cerium", amount = 1},
      {type = "item", name = "sp-TiNb", amount = 8},
    },
    results = {
      {type = "item", name = "sp-empty-fuel-rod", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-plutonium-239-fuel-rod",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-plutonium-239", amount = 4},
      {type = "item", name = "sp-empty-fuel-rod", amount = 1}
    },
    results = {
      {type = "item", name = "sp-plutonium-fuel-rod", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-plutonium-240-fuel-rod",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-plutonium-239", amount = 1},
      {type = "item", name = "sp-plutonium-240", amount = 1},
      {type = "item", name = "sp-empty-fuel-rod", amount = 1}
    },
    results = {
      {type = "item", name = "sp-plutonium-fuel-rod", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-reactor-core",  -- #ForRegEx# - recipe
    category = "advanced-crafting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-control-rod", amount = 50},
      {type = "item", name = "sp-pressure-tube", amount = 10},
      {type = "item", name = "sp-plate-heat-exchanger", amount = 4},
      {type = "item", name = "sp-valve", amount = 16},
      {type = "item", name = "sp-flange", amount = 6},
      {type = "item", name = "sp-pressure-tank", amount = 3}
    },
    results = {
      {type = "item", name = "sp-reactor-core", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-heatsink",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-copper-tube", amount = 2},
      {type = "item", name = "sp-aluminum-sheet", amount = 2},
    },
    results = {
      {type = "item", name = "sp-heatsink", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-advanced-compute-unit",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-circuit-board", amount = 4},
      {type = "item", name = "sp-aluminum-frame", amount = 2},
      {type = "item", name = "sp-memory-chip", amount = 2},
      {type = "item", name = "sp-processor", amount = 1},
      {type = "item", name = "sp-integrated-circuit", amount = 5}
    },
    results = {
      {type = "item", name = "sp-advanced-compute-unit", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-quantum-data-plane",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-cubit", amount = 1000},
      {type = "item", name = "copper-cable", amount = 20},
      {type = "item", name = "sp-aluminum-frame", amount = 1},
      {type = "item", name = "sp-gold", amount = 3}
    },
    results = {
      {type = "item", name = "sp-quantum-data-plane", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-catalyst-from-calcium-magnesium",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-magnesium-slab", amount = 3},
      {type = "item", name = "sp-calcium", amount = 3}
    },
    results = {
      {type = "item", name = "sp-catalyst", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-catalyst-from-liquid-sodium",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-liquid-sodium", amount = 20},
      {type = "fluid", name = "sp-propylene", amount = 40}
    },
    results = {
      {type = "item", name = "sp-catalyst", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-mirror-from-silver",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-silver", amount = 1},
      {type = "item", name = "sp-aluminum-sheet", amount = 1}
    },
    results = {
      {type = "item", name = "sp-mirror", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-phosphoric-acid",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-phosphorus", amount = 2},
      {type = "fluid", name = "water", amount = 200},
    },
    results = {
      {type = "item", name = "sp-phosphoric-acid", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-rubber",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sulfur", amount = 3},
      {type = "fluid", name = "sp-styrene", amount = 50},
      {type = "item", name = "sp-phosphoric-acid", amount = 1},
    },
    results = {
      {type = "item", name = "sp-rubber", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-monocrystal",  -- #ForRegEx# - recipe
    category = "advanced-smelting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-plate", amount = 6},
      {type = "item", name = "sp-lanthanum", amount = 1},
      {type = "item", name = "sp-iridium", amount = 1},
    },
    results = {
      {type = "item", name = "sp-monocrystal", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-quasicrystal-1",  -- #ForRegEx# - recipe
    category = "advanced-smelting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 4},
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "sp-aluminum-sheet", amount = 2},
      {type = "item", name = "sp-chromium-plate", amount = 5},

    },
    results = {
      {type = "item", name = "sp-quasicrystal", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-quasicrystal-2",  -- #ForRegEx# - recipe
    category = "advanced-smelting",
    enabled = false,
    energy_required = 40,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nickel-ingot", amount = 3},
      {type = "item", name = "sp-aluminum-sheet", amount = 5},
      {type = "item", name = "sp-palladium", amount = 1},
      {type = "item", name = "sp-niobium-billet", amount = 1}
    },
    results = {
      {type = "item", name = "sp-quasicrystal", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-heavy-bearing",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-niobium-steel", amount = 5},
      {type = "item", name = "sp-aluminum-brass", amount = 3},
      {type = "item", name = "sp-titanium-nitride", amount = 1},
      {type = "fluid", name = "lubricant", amount = 20},
    },
    results = {
      {type = "item", name = "sp-heavy-bearing", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-electrode-from-iridium",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 14,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-cable", amount = 6},
      {type = "item", name = "steel-plate", amount = 8},
      {type = "item", name = "sp-ceramics", amount = 4},
      {type = "item", name = "sp-iridium", amount = 1},
    },
    results = {
      {type = "item", name = "sp-electrode", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "sp-electrode-from-platinum",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "steel-plate", amount = 4},
      {type = "item", name = "sp-ceramics", amount = 2},
      {type = "item", name = "sp-platinum", amount = 1},
    },
    results = {
      {type = "item", name = "sp-electrode", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-actuator",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-laser", amount = 1},
      {type = "item", name = "sp-bolts", amount = 4},
      {type = "item", name = "sp-stainless-steel", amount = 3},
      {type = "item", name = "sp-stainless-steel-gear-wheel", amount = 6},
      {type = "item", name = "advanced-circuit", amount = 2},
      {type = "fluid", name = "lubricant", amount = 20},
    },
    results = {
      {type = "item", name = "sp-actuator", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-heating-filament",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-slab", amount = 3},
      {type = "item", name = "steel-plate", amount = 2},
      {type = "item", name = "sp-ceramics", amount = 1},
      {type = "item", name = "sp-graphite", amount = 3}
    },
    results = {
      {type = "item", name = "sp-heating-filament", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-relay",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 1.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "copper-plate", amount = 1},
      {type = "item", name = "sp-coil", amount = 1},
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "item", name = "iron-stick", amount = 1}
    },
    results = {
      {type = "item", name = "sp-relay", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-insulation-sheet",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 1},
      {type = "fluid", name = "sp-styrene", amount = 10}
    },
    results = {
      {type = "item", name = "sp-insulation-sheet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-transformer",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-relay", amount = 4},
      {type = "item", name = "sp-heatsink", amount = 2},
      {type = "item", name = "sp-insulation-sheet", amount = 2},
      {type = "item", name = "copper-cable", amount = 10},
      {type = "item", name = "steel-plate", amount = 4}
    },
    results = {
      {type = "item", name = "sp-transformer", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-wheel",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "steel-plate", amount = 3},
    },
    results = {
      {type = "item", name = "sp-wheel", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-train-boige",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-wheel", amount = 4},
      {type = "item", name = "sp-bolts", amount = 8},
      {type = "item", name = "sp-spring", amount = 12},
      {type = "item", name = "steel-plate", amount = 4},
    },
    results = {
      {type = "item", name = "sp-train-boige", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-propane",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "petroleum-gas", amount = 100},
      {type = "item", name = "sp-sinter-filter", amount = 2},
      {type = "item", name = "coal", amount = 6},
    },
    results = {
      {type = "fluid", name = "sp-propane", amount = 40}
    }
  },
  {
    type = "recipe",
    name = "sp-ethylene-and-propene",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "petroleum-gas", amount = 100},
      {type = "item", name = "sp-sinter-filter", amount = 1},
    },
    results = {
      {type = "fluid", name = "sp-ethylene", amount = 40},
      {type = "fluid", name = "sp-propane", amount = 50},
    }
  },
  {
    type = "recipe",
    name = "sp-propylene",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-propane", amount = 100},
      {type = "item", name = "sp-catalyst", amount = 1},
    },
    results = {
      {type = "fluid", name = "sp-propylene", amount = 100},
    }
  },
  {
    type = "recipe",
    name = "sp-sodium-hydroxide-from-liquid-sodium",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-liquid-sodium", amount = 35},
      {type = "fluid", name = "water", amount = 100},
    },
    results = {
      {type = "fluid", name = "sp-sodium-hydroxide", amount = 20},
    }
  },
  {
    type = "recipe",
    name = "sp-sodium-carbonate",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-liquid-sodium", amount = 60},
      {type = "fluid", name = "sp-oxygen", amount = 100},
      {type = "item", name = "sp-graphie", amount = 3},
    },
    results = {
      {type = "fluid", name = "sp-sodium-hydroxide", amount = 60},
    }
  },
  {
    type = "recipe",
    name = "sp-benzene",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 4.4,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "petroleum-gas", amount = 100},
      {type = "item", name = "sp-sinter-filter", amount = 1},
      {type = "item", name = "coal", amount = 10},
    },
    results = {
      {type = "fluid", name = "sp-benzene", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "sp-styrene",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-benzene", amount = 100},
      {type = "fluid", name = "water", amount = 1},
      {type = "item", name = "iron-plate", amount = 2},
    },
    results = {
      {type = "fluid", name = "sp-styrene", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "sp-control-unit",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-glass-fiber", amount = 1},
      {type = "item", name = "sp-compute-unit", amount = 2},
      {type = "item", name = "sp-sensor", amount = 2},
      {type = "item", name = "sp-relay", amount = 6},
    },
    results = {
      {type = "item", name = "sp-control-unit", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-sensor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "plastic-bar", amount = 2},
      {type = "item", name = "sp-lens", amount = 5},
      {type = "item", name = "sp-cmos", amount = 1},
      {type = "item", name = "sp-mirror", amount = 2},
    },
    results = {
      {type = "item", name = "sp-sensor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-dynamo",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "electric-motor", amount = 1},
      {type = "item", name = "sp-ball-bearing", amount = 4},
      {type = "item", name = "battery", amount = 4},
      {type = "item", name = "sp-bolts", amount = 2},
      {type = "item", name = "iron-plate", amount = 2},
    },
    results = {
      {type = "item", name = "sp-dynamo", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-compressor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "electric-motor", amount = 1},
      {type = "item", name = "sp-ball-bearing", amount = 4},
      {type = "item", name = "sp-bolts", amount = 2},
      {type = "item", name = "steel-plate", amount = 6},
    },
    results = {
      {type = "item", name = "sp-dynamo", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-rukite-powder",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/rukite-powder.png",
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-rukite", amount = 2}
    },
    results = {
      {type = "item", name = "sp-rukite-powder", probability = 0.3, amount = 2},
      {type = "item", name = "coal", probability = 0.3, amount = 2},
      {type = "item", name = "sp-tungsten-ore", probability = 0.3, amount = 2},
      {type = "item", name = "sp-titanium-ore", probability = 0.1, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-rukite-bar",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 3.6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-powder", amount = 1},
      {type = "item", name = "sp-graphite", amount = 1},
      {type = "item", name = "sp-rukite-powder", amount = 4}
    },
    results = {
      {type = "item", name = "sp-rukite-bar", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-chronomatter",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-monocrystal", amount = 1},
      {type = "item", name = "sp-rukite-powder", amount = 4},
      {type = "item", name = "sp-antimony", amount = 4}
    },
    results = {
      {type = "fluid", name = "sp-chronomatter", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-gamma-radiation-source",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-iridium", amount = 1},
      {type = "item", name = "sp-rukite-bar", amount = 4},
      {type = "item", name = "sp-plutonium-240", amount = 1},
      {type = "item", name = "sp-niobium-tin", amount = 3}
    },
    results = {
      {type = "item", name = "sp-gamma-radiation-source", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-chronalyte",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "sp-chronomatter", amount = 1},
      {type = "item", name = "sp-inconel", amount = 3},
      {type = "item", name = "sp-niobium-tin", amount = 3}
    },
    results = {
      {type = "item", name = "sp-chronalyte", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-yemnuth-shard",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/yemnuth-shard.png",
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-yemnuth", amount = 4}
    },
    results = {
      {type = "item", name = "sp-yemnuth-shard", probability = 0.5, amount = 3},
      {type = "item", name = "sp-plutonium-240", probability = 0.02, amount = 3},
      {type = "item", name = "uranium-235", probability = 0.02, amount = 3},
      {type = "item", name = "sp-yittrium", probability = 0.07, amount = 3},
      {type = "item", name = "sp-lanthanum", probability = 0.1, amount = 3},
      {type = "item", name = "sp-cerium", probability = 0.2, amount = 3},
      {type = "item", name = "sp-neodymium", probability = 0.09, amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-yemnuth-pearls-from-cerium-and-neodymium",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-yemnuth-shard", amount = 10},
      {type = "item", name = "sp-high-purity-silicon", amount = 3},
      {type = "item", name = "sp-cerium", amount = 1},
      {type = "item", name = "sp-neodymium", amount = 1}
    },
    results = {
      {type = "item", name = "sp-yemnuth-pearls", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-yemnuth-pearls-from-yittrium-and-lanthanum",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-yemnuth-shard", amount = 15},
      {type = "item", name = "sp-high-purity-silicon", amount = 10},
      {type = "item", name = "sp-yittrium", amount = 1},
      {type = "item", name = "sp-lanthanum", amount = 2}
    },
    results = {
      {type = "item", name = "sp-yemnuth-pearls", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-plasma-crystal",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 14,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-yemnuth-pearls", amount = 20},
      {type = "item", name = "sp-yemnuth-shard", amount = 1},
      {type = "item", name = "sp-phosphorus", amount = 1},
      {type = "item", name = "sp-palladium", amount = 4}
    },
    results = {
      {type = "item", name = "sp-plasma-crystal", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-plasma-capsule",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-plasma-crystal", amount = 1},
      {type = "item", name = "sp-monocrystal", amount = 1},
      {type = "item", name = "sp-tungsten-carbide", amount = 4},
      {type = "item", name = "sp-titanium-nitride", amount = 2},
    },
    results = {
      {type = "item", name = "sp-plasma-capsule", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-plasma-core",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-heat-resistant-tile", amount = 10},
      {type = "item", name = "sp-fuel-injector", amount = 8},
      {type = "item", name = "sp-superconductor", amount = 12},
      {type = "item", name = "sp-titanium-nitride", amount = 2},
      {type = "item", name = "sp-plasma-capsule", amount = 1}
    },
    results = {
      {type = "item", name = "sp-plasma-core", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-blunagium-processing",  -- #ForRegEx# - recipe
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/blunagium-stone.png", 64, nil,
                                   "__Spaghenutti__/graphics/icons/blunagium-basalt.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "crafting",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium", amount = 5},
    },
    results = {
      {type = "item", name = "sp-blunagium-stone", probability = 0.5, amount = 3},
      {type = "item", name = "sp-blunagium-basalt", probability = 0.4, amount = 2},
      {type = "item", name = "sp-zirconia", probability = 0.1, amount = 1},
    }
  },
  {
    type = "recipe",
    name = "sp-blunagium-foam",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-basalt", amount = 3},
      {type = "item", name = "sp-carbon-nanotubes", amount = 8},
      {type = "item", name = "sp-gold", amount = 1},
    },
    results = {
      {type = "item", name = "sp-blunagium-foam", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-blunagium-bar",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-stone", amount = 8},
      {type = "item", name = "sp-tantalum-billet", amount = 3},
      {type = "item", name = "sp-zirconium-rod", amount = 1},
    },
    results = {
      {type = "item", name = "sp-blunagium-bar", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-quantum-foam",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-bar", amount = 2},
      {type = "item", name = "sp-graphene", amount = 5},
      {type = "item", name = "sp-platinum", amount = 2},
      {type = "item", name = "sp-antimony", amount = 2},
      {type = "fluid", name = "sp-helium", amount = 10},
    },
    results = {
      {type = "item", name = "sp-quantum-foam", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-quantum-crystal",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-foam", amount = 2},
      {type = "item", name = "sp-quantum-foam", amount = 5},
      {type = "item", name = "sp-quasicrystal", amount = 2},
      {type = "fluid", name = "sp-xenon", amount = 10},
    },
    results = {
      {type = "item", name = "sp-quantum-crystal", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-fermium-condensate",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-foam", amount = 2},
      {type = "fluid", name = "sp-helium-3", amount = 10},
      {type = "item", name = "sp-blunagium-bar", amount = 1},
      {type = "item", name = "sp-quantum-crystal", amount = 1},
    },
    results = {
      {type = "item", name = "sp-fermium-condensate", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-nanowire",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-foam", amount = 2},
      {type = "item", name = "sp-quantum-crystal", amount = 1},
      {type = "item", name = "sp-high-purity-silicon", amount = 4},
    },
    results = {
      {type = "item", name = "sp-nanowire", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-vortex-core",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-blunagium-foam", amount = 40},
      {type = "item", name = "sp-quantum-crystal", amount = 6},
      {type = "item", name = "sp-high-purity-silicon", amount = 12},
      {type = "item", name = "sp-zirconia", amount = 50},
      {type = "item", name = "sp-palladium", amount = 8},
    },
    results = {
      {type = "item", name = "sp-vortex-core", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-slurry",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-grobgnum", amount = 6},
      {type = "item", name = "sp-sinter-filter", amount = 1},
      {type = "fluid", name = "sp-ethylene-dichloride", amount = 20}
    },
    results = {
      {type = "fluid", name = "sp-grobgnum-slurry", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnumylene",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-catalyst", amount = 2},
      {type = "item", name = "sp-graphite", amount = 6},
      {type = "fluid", name = "sp-styrene", amount = 10},
      {type = "fluid", name = "sp-grobgnum-slurry", amount = 50}
    },
    results = {
      {type = "fluid", name = "sp-grobgnumylene", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-hydroxide",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-sinter-filter", amount = 1},
      {type = "fluid", name = "sp-deuterium", amount = 20},
      {type = "fluid", name = "sp-grobgnum-slurry", amount = 20}
    },
    results = {
      {type = "fluid", name = "sp-grobgnum-hydroxide", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-slurry-processing",  -- #ForRegEx# - recipe
    icons = util.combine_two_icons("__Spaghenutti__/graphics/icons/grobgnum-shard.png", 64, nil,
                                   "__Spaghenutti__/graphics/icons/grobgnum-droplet.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "crafting-with-fluid",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name ="sp-grobgnum-slurry", amount = 50}
    },
    results = {
      {type = "item", name = "sp-grobgnum-shard", probability = 0.2, amount = 1},
      {type = "item", name = "sp-grobgnum-droplet", probability = 0.3, amount = 1},
      {type = "item", name = "sulfur", probability = 0.3, amount = 2},
      {type = "item", name = "sp-zinc-sulfate", probability = 0.1, amount = 2},
      {type = "item", name = "sp-cobalt-sulfate", probability = 0.1, amount = 2},
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-cube",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 16,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-lithium-oxide", amount = 3},
      {type = "item", name = "sp-high-purity-silicon", amount = 2},
      {type = "item", name = "sp-grobgnum-droplet", amount = 8},
      {type = "fluid", name = "sp-grobgnumylene", amount = 25}
    },
    results = {
      {type = "item", name = "sp-grobgnum-cube", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-bar",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-chloride", amount = 1},
      {type = "item", name = "uranium-235", amount = 2},
      {type = "item", name = "sp-grobgnum-cube", amount = 3},
      {type = "fluid", name = "sp-grobgnum-hydroxide", amount = 25}
    },
    results = {
      {type = "item", name = "sp-grobgnum-bar", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-biochip",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-glass-fiber", amount = 1},
      {type = "item", name = "sp-iridium", amount = 1},
      {type = "item", name = "sp-grobgnum-shard", amount = 3},
      {type = "item", name = "sp-platinum", amount = 2},
      {type = "item", name = "sp-carbon-nanotubes", amount = 2},
    },
    results = {
      {type = "item", name = "sp-biochip", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-nanoflex",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-carbon-nanotubes", amount = 10},
      {type = "item", name = "sp-quasicrystal", amount = 2},
      {type = "item", name = "sp-grobgnum-droplet", amount = 6},
      {type = "fluid", name = "sp-grobgnumylene", amount = 2},
    },
    results = {
      {type = "item", name = "sp-nanoflex", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-bioreactor",  -- #ForRegEx# - recipe
    category = "chemistry",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-turbopump", amount = 6},
      {type = "item", name = "sp-control-rod", amount = 6},
      {type = "item", name = "sp-plutonium-fuel-rod", amount = 12},
      {type = "item", name = "sp-heating-filament", amount = 6},
      {type = "item", name = "sp-nanoflex", amount = 20},
      {type = "fluid", name = "grobgnumylene", amount = 100},
    },
    results = {
      {type = "item", name = "sp-bioreactor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-nanobot",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nanoflex", amount = 2},
      {type = "item", name = "sp-nanowire", amount = 2},
      {type = "item", name = "sp-graphene", amount = 6},
      {type = "item", name = "sp-quantum-crystal", amount = 1}
    },
    results = {
      {type = "item", name = "sp-nanobot", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-ion-thruster",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-yittrium", amount = 1},
      {type = "item", name = "sp-inconel", amount = 10},
      {type = "item", name = "sp-electrode", amount = 10},
      {type = "item", name = "sp-electromagnet", amount = 4},
      {type = "fluid", name = "sp-xenon", amount = 20}
    },
    results = {
      {type = "item", name = "sp-ion-thruster", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-flux-capacitor",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-chronalyte", amount = 20},
      {type = "item", name = "sp-gamma-radiation-source", amount = 10},
      {type = "item", name = "sp-TiAlSn", amount = 8},
      {type = "item", name = "sp-electrode", amount = 3},
      {type = "item", name = "sp-neodymium-magnet", amount = 20},
      {type = "item", name = "sp-heat-resistant-tile", amount = 12}
    },
    results = {
      {type = "item", name = "sp-flux-capacitor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-bioreactor",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 30,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-duralumin", amount = 20},
      {type = "fluid", name = "sp-helium", amount = 50},
      {type = "item", name = "sp-urea", amount = 20},
      {type = "item", name = "sp-carbon-fiber", amount = 16},
      {type = "item", name = "sp-heating-filamet", amount = 4},
    },
    results = {
      {type = "item", name = "sp-bioreactor", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-rukite-explorer",  -- #ForRegEx# - recipe
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 60,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-advanced-compute-unit", amount = 10},
      {type = "item", name = "sp-duralumin", amount = 20},
      {type = "item", name = "sp-inconel", amount = 10},
      {type = "fluid", name = "sp-chronomatter", amount = 50},
      {type = "item", name = "sp-flux-capacitor", amount = 1},
      {type = "item", name = "sp-ion-thruster", amount = 1}
    },
    results = {
      {type = "item", name = "sp-rukite-explorer", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-yemnuth-explorer",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 60,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-advanced-compute-unit", amount = 12},
      {type = "item", name = "sp-duralumin", amount = 30},
      {type = "item", name = "sp-titanium-carbide", amount = 10},
      {type = "item", name = "sp-gravitonium", amount = 30},
      {type = "item", name = "sp-plasma-core", amount = 1},
      {type = "item", name = "sp-ion-thruster", amount = 1}
    },
    results = {
      {type = "item", name = "sp-yemnuth-explorer", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-blunagium-explorer",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 60,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-quantum-data-plane", amount = 6},
      {type = "item", name = "sp-duralumin", amount = 20},
      {type = "item", name = "sp-quantum-crystal", amount = 50},
      {type = "item", name = "sp-fermium-condensate", amount = 10},
      {type = "item", name = "sp-vortex-core", amount = 1},
      {type = "item", name = "sp-ion-thruster", amount = 1}
    },
    results = {
      {type = "item", name = "sp-blunagium-explorer", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-grobgnum-explorer",  -- #ForRegEx# - recipe
    category = "crafting",
    enabled = false,
    energy_required = 60,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-biochip", amount = 20},
      {type = "item", name = "sp-duralumin", amount = 25},
      {type = "item", name = "sp-grobgnum-droplet", amount = 100},
      {type = "item", name = "sp-TiNb", amount = 20},
      {type = "item", name = "sp-bioreactor", amount = 1}
    },
    results = {
      {type = "item", name = "sp-grobgnum-explorer", amount = 1}
    }
  },
  ------------------------------------------------------------------------------
  -- Alternate recipes for vanilla items
  ------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "sp-medium-electric-pole",
    enabled = false,
    ingredients =
    {
      {"iron-stick", 4},
      {"sp-aluminum-frame", 8},
      {"sp-bolts", 8},
    },
    result = "medium-electric-pole"
  },
  {
    type = "recipe",
    name = "sp-landfill-from-iron-ore",
    icons = util.overlay_small_icon("__base__/graphics/icons/landfill.png", 64,
                                    "__base__/graphics/icons/iron-ore.png", 64),
    energy_required = 0.5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"stone", 10},
      {"iron-ore", 6}
    },
    result= "landfill",
    result_count = 1
  },
  {
    type = "recipe",
    name = "sp-landfill-from-limestone",
    icons = util.overlay_small_icon("__base__/graphics/icons/landfill.png", 64, 
                                    "__Spaghenutti__/graphics/icons/limestone-1.png", 64),
    energy_required = 0.5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"sp-limestone", 16}
    },
    result= "landfill",
    result_count = 1
  },
  {
    type = "recipe",
    name = "sp-landfill-from-limestone-and-stone",
    icons = util.overlay_two_small_icons("__base__/graphics/icons/landfill.png", 64,
                                         "__base__/graphics/icons/stone.png", 64,
                                         "__Spaghenutti__/graphics/icons/limestone-1.png", 64),
    energy_required = 0.5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"stone", 10},
      {"sp-limestone", 6}
    },
    result= "landfill",
    result_count = 1
  },
  {
    type = "recipe",
    name = "sp-landfill-from-cement",
    energy_required = 1,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"stone", 8},
      {"sp-cement", 4}
    },
    result = "landfill",
    result_count = 2
  },
  {
    type = "recipe",
    name = "sp-stone-brick-from-limestone",
    category = "intermediate-smelting",
    energy_required = 3.2,
    enabled = false,
    hide_from_player_crafting = true,
    ingredients = {
      {"sp-limestone", 2}
    },
    result = "stone-brick"
  },
  {
    type = "recipe",
    name = "sp-red-wire-from-aluminum",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"sp-aluminum-cable", 1}
    },
    result = "red-wire"
  },
  {
    type = "recipe",
    name = "sp-green-wire-from-aluminum",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"sp-aluminum-cable", 1}
    },
    result = "green-wire"
  },
})

if not mods["Krastorio2"] then
  data:extend({
    {
      type = "recipe",
      name = "sp-coke",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "coal", amount = 2}
      },
      results = {
        {type = "item", name = "sp-coke", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-sand",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "stone", amount = 1},
      },
      results = {
        {type = "item", name = "sp-sand", amount = 3}
      }
    },
    {
      type = "recipe",
      name = "sp-graphite",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 6,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-coke", amount = 3}
      },
      results = {
        {type = "item", name = "sp-graphite", amount = 4}
      }
    },
    {
      type = "recipe",
      name = "sp-sodium-carbonate",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sodium", amount = 2},
        {type = "item", name = "sp-coke", amount = 5}
      },
      results = {
        {type = "item", name = "sp-sodium-carbonate", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-zirconia",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-zirconium-ore", amount = 1},
        {type = "item", name = "sp-sand", amount = 3}
      },
      results = {
        {type = "item", name = "sp-zirconia", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-quartz",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sand", amount = 2},
        {type = "fluid", name = "water", amount = 30}
      },
      results = {
        {type = "item", name = "sp-quartz", amount = 2}
      },
      crafting_machine_tint = {
        primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
        secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
        tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
        quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
      }
    },
    {
      type = "recipe",
      name = "sp-niobium-powder",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sand", amount = 8},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "item", name = "sp-niobium-powder", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-aqueous-niobium-tantalum",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 5,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sand", amount = 8},
        {type = "item", name = "sp-fluorine", amount = 1},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "sp-aqueous-niobium", amount = 50},
        {type = "fluid", name = "sp-aqueous-tantalum", amount = 6}
      }
    },
    {
      type = "recipe",
      name = "sp-glass",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sand", amount = 4}
      },
      results = {
        {type = "item", name = "sp-glass", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-glass-from-calcium",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 2.4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sand", amount = 3},
        {type = "item", name = "sp-caclium", amount = 1}
      },
      results = {
        {type = "item", name = "sp-glass", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-gold",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 3,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "stone", amount = 1},
        {type = "fluid", name = "water", amount = 40}
      },
      results = {
        {type = "item", name = "sp-sand", probability = 0.98, amount = 3},
        {type = "item", name = "sp-gold", probability = 0.02, amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-platinum-iridium",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "crafting",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "stone", amount = 1},
      },
      results = {
        {type = "item", name = "sp-sand", probability = 0.9807, amount = 3},
        {type = "item", name = "sp-platinum", probability = 0.019, amount = 1},
        {type = "item", name = "sp-iridium", probability = 0.0003, amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-landfill-from-sand",
      energy_required = 1,
      enabled = false,
      category = "crafting",
      ingredients =
      {
        {"stone", 8},
        {"sp-sand", 30}
      },
      result = "landfill",
      result_count = 1
    },
    {
      type = "recipe",
      name = "sp-stone-brick-from-sand",
      category = "intermediate-smelting",
      energy_required = 2,
      enabled = false,
      hide_from_player_crafting = true,
      ingredients = {
        {"sp-sand", 8}
      },
      result = "stone-brick"
    },
    {
      type = "recipe",
      name = "sp-mirror",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 2.8,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-glass", amount = 2},
        {type = "item", name = "sp-aluminum-sheet", amount = 1},
        {type = "fluid", name = "sp-sodium-carbonate", amount = 20}
      },
      results = {
        {type = "item", name = "sp-mirror", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-titanium-nitride",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 6,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-titanium-ingot", amount = 2},
        {type = "fluid", name = "sp-nitrogen", amount = 40},
      },
      results = {
        {type = "item", name = "sp-titanium-nitride", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-kevlar",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 4.8,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-graphite", amount = 4},
        {type = "fluid", name = "sp-nitrogen", amount = 15},
      },
      results = {
        {type = "item", name = "sp-kevlar", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-uranium-fuel-rod",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "uranium-235", amount = 2},
        {type = "item", name = "sp-empty-fuel-rod", amount = 1}
      },
      results = {
        {type = "item", name = "sp-uranium-fuel-rod", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-epoxy",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-graphite", amount = 3},
        {type = "fluid", name = "sp-oxygen", amount = 35},
        {type = "fluid", name = "sp-hydrogen", amount = 15},
      },
      results = {
        {type = "fluid", name = "sp-epoxy", amount = 20}
      }
    },
    {
      type = "recipe",
      name = "sp-cubit",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 0.4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-monocrystal", amount = 1},
        {type = "fluid", name = "sp-hydrogen", amount = 1},
        {type = "fluid", name = "sp-graphene", amount = 2},
      },
      results = {
        {type = "item", name = "sp-cubit", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-superconductor",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 5,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-lanthanum", amount = 1},
        {type = "item", name = "iron-plate", amount = 2},
        {type = "fluid", name = "sp-hydrogen", amount = 100}
      },
      results = {
        {type = "item", name = "sp-superconductor", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-sodium-and-chlorine",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 5,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-salt", amount = 2},
      },
      results = {
        {type = "item", name = "sp-sodium", amount = 2},
        {type = "fluid", name = "sp-chlorine", amount = 3}
      },
      crafting_machine_tint = {
        primary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fefeffff
        secondary = {r = 0.771, g = 0.771, b = 0.771, a = 1.000}, -- #c4c4c4ff
        tertiary = {r = 0.768, g = 0.665, b = 0.762, a = 1.000}, -- #c3a9c2ff
        quaternary = {r = 0.000, g = 0.000, b = 0.000, a = 1.000}, -- #000000ff
      }
    },
    {
      type = "recipe",
      name = "sp-bleach",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "fluid", name = "sp-oxygen", amount = 100},
        {type = "fluid", name = "sp-chlorine", amount = 50}
      },
      results = {
        {type = "fluid", name = "sp-bleach", amount = 20}
      }
    },
    {
      type = "recipe",
      name = "sp-lens",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silica", amount = 2},
        {type = "fluid", name = "sp-oxygen", amount = 40},
        {type = "item", name = "sp-calcium", amount = 1},
      },
      results = {
        {type = "item", name = "sp-lens", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-composites",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-graphite", amount = 3},
        {type = "fluid", name = "sp-oxygen", amount = 25},
      },
      results = {
        {type = "item", name = "sp-composites", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-silicon",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silica", amount = 3},
      },
      results = {
        {type = "item", name = "sp-silicon", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-high-purity-silicon",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "smelting",
      subgroup = "advanced-raw-material",
      enabled = false,
      energy_required = 8,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silicon", amount = 1},
      },
      results = {
        {type = "item", name = "sp-high-purity-silicon", probability = 0.3, amount = 1},
        {type = "item", name = "sp-silicon", probability = 0.7, amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-diode",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silicon", amount = 1},
        {type = "item", name = "sp-phosphorus", amount = 1}
      },
      results = {
        {type = "item", name = "sp-diode", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-transistor",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 2.8,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silicon", amount = 2},
        {type = "item", name = "sp-phosphorus", amount = 1}
      },
      results = {
        {type = "item", name = "sp-transistor", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-light-emitting-diode",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 2.8,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-silicon", amount = 2},
        {type = "item", name = "sp-phosphorus", amount = 1},
        {type = "item", name = "sp-lanthanum", amount = 1}
      },
      results = {
        {type = "item", name = "sp-light-emitting-diode", amount = 3}
      }
    },
    {
      type = "recipe",
      name = "sp-integrated-circuit",  -- #ForRegEx# - recipe
      category = "crafting",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "plastic-bar", amount = 1},
        {type = "item", name = "sp-silicon", amount = 2},
        {type = "item", name = "copper-plate", amount = 1}
      },
      results = {
        {type = "item", name = "sp-integrated-circuit", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-laser",  -- #ForRegEx# - recipe
      category = "crafting-with-fluid",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "plastic-bar", amount = 1},
        {type = "item", name = "sp-silicon", amount = 1},
        {type = "item", name = "sp-aluminum-sheet", amount = 1},
        {type = "item", name = "sp-silver", amount = 1},
        {type = "fluid", name = "sp-helium", amount = 10}
      },
      results = {
        {type = "item", name = "sp-laser", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-silica",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-quartz", amount = 1},
      },
      results = {
        {type = "item", name = "sp-silica", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-lithium",  -- #ForRegEx# - recipe
      category = "smelting",
      enabled = false,
      energy_required = 2.4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-lithium-oxide", amount = 2}
      },
      results = {
        {type = "item", name = "sp-lithium", amount = 2}
      }
    },
    {
      type = "recipe",
      name = "sp-plutonium-239",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "high-energy-physics",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-lithium", amount = 1},
        {type = "item", name = "uranium-238", amount = 1}
      },
      results = {
        {type = "item", name = "uranium-238", probability = 0.84, amount = 1},
        {type = "item", name = "sp-plutonium-239", probability = 0.15, amount = 1},
        {type = "item", name = "sp-plutonium-240", probability = 0.01, amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-plutonium-240",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "high-energy-physics",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-lithium", amount = 1},
        {type = "item", name = "sp-plutonium-239", amount = 1}
      },
      results = {
        {type = "item", name = "uranium-238", probability = 0.2, amount = 1},
        {type = "item", name = "sp-plutonium-239", probability = 0.72, amount = 1},
        {type = "item", name = "sp-plutonium-240", probability = 0.08, amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-used-up-fuel-rod-reprocessing",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 64,
      mip_maps = 4,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 60,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-used-up-fuel-rod", amount = 5},
        {type = "fluid", name = "sulfuric-acid", amount = 40}
      },
      results = {
        {type = "item", name = "uranium-238", amount = 3},
        {type = "fluid", name = "sp-deuterium", amount = 10}
      }
    },
    {
      type = "recipe",
      name = "sp-advanced-used-up-fuel-rod-reprocessing",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 80,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-used-up-fuel-rod", amount = 6},
        {type = "fluid", name = "sp-chlorine", amount = 60}
      },
      results = {
        {type = "item", name = "uranium-238", probability = 0.37, amount = 2},
        {type = "item", name = "uranium-235", probability = 0.03, amount = 1},
        {type = "item", name = "sp-plutonium-239", probability = 0.6, amount = 1},
        {type = "fluid", name = "sp-deuterium", amount = 10}
      }
    },
    {
      type = "recipe",
      name = "sp-magnesium-slab",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/icons/magnesium-slab.png",
      icon_size = 256,
      scale = 0.25,
      category = "chemistry",
      enabled = false,
      energy_required = 4,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-magnesium-chloride", amount = 2}
      },
      results = {
        {type = "item", name = "sp-magnesium-slab", amount = 2},
        {type = "fluid", name = "sp-chloride", amount = 10}
      }
    },
    {
      type = "recipe",
      name = "sp-urea",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sulfur", amount = 1},
        {type = "fluid", name = "sp-ammonia", amount = 50},
      },
      results = {
        {type = "item", name = "sp-urea", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-carbon-fiber",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "plastic-bar", amount = 3},
        {type = "item", name = "sp-graphite", amount = 1},
        {type = "fluid", name = "sp-nitric-acid", amount = 50},
      },
      results = {
        {type = "item", name = "sp-carbon-fiber", amount = 1}
      }
    },
    {
      type = "recipe",
      name = "sp-ethylene-dichloride",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 1.6,  -- time in seconds to make the item
      ingredients = {
        {type = "fluid", name = "sp-ethylene", amount = 60},
        {type = "fluid", name = "sp-chlorine", amount = 60},
      },
      results = {
        {type = "fluid", name = "sp-ethylene-dichloride", amount = 60},
      }
    },
    {
      type = "recipe",
      name = "sp-sodium-hydroxide-from-salt",  -- #ForRegEx# - recipe
      icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
      icon_size = 64,
      scale = 0.25,
      category = "chemistry",
      subgroup = "raw-resource",
      enabled = false,
      energy_required = 6,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-salt", amount = 2},
        {type = "fluid", name = "water", amount = 60},
      },
      results = {
        {type = "fluid", name = "sp-sodium-hydroxide", amount = 50},
        {type = "fluid", name = "sp-chlorine", amount = 50},
      }
    },
    {
      type = "recipe",
      name = "sp-sodium-hydroxide-from-sodium",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 16,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-sodium", amount = 5},
        {type = "fluid", name = "sp-hydrogen", amount = 100},
        {type = "fluid", name = "sp-oxygen", amount = 100},
      },
      results = {
        {type = "fluid", name = "sp-sodium-hydroxide", amount = 20},
      }
    },
    {
      type = "recipe",
      name = "sp-methyl-tert-butyl-ether",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 3.6,  -- time in seconds to make the item
      ingredients = {
        {type = "fluid", name = "sp-styrene", amount = 20},
        {type = "fluid", name = "sp-propane", amount = 50}
      },
      results = {
        {type = "fluid", name = "sp-methyl-tert-butyl-ether", amount = 50}
      }
    },
    {
      type = "recipe",
      name = "sp-vynil-chloride",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 3.2,  -- time in seconds to make the item
      ingredients = {
        {type = "fluid", name = "sp-styrene", amount = 20},
        {type = "fluid", name = "sp-chlorine", amount = 30}
      },
      results = {
        {type = "fluid", name = "sp-vynil-chloride", amount = 30}
      }
    },
    {
      type = "recipe",
      name = "sp-electrolyte",  -- #ForRegEx# - recipe
      category = "chemistry",
      enabled = false,
      energy_required = 2,  -- time in seconds to make the item
      ingredients = {
        {type = "item", name = "sp-lithium", amount = 3},
        {type = "fluid", name = "sp-chlorine", amount = 10},
        {type = "fluid", name = "sp-propylene", amount = 10}
      },
      results = {
        {type = "item", name = "sp-electrolyte", amount = 1}
      }
    },
  })
end

-- Recipe changes for base factorio items
util.change_recipe_ingredients("speed-module",
  {{"electronic-circuit", 5}, {"plastic-bar", 1}},
  {{"electronic-circuit", 8}, {"plastic-bar", 2}},
  15,
  20)
util.change_recipe_ingredients("speed-module-2",
  {{"sp-circuit-board", 2}, {"advanced-circuit", 5}, {"sp-solder", 4}, {"sp-integrated-circuit", 2}},
  {{"sp-circuit-board", 4}, {"advanced-circuit", 10}, {"sp-solder", 4}, {"sp-integrated-circuit", 4}},
  20,
  30)
util.change_recipe_ingredients("speed-module-3",
  {{"sp-circuit-board", 4}, {"advanced-circuit", 5}, {"sp-processor", 2}, {"sp-memory-chip", 2}, {"sp-cmos", 6}, {"sp-integrated-circuit", 2}},
  {{"sp-circuit-board", 6}, {"advanced-circuit", 10}, {"sp-processor", 6}, {"sp-capacitor", 6}, {"sp-light-emitting-diode", 6}, {"sp-integrated-circuit", 4}},
  45,
  60)