local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")


data:extend({
  {
    type = "lab",
    name = "sp-kr-singularity-lab",
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/singularity-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 2, result = "sp-kr-singularity-lab" },
    max_health = 2000,
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "big-explosion",
    corpse = "sp-kr-big-random-pipes-remnant",
    resistances = {
      { type = "physical", percent = 60 },
      { type = "fire", percent = 90 },
      { type = "impact", percent = 90 },
    },
    collision_box = { { -3.75, -3.75 }, { 3.75, 3.75 } },
    selection_box = { { -3.9, -3.9 }, { 3.9, 3.9 } },
    fast_replaceable_group = "assembling-machine",
    -- "lab" do not have graphics_set in factorio 2.0.30
    on_animation = {
      layers = {
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-glow-light.png",
          priority = "high",
          width = 77,
          height = 59,
          shift = { 0, -0.8 },
          frame_count = 60,
          line_length = 6,
          animation_speed = 0.85,
          draw_as_light = true,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-glow.png",
          priority = "high",
          width = 77,
          height = 59,
          shift = { 0, -0.8 },
          frame_count = 60,
          line_length = 6,
          animation_speed = 0.85,
          blend_mode = "additive",
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-light.png",
          priority = "high",
          width = 260,
          height = 250,
          shift = { 0.0, -0.1 },
          draw_as_light = true,
          frame_count = 1,
          repeat_count = 60,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-working.png",
          width = 260,
          height = 250,
          shift = { 0.0, -0.1 },
          frame_count = 60,
          line_length = 10,
          animation_speed = 0.85,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-sh.png",
          priority = "medium",
          width = 274,
          height = 241,
          shift = { 0.22, 0.18 },
          frame_count = 1,
          draw_as_shadow = true,
          repeat_count = 60,
        },
      },
    },
    off_animation = {
      layers = {
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab.png",
          priority = "high",
          width = 260,
          height = 250,
          shift = { 0.0, -0.1 },
          frame_count = 1,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/singularity-lab/singularity-lab-sh.png",
          priority = "high",
          width = 274,
          height = 241,
          shift = { 0.22, 0.18 },
          frame_count = 1,
          draw_as_shadow = true,
        },
      },
    },
    light = {
      {
        intensity = 0.95,
        size = 5,
        shift = { 0.0, -0.6 },
        color = { r = 0, g = 0.917, b = 1 },
      },
    },
    researching_speed = 1,
    inputs =
    {
      "basic-tech-card",

      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "sp-electronic-science-pack-1",
      "sp-geological-science-pack-1",
      "sp-material-science-pack-1",

      "sp-automation-science-pack-2",
      "sp-logistic-science-pack-2",
      "sp-military-science-pack-2",
      "sp-chemical-science-pack-2",
      "sp-electronic-science-pack-2",
      "sp-geological-science-pack-2",
      "sp-material-science-pack-2",
      "sp-computer-science-pack-2",
      "sp-nuclear-science-pack-2",
      "production-science-pack",
      "utility-science-pack",

      "sp-automation-science-pack-3",
      "sp-logistic-science-pack-3",
      "sp-military-science-pack-3",
      "sp-chemical-science-pack-3",
      "sp-electronic-science-pack-3",
      "sp-geological-science-pack-3",
      "sp-material-science-pack-3",
      "sp-computer-science-pack-3",
      "sp-production-science-pack-3",
      "sp-nuclear-science-pack-3",
      "sp-utility-science-pack-3",
      "sp-space-science-pack-3",
      "sp-matter-science-pack",

      "space-science-pack",  -- Optimization tech card
      "sp-advanced-science-pack",
      "sp-singularity-science-pack",
      "sp-uniformity-science-pack"
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__Spaghetorio__/sounds/buildings/singularity-lab.ogg",
        volume = 0.5,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
      max_sounds_per_type = 6,
      apparent_volume = 1.25,
    },
    audible_distance_modifier = 25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      --emissions_per_minute = {pollution = 10}
    },
    energy_usage = "10MW",
    module_slots = 6,
    open_sound = { filename = "__Spaghetorio__/sounds/buildings/open.ogg", volume = 1 },
    close_sound = { filename = "__Spaghetorio__/sounds/buildings/close.ogg", volume = 1 },
  },
})
