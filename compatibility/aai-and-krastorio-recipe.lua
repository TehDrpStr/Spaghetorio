local util = require("data-util")

data:extend({
  -- MARK: Update crushing recipes
  {
    type = "recipe",
    name = "kr-vc-coal",  -- replaces sp-graphite recipe
    category = "crushing",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "coal", amount = 3}
    },
    results = {
      {type = "item", name = "sp-graphite", amount = 4}
    }
  },
  -- MARK: New aai / krastorio recipes
  {
    type = "recipe",
    name = "sp-rare-metal-processing",  -- #ForRegEx# - recipe
    icons = util.combine_four_icons("__Spaghenutti__/graphics/icons/yttrium.png", 64, nil,
                                    "__Spaghenutti__/graphics/icons/lanthanum.png", 64, nil,
                                    "__Spaghenutti__/graphics/icons/cerium.png", 64, nil,
                                    "__Spaghenutti__/graphics/icons/neodymium.png", 64, nil),
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "rare-metals", amount = 2}
    },
    results = {
      {type = "item", name = "sp-yttrium", probability = 0.06, amount = 1},
      {type = "item", name = "sp-lanthanum", probability = 0.09, amount = 1},
      {type = "item", name = "sp-cerium", probability = 0.15, amount = 1},
      {type = "item", name = "sp-neodymium", probability = 0.08, amount = 1},
      {type = "item", name = "sand", probability = 0.62, amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-deuterium",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/dummy/dummy-recipe-default.png",
    icon_size = 64,
    mip_maps = 4,
    category = "electrolysis",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "fluid", name = "heavy-water", amount = 50},
    },
    results = {
      {type = "fluid", name = "oxygen", amount = 50},
      {type = "fluid", name = "sp-deuterium", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "sp-wood-from-urea",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Krastorio2Assets__/icons/recipes/wood-plus.png", 64,
                                    "__Spaghenutti__/graphics/icons/urea.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 75,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-urea", amount = 1},
      {type = "item", name = "landfill", amount = 3},
      {type = "fluid", name = "water", amount = 300}
    },
    results = {
      {type = "item", name = "wood", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-xenon-from-atmosphere",  -- #ForRegEx# - recipe
    category = "atmosphere-condensation",
    enabled = false,
    energy_required = 10,  -- time in seconds to make the item
    ingredients = {},
    results = {
      {type = "fluid", name = "sp-xenon", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-helium-from-atmosphere",  -- #ForRegEx# - recipe
    category = "atmosphere-condensation",
    enabled = false,
    energy_required = 1,  -- time in seconds to make the item
    ingredients = {},
    results = {
      {type = "fluid", name = "sp-helium", amount = 1}
    }
  },
  -- MARK: Alternative Spaghenutty recipes with existing result product from aai / krastorio mod
  {
    type = "recipe",
    name = "sp-glass-from-calcium",  -- #ForRegEx# - recipe
    category = "smelting",
    enabled = false,
    energy_required = 2.4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sand", amount = 3},
      {type = "item", name = "sp-calcium", amount = 1}
    },
    results = {
      {type = "item", name = "glass", amount = 1}
    }
  },
  -- MARK: enriched resource recipes
  {
    type = "recipe",
    name = "sp-enriched-aluminum",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-aluminum-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-aluminum-ore", amount = 10},
      {type = "fluid", name = "chlorine", amount = 2},
      {type = "fluid", name = "water", amount = 50}
    },
    results = {
      {type = "item", name = "sp-enriched-aluminum", amount = 6},
      {type = "fluid", name = "dirty-water", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "sp-alumina-from-enriched-aluminum",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/alumina.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-aluminum-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-aluminum", amount = 2}
    },
    results = {
      {type = "item", name = "sp-alumina", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-chromite",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-chromite-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-chromite", amount = 10},
      {type = "fluid", name = "sulfuric-acid", amount = 4},
      {type = "fluid", name = "water", amount = 30}
    },
    results = {
      {type = "item", name = "iron-ore", amount = 4},
      {type = "item", name = "sp-enriched-chromite", amount = 6},
      {type = "fluid", name = "dirty-water", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "sp-chromium-plate-from-enriched-chromite",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/chromium-plate.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-chromite-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-chromite", amount = 2}
    },
    results = {
      {type = "item", name = "sp-chromium-plate", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-magnesium",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-magnesium-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-magnesium-ore", amount = 10},
      {type = "fluid", name = "sp-liquid-sodium", amount = 1},
      {type = "fluid", name = "water", amount = 20}
    },
    results = {
      {type = "item", name = "sp-salt", probability = 0.5, amount = 1},
      {type = "item", name = "sp-enriched-magnesium", amount = 5},
      {type = "fluid", name = "dirty-water", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-magnesium-slab-from-enriched-magnesium",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/magnesium-slab.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-magnesium-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-magnesium", amount = 3}
    },
    results = {
      {type = "item", name = "sp-magnesium-slab", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-nickel",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-nickel-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-nickel-ore", amount = 8},
      {type = "fluid", name = "sulfuric-acid", amount = 2},
      {type = "fluid", name = "water", amount = 20}
    },
    results = {
      {type = "item", name = "iron-ore", amount = 6},
      {type = "item", name = "sp-enriched-nickel", amount = 5},
      {type = "fluid", name = "dirty-water", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-nickel-ingot-from-enriched-nickel",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/nickel-ingot.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-nickel-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-nickel", amount = 1}
    },
    results = {
      {type = "item", name = "sp-nickel-ingot", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-tinstone",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-tinstone-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 3,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tinstone", amount = 10},
      {type = "fluid", name = "nitric-acid", amount = 3},
      {type = "fluid", name = "water", amount = 20}
    },
    results = {
      {type = "item", name = "sp-leadstone", amount = 6},
      {type = "item", name = "sp-enriched-tinstone", amount = 5},
      {type = "fluid", name = "dirty-water", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "sp-tin-ingot-from-enriched-tin",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/tin-ingot.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-tinstone-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-tinstone", amount = 3}
    },
    results = {
      {type = "item", name = "sp-tin-ingot", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-titanium",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-titanium-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-titanium-ore", amount = 12},
      {type = "fluid", name = "ammonia", amount = 2},
      {type = "fluid", name = "water", amount = 50}
    },
    results = {
      {type = "item", name = "sp-enriched-titanium", amount = 6},
      {type = "fluid", name = "dirty-water", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "sp-titanium-chloride-from-enriched-titanium",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/titanium-chloride.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-titanium-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 5,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-titanium", amount = 2}
    },
    results = {
      {type = "item", name = "sp-titanium-chloride", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-tungsten",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-tungsten-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-tungsten-ore", amount = 10},
      {type = "fluid", name = "nitric-acid", amount = 4},
      {type = "fluid", name = "water", amount = 35}
    },
    results = {
      {type = "item", name = "sp-enriched-tungsten", amount = 5},
      {type = "fluid", name = "dirty-water", amount = 35}
    }
  },
  {
    type = "recipe",
    name = "sp-tungsten-ingot-from-enriched-tungsten",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/ammonium-paratungstate.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-tungsten-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-tungsten", amount = 1}
    },
    results = {
      {type = "item", name = "sp-ammonium-paratungstate", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-zinc",  -- #ForRegEx# - recipe
    icon = "__Spaghenutti__/graphics/icons/enriched-zinc-1.png",
    icon_size = 64,
    mip_maps = 4,
    category = "chemistry",
    subgroup = "enriched-resource",
    enabled = false,
    energy_required = 3.2,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-zinc-ore", amount = 12},
      {type = "item", name = "sp-sodium-carbonate", amount = 2},
      {type = "fluid", name = "water", amount = 40}
    },
    results = {
      {type = "item", name = "sp-enriched-zinc", amount = 7},
      {type = "fluid", name = "dirty-water", amount = 40}
    }
  },
  {
    type = "recipe",
    name = "sp-zinc-plate-from-enriched-zinc",  -- #ForRegEx# - recipe
    icons = util.overlay_small_icon("__Spaghenutti__/graphics/icons/zinc-plate.png", 64,
                                    "__Spaghenutti__/graphics/icons/enriched-zinc-1.png", 64),
    category = "smelting",
    enabled = false,
    energy_required = 4,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-zinc", amount = 1}
    },
    results = {
      {type = "item", name = "sp-zinc-plate", amount = 2}
    }
  },
  -- MARK: Acrosphere product recipes for basic resources from acromatter
  {
    type = "recipe",
    name = "sp-enriched-aluminum-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-aluminum-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 9,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-aluminum", amount = 12},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-aluminum", amount = 14},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-phosphorus", probability=0.1, amount = 2},
      {type = "item", name = "sp-graphite", probability=0.05, amount = 2},
      {type = "item", name = "silicon", probability=0.2, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-raw-rare-metals-from-acrocrystal",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/raw-rare-metals/raw-rare-metals.png",
                                                    "__Spaghenutti__/graphics/icons/acrocrystal.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acrocrystal",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 15,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "raw-rare-metals", amount = 9},
      {type = "item", name = "sp-acrocrystal", amount = 1}
    },
    results = {
      {type = "item", name = "raw-rare-metals", amount = 10},
      {type = "item", name = "sp-acrocrystal", probability=0.99, amount = 1},
      {type = "item", name = "sp-yttrium", probability=0.03, amount = 1},
      {type = "item", name = "sp-lanthanum", probability=0.02, amount = 1},
      {type = "item", name = "sp-cerium", probability=0.01, amount = 1},
      {type = "item", name = "sp-neodymium", probability=0.02, amount = 1}
      -- I guess add here many more byproducts
    }
  },
  {
    type = "recipe",
    name = "sp-coke-from-acrovoid",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/coke/coke.png",
                                                    "__Spaghenutti__/graphics/icons/acrovoid.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acrovoid",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "coke", amount = 6},
      {type = "item", name = "sp-acrovoid", amount = 1}
    },
    results = {
      {type = "item", name = "sp-acrovoid", probability=0.99, amount = 1},
      {type = "item", name = "coke", amount = 7},
      {type = "item", name = "sp-graphite", probability=0.5, amount = 1},
      {type = "item", name = "sulfur", probability=0.1, amount = 1},
      {type = "fluid", name = "hydrogen", amount = 4},
      {type = "fluid", name = "oxygen", amount = 12}
    }
  },
  {
    type = "recipe",
    name = "sp-silicon-from-acrovoid",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/silicon/silicon.png",
                                                    "__Spaghenutti__/graphics/icons/acrovoid.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acrovoid",
    subgroup = "processed-resource",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "silicon", amount = 4},
      {type = "item", name = "sp-acrovoid", amount = 1}
    },
    results = {
      {type = "item", name = "sp-acrovoid", probability=0.98, amount = 1},
      {type = "item", name = "silicon", amount = 6},
      {type = "item", name = "sp-graphite", probability=0.3, amount = 1},
      {type = "item", name = "sp-phosphorus", probability=0.2, amount = 1},
      {type = "item", name = "sp-aluminum-ore", probability=0.2, amount = 1},
      {type = "item", name = "sp-tinstone", probability=0.08, amount = 1},
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-chromite-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-chromite-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-chromite", amount = 6},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-chromite", amount = 7},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "iron-ore", probability=0.1, amount = 2},
      {type = "item", name = "sp-tungsten-ore", probability=0.15, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-titanium-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-titanium-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 10,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-titanium", amount = 10},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-titanium", amount = 11},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-chromite", probability=0.15, amount = 2},
      {type = "item", name = "sp-zircon", probability=0.25, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-magnesium-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-magnesium-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-magnesium", amount = 10},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-magnesium", amount = 11},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-calcium", probability=0.25, amount = 2},
      {type = "item", name = "sp-sodium", probability=0.20, amount = 2},
      {type = "item", name = "lithium", probability=0.05, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-nickel-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-nickel-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-nickel", amount = 8},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-nickel", amount = 10},
      {type = "item", name = "sp-acromatter", probability=0.98, amount = 1},
      {type = "item", name = "iron-ore", probability=0.3, amount = 2},
      {type = "item", name = "copper-ore", probability=0.5, amount = 2},
      {type = "item", name = "sp-palladium", probability=0.05, amount = 2},
      {type = "item", name = "sp-platinum", probability=0.02, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-tinstone-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-tinstone-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 6,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-tinstone", amount = 6},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-tinstone", amount = 7},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-leadstone", probability=0.5, amount = 2},
      {type = "item", name = "sp-antimony", probability=0.12, amount = 2},
      {type = "item", name = "sp-tellurium", probability=0.02, amount = 2},
      {type = "item", name = "silicon", probability=0.15, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-tungsten-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-tungsten-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 12,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-tungsten", amount = 8},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-tungsten", amount = 9},
      {type = "item", name = "sp-acromatter", probability=0.98, amount = 1},
      {type = "item", name = "sp-chromite", probability=0.1, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-zinc-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Spaghenutti__/graphics/icons/enriched-zinc-1.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 7,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "sp-enriched-zinc", amount = 8},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "sp-enriched-zinc", amount = 9},
      {type = "item", name = "sp-acromatter", probability=0.98, amount = 1},
      {type = "item", name = "copper-ore", probability=0.2, amount = 2},
      {type = "item", name = "sp-nickel-ore", probability=0.1, amount = 2}
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-iron-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "enriched-iron", amount = 10},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "enriched-iron", amount = 11},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-chromite", probability=0.2, amount = 2},
      {type = "item", name = "sp-nickel-ore", probability=0.15, amount = 2}
      -- could create sp-cobalt item
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-copper-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 8,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "enriched-copper", amount = 10},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "enriched-copper", amount = 11},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-zinc-ore", probability=0.15, amount = 2},
      {type = "item", name = "sp-nickel-ore", probability=0.15, amount = 2},
      {type = "item", name = "sp-silver", probability=0.05, amount = 2},
      {type = "item", name = "sp-gold", probability=0.03, amount = 2}
      -- could create sp-cobalt item
    }
  },
  {
    type = "recipe",
    name = "sp-enriched-rare-metals-from-acromatter",  -- #ForRegEx# - recipe
    icons = util.create_acroproduct_conversion_icon("__Krastorio2Assets__/icons/items-with-variations/enriched-rare-metals/enriched-rare-metals.png",
                                                    "__Spaghenutti__/graphics/icons/acromatter.png"),
    icon_size = 64,
    mip_maps = 4,
    category = "acroproduct-conversion-with-acromatter",
    subgroup = "raw-resource",
    enabled = false,
    energy_required = 15,  -- time in seconds to make the item
    ingredients = {
      {type = "item", name = "enriched-rare-metals", amount = 9},
      {type = "item", name = "sp-acromatter", amount = 1}
    },
    results = {
      {type = "item", name = "enriched-rare-metals", amount = 10},
      {type = "item", name = "sp-acromatter", probability=0.99, amount = 1},
      {type = "item", name = "sp-yttrium", probability=0.03, amount = 2},
      {type = "item", name = "sp-lanthanum", probability=0.02, amount = 2},
      {type = "item", name = "sp-cerium", probability=0.01, amount = 2},
      {type = "item", name = "sp-neodymium", probability=0.02, amount = 2}
      -- I guess add here many more byproducts
    }
  },
})

