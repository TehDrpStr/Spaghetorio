-- Source: https://youtu.be/tsDa_Qz3LF0?si=4sG11dFGr8eALM_H&t=1300
local function table_contains(table, value_to_search)
  for _, value in pairs(table) do
    if value == value_to_search then
      return true
    end
  end
  return false
end

local function changeItemIcon(name, icon, icon_size, icon_mipmaps)
  data.raw.item[name].icon = icon
  data.raw.item[name].icon_size = icon_size
  data.raw.item[name].icon_mipmaps = icon_mipmaps
end

if not mods["Krastorio2"] then
  -- Source: https://youtu.be/tsDa_Qz3LF0?si=4sG11dFGr8eALM_H&t=1300
  -- Go through every furnace and convert to assembling machine
  for key, value in pairs(data.raw.furnace) do
    -- Only Furnaces that do smelting
    if table_contains(value.crafting_categories, "smelting") then
      local furnace = table.deepcopy(value)
      -- Except stone-furnace
      if not (value.name == "stone-furnace") then
        furnace.type = "assembling-machine"
        table.insert(furnace.crafting_categories, "advanced-crafting")

        data.raw.furnace[key] = nil
        data:extend({furnace})
      end
    end
  end
end


-- Changes steel-plate
changeItemIcon("steel-plate", "__Spaghenutti__/graphics/dummy/dummy-item-replacement-default.png", 128, nil)

-- Add items to fuel subgroup
data.raw.item["solid-fuel"].subgroup = "fuel"
data.raw.item["rocket-fuel"].subgroup = "fuel"
data.raw.item["nuclear-fuel"].subgroup = "fuel"
data.raw.item["uranium-fuel-cell"].subgroup = "fuel"
data.raw.item["used-up-uranium-fuel-cell"].subgroup = "fuel"