------------------------------------------------------------------------------
-- MARK: Changes to Spaghenutty
------------------------------------------------------------------------------
-- Change recipes
util.change_recipe_ingredients("sp-methyl-tert-butyl-ether",
  {{type = "fluid", name = "biomethanol", amount = 50}, {type = "fluid", name = "sp-propane", amount = 50}},
  {{type = "fluid", name = "biomethanol", amount = 80}, {type = "fluid", name = "sp-propane", amount = 80}},
  3.6,
  6)

-- Add missing ingredients
table.insert(data.raw.recipe["sp-sodium-carbonate"].ingredients, {type = "item", name = "coke", amount = 5})
table.insert(data.raw.recipe["sp-graphite"].ingredients, {type = "item", name = "coke", amount = 3})
table.insert(data.raw.recipe["sp-zirconia"].ingredients, {type = "item", name = "sand", amount = 3})
table.insert(data.raw.recipe["sp-niobium-powder"].ingredients, {type = "item", name = "sand", amount = 8})
table.insert(data.raw.recipe["sp-aqueous-niobium-tantalum"].ingredients, {type = "item", name = "sand", amount = 8})
table.insert(data.raw.recipe["sp-landfill-from-sand"].ingredients, {type = "item", name = "sand", amount = 30})
table.insert(data.raw.recipe["sp-stone-brick-from-sand"].ingredients, {type = "item", name = "sand", amount = 8})
table.insert(data.raw.recipe["sp-mirror"].ingredients, {type = "item", name = "glass", amount = 2})
table.insert(data.raw.recipe["sp-titanium-nitride"].ingredients, {type = "fluid", name = "nitrogen", amount = 40})
table.insert(data.raw.recipe["sp-kevlar"].ingredients, {type = "fluid", name = "nitrogen", amount = 15})
table.insert(data.raw.recipe["sp-uranium-fuel-rod"].ingredients, {type = "fluid", name = "nitrogen", amount = 100})
table.insert(data.raw.recipe["sp-epoxy"].ingredients, {type = "fluid", name = "oxygen", amount = 35})
table.insert(data.raw.recipe["sp-epoxy"].ingredients, {type = "fluid", name = "hydrogen", amount = 15})
table.insert(data.raw.recipe["sp-cubit"].ingredients, {type = "fluid", name = "hydrogen", amount = 1})
table.insert(data.raw.recipe["sp-superconductor"].ingredients, {type = "fluid", name = "hydrogen", amount = 100})
table.insert(data.raw.recipe["sp-bleach"].ingredients, {type = "fluid", name = "oxygen", amount = 100})
table.insert(data.raw.recipe["sp-bleach"].ingredients, {type = "fluid", name = "chlorine", amount = 50})
table.insert(data.raw.recipe["sp-lens"].ingredients, {type = "fluid", name = "oxygen", amount = 40})
table.insert(data.raw.recipe["sp-composites"].ingredients, {type = "fluid", name = "oxygen", amount = 25})
table.insert(data.raw.recipe["sp-high-purity-silicon"].ingredients, {type = "item", name = "silicon", amount = 1})
table.insert(data.raw.recipe["sp-diode"].ingredients, {type = "item", name = "silicon", amount = 1})
table.insert(data.raw.recipe["sp-transistor"].ingredients, {type = "item", name = "silicon", amount = 2})
table.insert(data.raw.recipe["sp-light-emitting-diode"].ingredients, {type = "item", name = "silicon", amount = 2})
table.insert(data.raw.recipe["sp-integrated-circuit"].ingredients, {type = "item", name = "silicon", amount = 2})
table.insert(data.raw.recipe["sp-laser"].ingredients, {type = "item", name = "silicon", amount = 1})
table.insert(data.raw.recipe["sp-silica"].ingredients, {type = "item", name = "quartz", amount = 1})
table.insert(data.raw.recipe["sp-plutonium-239-processing"].ingredients, {type = "item", name = "lithium", amount = 1})
table.insert(data.raw.recipe["sp-plutonium-240-processing"].ingredients, {type = "item", name = "lithium", amount = 1})
table.insert(data.raw.recipe["sp-advanced-used-up-fuel-rod-reprocessing"].ingredients, {type = "fluid", name = "chlorine", amount = 60})
table.insert(data.raw.recipe["sp-urea"].ingredients, {type = "fluid", name = "ammonia", amount = 50})
table.insert(data.raw.recipe["sp-carbon-fiber"].ingredients, {type = "fluid", name = "nitric-acid", amount = 50})
table.insert(data.raw.recipe["sp-ethylene-dichloride"].ingredients, {type = "fluid", name = "chlorine", amount = 60})
table.insert(data.raw.recipe["sp-sodium-hydroxide-from-sodium"].ingredients, {type = "fluid", name = "hydrogen", amount = 100})
table.insert(data.raw.recipe["sp-sodium-hydroxide-from-sodium"].ingredients, {type = "fluid", name = "oxygen", amount = 100})
table.insert(data.raw.recipe["sp-vinyl-chloride"].ingredients, {type = "fluid", name = "chlorine", amount = 30})
table.insert(data.raw.recipe["sp-electrolyte"].ingredients, {type = "item", name = "lithium", amount = 3})
table.insert(data.raw.recipe["sp-electrolyte"].ingredients, {type = "fluid", name = "chlorine", amount = 10})
table.insert(data.raw.recipe["sp-helium"].ingredients, {type = "fluid", name = "hydrogen", amount = 2})
table.insert(data.raw.recipe["sp-helium-3-from-helium-and-hydrogen"].ingredients, {type = "fluid", name = "hydrogen", amount = 10})
table.insert(data.raw.recipe["sp-gravitonium"].ingredients, {type = "item", name = "tritium", amount = 3})
table.insert(data.raw.recipe["sp-vacuum-tube"].ingredients, {type = "item", name = "glass", amount = 3})
table.insert(data.raw.recipe["sp-vacuum-tube"].ingredients, {type = "fluid", name = "hydrogen", amount = 5})
table.insert(data.raw.recipe["sp-liquid-nitrogen"].ingredients, {type = "fluid", name = "nitrogen", amount = 5})
table.insert(data.raw.recipe["sp-chronomatter"].ingredients, {type = "item", name = "imersite-powder", amount = 4})
table.insert(data.raw.recipe["sp-bioreactor"].ingredients, {type = "item", name = "biomass", amount = 10})
table.insert(data.raw.recipe["sp-grobgnum-explorer"].ingredients, {type = "item", name = "ai-core", amount = 20})
table.insert(data.raw.recipe["sp-heavy-gearbox"].ingredients, {type = "item", name = "steel-gear-wheel", amount = 10})
table.insert(data.raw.recipe["sp-differential"].ingredients, {type = "item", name = "steel-gear-wheel", amount = 6})

-- MARK: Add missing ingredients from recipe-changes.lua
table.insert(data.raw.recipe["concrete"].normal.ingredients, {"sand", 5})
table.insert(data.raw.recipe["steel-furnace"].normal.ingredients, {"stone-tablet", 40})
table.insert(data.raw.recipe["steel-furnace"].normal.ingredients, {"steel-beam", 20})
table.insert(data.raw.recipe["electric-furnace"].normal.ingredients, {"stone-tablet", 30})
table.insert(data.raw.recipe["electric-furnace"].normal.ingredients, {"steel-beam", 20})
table.insert(data.raw.recipe["electric-mining-drill"].normal.ingredients, {"iron-beam", 8})
table.insert(data.raw.recipe["assembling-machine-1"].normal.ingredients, {"iron-beam", 10})
table.insert(data.raw.recipe["assembling-machine-2"].normal.ingredients, {"iron-beam", 12})
table.insert(data.raw.recipe["lab"].normal.ingredients, {"iron-beam", 16})
table.insert(data.raw.recipe["lab"].normal.ingredients, {"glass", 20})
table.insert(data.raw.recipe["solar-panel"].ingredients, {"silicon", 40})
table.insert(data.raw.recipe["medium-electric-pole"].normal.ingredients, {"iron-beam", 6})
table.insert(data.raw.recipe["big-electric-pole"].normal.ingredients, {"steel-beam", 8})
table.insert(data.raw.recipe["substation"].normal.ingredients, {"steel-beam", 12})
table.insert(data.raw.recipe["chemical-plant"].normal.ingredients, {"glass", 30})
table.insert(data.raw.recipe["radar"].normal.ingredients, {"steel-beam", 6})
table.insert(data.raw.recipe["radar"].normal.ingredients, {"steel-plate", 16})
table.insert(data.raw.recipe["pump"].normal.ingredients, {"steel-plate", 3})
table.insert(data.raw.recipe["heat-pipe"].ingredients, {"lithium", 10})
table.insert(data.raw.recipe["rail"].ingredients, {"wood", 4})
table.insert(data.raw.recipe["rail"].ingredients, {"steel-beam", 2})
table.insert(data.raw.recipe["train-stop"].ingredients, {"steel-beam", 8})
table.insert(data.raw.recipe["fluid-wagon"].ingredients, {"steel-beam", 8})
table.insert(data.raw.recipe["artillery-wagon"].ingredients, {"automation-core", 8})
table.insert(data.raw.recipe["personal-roboport-equipment"].ingredients, {"automation-core", 5})
table.insert(data.raw.recipe["oil-refinery"].ingredients, {"glass", 20})
table.insert(data.raw.recipe["satellite"].ingredients, {"lithium-sulfur-battery", 20})

-- MARK: Add missing results
table.insert(data.raw.recipe["sp-gold"].results, {type = "item", name = "sand", probability = 0.98, amount = 3})
table.insert(data.raw.recipe["sp-platinum-iridium"].results, {type = "item", name = "sand", probability = 0.9807, amount = 3})
table.insert(data.raw.recipe["sp-sodium-and-chlorine"].results, {type = "fluid", name = "chlorine", amount = 3})
table.insert(data.raw.recipe["sp-high-purity-silicon"].results, {type = "item", name = "silicon", probability = 0.7, amount = 1})
table.insert(data.raw.recipe["sp-used-up-fuel-rod-reprocessing"].results, {type = "fluid", name = "heavy-water", amount = 10})
table.insert(data.raw.recipe["sp-advanced-used-up-fuel-rod-reprocessing"].results, {type = "fluid", name = "heavy-water", amount = 10})
table.insert(data.raw.recipe["sp-magnesium-slab"].results, {type = "fluid", name = "chlorine", amount = 10})
table.insert(data.raw.recipe["sp-sodium-hydroxide-from-salt"].results, {type = "fluid", name = "chlorine", amount = 50})
table.insert(data.raw.recipe["sp-tellurium-hydroxide"].results, {type = "item", name = "sand", probability = 0.92, amount = 3})
table.insert(data.raw.recipe["sp-cobalt-sulfate"].results, {type = "item", name = "sand", probability = 0.3, amount = 1})
table.insert(data.raw.recipe["sp-coal-from-acrocrystal"].results, {type = "item", name = "coke", probability=0.15, amount = 1})
table.insert(data.raw.recipe["sp-aluminum-ore-from-acrocrystal"].results, {type = "item", name = "silicon", probability=0.2, amount = 1})
table.insert(data.raw.recipe["sp-limestone-from-acrocrystal"].results, {type = "item", name = "sand", amount = 1})
table.insert(data.raw.recipe["sp-magnesium-ore-from-acrocrystal"].results, {type = "item", name = "lithium", probability=0.05, amount = 1})
table.insert(data.raw.recipe["sp-tinstone-from-acrocrystal"].results, {type = "item", name = "silicon", probability=0.15, amount = 1})
table.insert(data.raw.recipe["sp-zirconium-ore-from-acrocrystal"].results, {type = "item", name = "silicon", probability=0.15, amount = 1})
table.insert(data.raw.recipe["sp-calcium-from-acrovoid"].results, {type = "item", name = "lithium", probability=0.05, amount = 1})
table.insert(data.raw.recipe["sp-fluorine-from-acrovoid"].results, {type = "fluid", name = "chlorine", amount = 10})
table.insert(data.raw.recipe["sp-fluorine-from-acrovoid"].results, {type = "fluid", name = "oxygen", amount = 3})
table.insert(data.raw.recipe["sp-graphite-from-acrovoid"].results, {type = "item", name = "silicon", probability=0.2, amount = 1})
table.insert(data.raw.recipe["sp-graphite-from-acrovoid"].results, {type = "fluid", name = "nitrogen", amount = 10})
table.insert(data.raw.recipe["sp-graphite-from-acrovoid"].results, {type = "fluid", name = "oxygen", amount = 2})
table.insert(data.raw.recipe["sp-iridium-from-acrovoid"].results, {type = "item", name = "silicon", probability=0.2, amount = 1})
table.insert(data.raw.recipe["sp-iridium-from-acrovoid"].results, {type = "fluid", name = "nitrogen", amount = 10})
table.insert(data.raw.recipe["sp-iridium-from-acrovoid"].results, {type = "fluid", name = "oxygen", amount = 2})
table.insert(data.raw.recipe["sp-leadstone-from-acrovoid"].results, {type = "item", name = "silicon", probability=0.12, amount = 1})
table.insert(data.raw.recipe["sp-phosphorus-from-acrovoid"].results, {type = "item", name = "silicon", probability=0.01, amount = 1})
table.insert(data.raw.recipe["sp-phosphorus-from-acrovoid"].results, {type = "fluid", name = "nitrogen", amount = 2})
table.insert(data.raw.recipe["sp-sodium-from-acrovoid"].results, {type = "item", name = "lithium", probability=0.25, amount = 1})
table.insert(data.raw.recipe["sp-sodium-from-acrovoid"].results, {type = "fluid", name = "hydrogen", amount = 10})
table.insert(data.raw.recipe["sp-antimony-from-acrovoid"].results, {type = "fluid", name = "nitrogen", amount = 8})
table.insert(data.raw.recipe["sp-tellurium-from-acrovoid"].results, {type = "fluid", name = "nitrogen", amount = 8})
table.insert(data.raw.recipe["sp-sulfur-from-acrovoid"].results, {type = "item", name = "silicon", probability=0.15, amount = 1})
table.insert(data.raw.recipe["sp-sulfur-from-acrovoid"].results, {type = "fluid", name = "oxygen", amount = 15})  

-- MARK: Change recipe category
data.raw.recipe["sp-aluminum-sheet"].category = "electrolysis"
data.raw.recipe["sp-zinc-plate"].category = "electrolysis"
data.raw.recipe["sp-sodium-hydroxide-from-liquid-sodium"].category = "electrolysis"
data.raw.recipe["sp-nuclear-waste-processing"].category = "crushing"

-- MARK: recipe changes
util.change_recipe_ingredients("electronic-circuit-stone",
  {{"copper-cable", 3}, {"stone-tablet", 1}, {"sp-solder", 1}},
  {{"copper-cable", 8}, {"stone-tablet", 2}, {"sp-solder", 2}},
  0.5,
  1)
util.change_recipe_ingredients("kr-medium-container",
  {{"sp-bolts", 8}, {"steel-plate", 12}, {"steel-beam", 4}},
  {{"sp-bolts", 16}, {"steel-plate", 24}, {"steel-beam", 8}},
  2,
  4)
util.change_recipe_ingredients("kr-big-container",  -- "warehouse"
  {{"sp-bolts", 8}, {"steel-plate", 40}, {"steel-beam", 12}},
  {{"sp-bolts", 16}, {"steel-plate", 80}, {"steel-beam", 24}},
  6,
  12)
util.change_recipe_ingredients("kr-fluid-storage-1",  -- "large storage tank"
  {{"sp-bolts", 8}, {"steel-plate", 10}, {"sp-brass", 4}, {"sp-valve", 4}},
  {{"sp-bolts", 16}, {"steel-plate", 20}, {"sp-brass", 8}, {"sp-valve", 8}},
  6,
  12)
util.change_recipe_ingredients("kr-fluid-storage-2",  -- "huge storage tank"
  {{"sp-bolts", 8}, {"steel-plate", 4}, {"steel-beam", 12}, {"sp-brass", 16}, {"sp-valve", 12}},
  {{"sp-bolts", 16}, {"steel-plate", 80}, {"steel-beam", 24}, {"sp-brass", 32}, {"sp-valve", 24}},
  6,
  12)
util.change_recipe_ingredients("lithium-sulfur-battery",  -- "huge storage tank"
  {{"lithium", 1}, {"sp-aluminum-sheet", 1}, {type="fluid", name="sulfuric-acid", amount=10}, {"sp-graphite", 1}, {"sp-electrolyte", 1}},
  {{"lithium", 2}, {"sp-aluminum-sheet", 1}, {type="fluid", name="sulfuric-acid", amount=20}, {"sp-graphite", 1}, {"sp-electrolyte", 1}},
  4,
  6)

-- MARK: Krastorio Buildings
util.change_recipe_ingredients("kr-wind-turbine",
  {{"iron-plate", 12}, {"stone-brick", 4}, {"sp-bolts", 4}, {"electric-motor", 1}},
  {{"iron-plate", 24}, {"stone-brick", 4}, {"sp-bolts", 10}, {"electric-motor", 2}},
  10,
  20)
util.change_recipe_ingredients("kr-crusher",
  {{"iron-beam", 12}, {"iron-gear-wheel", 30}, {"sp-gearbox", 8}, {"sp-bolts", 36}, {"motor", 10}, {"stone-brick", 16}},
  {{"iron-beam", 24}, {"iron-gear-wheel", 60}, {"sp-gearbox", 12}, {"sp-bolts", 72}, {"motor", 20}, {"stone-brick", 32}},
  12,
  24)
util.change_recipe_ingredients("kr-greenhouse",
  {{"iron-beam", 24}, {"sp-bolts", 48}, {"glass", 40}, {"stone-brick", 16}},
  {{"iron-beam", 48}, {"sp-bolts", 96}, {"glass", 80}, {"stone-brick", 32}},
  16,
  32)
util.change_recipe_ingredients("kr-filtration-plant",
  {{"steel-beam", 48}, {"sp-copper-tube", 50}, {"sp-bolts", 60}, {"glass", 20}, {"electric-motor", 12}, {"electronic-circuit", 12}},
  {{"steel-beam", 96}, {"sp-copper-tube", 100}, {"sp-bolts", 120}, {"glass", 40}, {"electric-motor", 24}, {"electronic-circuit", 24}},
  24,
  48)
util.change_recipe_ingredients("kr-electrolysis-plant",
  {{"steel-beam", 36}, {"sp-bolts", 80}, {"glass", 24}, {"engine-unit", 8}, {"electronic-circuit", 8}},
  {{"iron-beam", 72}, {"sp-bolts", 160}, {"glass", 48}, {"engine-unit", 12}, {"electronic-circuit", 12}},
  20,
  40)
util.change_recipe_ingredients("kr-gas-power-station",
  {{"steel-beam", 20}, {"sp-bolts", 30}, {"pipe", 20}, {"engine-unit", 8}, {"sp-dynamo", 4}, {"sp-valve", 10}},
  {{"steel-beam", 40}, {"sp-bolts", 60}, {"pipe", 40}, {"engine-unit", 12}, {"sp-dynamo", 8}, {"sp-valve", 20}},
  20,
  40)
util.change_recipe_ingredients("kr-advanced-solar-panel",
  {{type = "fluid", name = "nitric-acid", amount = 25}, {"imersite-crystal", 10}, {"sp-tellurium", 3}, {"sp-titanium-frame", 20}, {"processing-unit", 2}},
  {{type = "fluid", name = "nitric-acid", amount = 50}, {"imersite-crystal", 15}, {"sp-tellurium", 10}, {"sp-titanium-frame", 50}, {"processing-unit", 3}},
  12,
  24)
util.change_recipe_ingredients("kr-energy-storage",
  {{"processing-unit", 10}, {"energy-control-unit", 30}, {"sp-yttrium", 8}, {"sp-cerium", 20}, {"sp-superconductor", 5}, {"sp-duralumin", 20}},
  {{"processing-unit", 20}, {"energy-control-unit", 60}, {"sp-yttrium", 12}, {"sp-cerium", 30}, {"sp-superconductor", 8}, {"sp-duralumin", 40}},
  30,
  60)
util.change_recipe_ingredients("kr-fusion-reactor",
  {{"concrete", 1000}, {"sp-stainless-steel", 1000}, {"sp-tungsten-slab", 300}, {"sp-graphene", 500}, {"sp-heat-resistant-tile", 200}, {"sp-control-unit", 100}, {"sp-advanced-compute-unit", 50}, {"sp-glass-fiber", 100}, {"sp-plate-heat-exchanger", 60}, {"sp-cryostat", 40}, {"sp-neodymium-magnet", 200}, {"sp-superconductor", 40}, {"sp-electromagnet", 250}, {"heat-pipe", 100}},
  {{"concrete", 4000}, {"sp-stainless-steel", 3000}, {"sp-tungsten-slab", 500}, {"sp-graphene", 1000}, {"sp-heat-resistant-tile", 200}, {"sp-control-unit", 300}, {"sp-advanced-compute-unit", 100}, {"sp-glass-fiber", 250}, {"sp-plate-heat-exchanger", 200}, {"sp-cryostat", 100}, {"sp-neodymium-magnet", 400}, {"sp-superconductor", 100}, {"sp-electromagnet", 600}, {"heat-pipe", 200}},
  700,
  3000)
util.change_recipe_ingredients("kr-advanced-steam-turbine",
  {{"electric-engine-unit", 20}, {"sp-turbine-rotor", 3}, {"sp-turbine-stator", 3}, {"sp-TiAlSn", 50}, {"sp-heavy-ball-bearing", 20}, {"sp-tungsten-carbide", 50}, {"sp-monocrystal", 30}},
  {{"electric-engine-unit", 40}, {"sp-turbine-rotor", 3}, {"sp-turbine-stator", 3}, {"sp-TiAlSn", 80}, {"sp-heavy-ball-bearing", 40}, {"sp-tungsten-carbide", 100}, {"sp-monocrystal", 50}},
  90,
  150)
util.change_recipe_ingredients("kr-antimatter-reactor",
  {{"ai-core", 100}, {"imersium-beam", 500}, {"energy-control-unit", 50}, {"sp-carbon-nanotubes", 200}, {"sp-nanowire", 120}, {"sp-plasma-capsule", 40}, {"sp-nanobot", 80}, {"sp-biochip", 100}, {"sp-flux-capacitor", 20}},
  {{"ai-core", 200}, {"imersium-beam", 1000}, {"energy-control-unit", 100}, {"sp-carbon-nanotubes", 400}, {"sp-nanowire", 250}, {"sp-plasma-capsule", 80}, {"sp-nanobot", 200}, {"sp-biochip", 200}, {"sp-flux-capacitor", 40}},
  1000,
  2000)
util.change_recipe_ingredients("kr-electric-mining-drill-mk2",
  {{"steel-beam", 12}, {"sp-bolts", 30}, {"sp-ceramics", 24}, {"electric-motor", 8}, {"sp-TiNb", 8}, {"sp-gearbox", 12}},
  {{"steel-beam", 20}, {"sp-bolts", 50}, {"sp-ceramics", 24}, {"electric-motor", 12}, {"sp-TiNb", 16}, {"sp-gearbox", 20}},
  14,
  28)
util.change_recipe_ingredients("kr-electric-mining-drill-mk3",
  {{"sp-diamond", 8}, {"sp-niobium-steel", 20}, {"electric-engine-unit", 4}, {"sp-invar", 8}, {"sp-heavy-gearbox", 6}},
  {{"sp-diamond", 16}, {"sp-niobium-steel", 36}, {"electric-engine-unit", 8}, {"sp-invar", 20}, {"sp-heavy-gearbox", 10}},
  20,
  40)
util.change_recipe_ingredients("kr-quarry-drill",
  {{"sp-diamond", 40}, {"sp-niobium-steel", 50}, {"electric-engine-unit", 20}, {"sp-invar", 20}, {"sp-pressure-tube", 12}, {"sp-compressor", 12}},
  {{"sp-diamond", 80}, {"sp-niobium-steel", 100}, {"electric-engine-unit", 40}, {"sp-invar", 40}, {"sp-pressure-tube", 24}, {"sp-compressor", 24}},
  60,
  120)
util.change_recipe_ingredients("kr-mineral-water-pumpjack",
  {{"sp-stainless-steel", 16}, {"sp-bronze-rod", 12}, {"sp-pressure-tube", 12}, {"sp-bolts", 24}, {"engine-unit", 8}},
  {{"sp-stainless-steel", 32}, {"sp-bronze-rod", 24}, {"sp-pressure-tube", 24}, {"sp-bolts", 48}, {"engine-unit", 16}},
  16,
  32)
util.change_recipe_ingredients("kr-substation-mk2",
  {{"sp-bolts", 20}, {"processing-unit", 4}, {"sp-aluminum-cable", 24}, {"imersium-beam", 12}, {"concrete", 16}, {"sp-electrode", 4}, {"sp-insulation-sheet", 12}},
  {{"sp-bolts", 40}, {"processing-unit", 8}, {"sp-aluminum-cable", 48}, {"imersium-beam", 24}, {"concrete", 32}, {"sp-electrode", 8}, {"sp-insulation-sheet", 20}},
  12,
  24)

-- MARK: AAI Industries Buildings
util.change_recipe_ingredients("burner-turbine",
  {{"iron-beam", 8}, {"stone-brick", 24}, {"sp-gearbox", 2}, {"motor", 2}},
  {{"iron-beam", 16}, {"stone-brick", 36}, {"sp-gearbox", 4}, {"motor", 4}},
  8,
  16)
  util.change_recipe_ingredients("fuel-processor",
  {{"iron-plate", 12}, {"stone-brick", 24}, {"sp-bolts", 20}, {"motor", 2}},
  {{"iron-plate", 16}, {"stone-brick", 36}, {"sp-bolts", 24}, {"motor", 4}},
  12,
  24)
util.change_recipe_ingredients("area-mining-drill",
  {{"sp-monocrystal", 4}, {"sp-niobium-steel", 24}, {"imersium-gear-wheel", 16}, {"sp-titanium-carbide", 20}, {"electric-engine-unit", 10}, {"sp-transformer", 4}},
  {{"sp-monocrystal", 8}, {"sp-niobium-steel", 32}, {"imersium-gear-wheel", 32}, {"sp-titanium-carbide", 30}, {"electric-engine-unit", 16}, {"sp-transformer", 8}},
  36,
  72)
util.change_recipe_ingredients("burner-assembling-machine",
  {{"stone-brick", 20}, {"iron-plate", 20}, {"sp-bolts", 24}, {"motor", 4}},
  {{"stone-brick", 40}, {"iron-plate", 40}, {"sp-bolts", 40}, {"motor", 8}},
  8,
  16)
util.change_recipe_ingredients("burner-lab",
  {{"stone-brick", 12}, {"iron-plate", 20}, {"copper-plate", 16}},
  {{"stone-brick", 24}, {"iron-plate", 40}, {"copper-plate", 32}},
  8,
  16)
util.change_recipe_ingredients("engine-unit",
  {{"sp-connecting-rod", 8}, {"steel-plate", 2}, {"sp-bolts", 6}, {"sp-gearbox", 1}},
  {{"sp-connecting-rod", 12}, {"steel-plate", 4}, {"sp-bolts", 16}, {"sp-gearbox", 2}},
  2.4,
  4.8)
util.change_recipe_ingredients("electric-engine-unit",
  {{"sp-electromagnet", 6}, {"sp-ball-bearing", 2}, {"sp-duralumin", 2}, {"sp-bolts", 6}, {type = "fluid", name = "lubricant", amount = 40}},
  {{"sp-electromagnet", 9}, {"sp-ball-bearing", 2}, {"sp-duralumin", 3}, {"sp-bolts", 8}, {type = "fluid", name = "lubricant", amount = 60}},
  6,
  8)

-- Remove crushing recipes
data.raw.recipe["kr-vc-sp-nuclear-waste"] = nil
data.raw.recipe["kr-vc-sp-blunagium-acrosphere-1"] = nil
data.raw.recipe["kr-vc-sp-blunagium-acrosphere-2"] = nil
data.raw.recipe["kr-vc-sp-grobgnum-acrosphere-1"] = nil
data.raw.recipe["kr-vc-sp-grobgnum-acrosphere-2"] = nil
data.raw.recipe["kr-vc-sp-rukite-acrosphere-1"] = nil
data.raw.recipe["kr-vc-sp-rukite-acrosphere-2"] = nil
data.raw.recipe["kr-vc-sp-yemnuth-acrosphere-1"] = nil
data.raw.recipe["kr-vc-sp-yemnuth-acrosphere-2"] = nil
data.raw.recipe["kr-vc-sp-acrocrystal"] = nil
data.raw.recipe["kr-vc-sp-acromatter"] = nil
data.raw.recipe["kr-vc-sp-acrovoid"] = nil
