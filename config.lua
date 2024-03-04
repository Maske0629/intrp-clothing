Config = {}

Config.ExtrasEnabled = true

Config.Locales = { -- Locales feel free to change them
['no_variants'] = "There don't seem to be any variants for this!",
['wrong_ped'] = "This ped model does not allow for this option",
['already_wearing'] = "You are already wearing that!",
['nothing_to_remove'] = "You don't appear to have anything to remove",
},

lib.registerRadial({
id = 'extrasmenu',
items = {
 {
label = 'Glasses',
icon = 'glasses',
type = 'client',
onSelect = function()
ExecuteCommand("glasses")
end
},
{
label = 'Visor',
icon = 'hat-cowboy-side',
type = 'client',
onSelect = function()
ExecuteCommand("visor")
end
}, 
-- {
--
--      label = 'Vest',
--      icon = 'vest', --You can reactivate it if you want--
--       type = 'client',
-- onSelect = function()
--	ExecuteCommand("vest")
-- end
-- }, 
{
label = 'Bag',
icon = 'bag-shopping',
type = 'client',
onSelect = function()
ExecuteCommand("bag")
end
}, 
{
label = 'Bracelet',
icon = 'user',
type = 'client',
onSelect = function()
ExecuteCommand("bracelet")
end
}, 
{
label = 'Watch',
icon = 'stopwatch',
type = 'client',
onSelect = function()
ExecuteCommand("watch")
end
}, 
{
label = 'Gloves',
icon = 'mitten',
type = 'client',
onSelect = function()
ExecuteCommand("gloves")
end
},
{
label = 'Ear Piece',
icon = 'ear-deaf',
type = 'client',
onSelect = function()
ExecuteCommand("ear")
end
}, 
{
label = 'Neck',
icon = 'user-tie',
type = 'client',
onSelect = function()
ExecuteCommand("neck")
end
},
}
})

lib.registerRadial({
    id = 'clothingmenu',
    items = {
     -- {
       --   label = 'Hair',
      --    icon = 'user', --You can reactivate it if you want--
      --    type = 'client',
		  --onSelect = function()
			--ExecuteCommand("hair")
		 -- end
     --     
     -- }, 

     --  {
      --    label = 'Top',
     --     icon = 'shirt',
     --     type = 'client', --You can reactivate it if you want--
	--	  onSelect = function()
	--		ExecuteCommand("top")
		--  end
     -- },
     {

      label = 'Mask',
      icon = 'masks-theater',
      type = 'client',
      onSelect = function()
        ExecuteCommand("mask")
      end
  
  },
{
  label = 'Shoes',
  icon = 'shoe-prints',
  type = 'client',
onSelect = function()
ExecuteCommand("shoes")
end
},
{
  label = 'Pants',
  icon = 'user',
  type = 'client',
  onSelect = function()
    ExecuteCommand("pants")
  end
},
  {
    label = 'Shirt',
    icon = 'shirt',
    type = 'client',
onSelect = function()
ExecuteCommand("shirt")
end  
}, 
{
  label = 'Extras',
  icon = 'plus',
  menu = 'extrasmenu'
  
},
{
  label = 'Hat',
  icon = 'hat-cowboy-side',
  type = 'client',
  onSelect = function()
    ExecuteCommand("hat")
  end
}
  }
  })
   
  lib.addRadialItem({
    {
      id = 'clothing',
      label = 'Clothes',
      icon = 'shirt',
      menu = 'clothingmenu'
    },
  })




Config.Commands = {
        ["top"] = {
        Func = function() ToggleClothing("Top") end,
        Sprite = "top",
        Desc = "Take your shirt off/on",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function() ToggleClothing("gloves") end,
        Sprite = "gloves",
        Desc = "Take your gloves off/on",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function() ToggleProps("visor") end,
        Sprite = "visor",
        Desc = "Toggle hat variation",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function() ToggleClothing("Bag") end,
        Sprite = "bag",
        Desc = "Opens or closes your bag",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function() ToggleClothing("Shoes") end,
        Sprite = "shoes",
        Desc = "Take your shoes off/on",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function() ToggleClothing("Vest") end,
        Sprite = "vest",
        Desc = "Take your vest off/on",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function() ToggleClothing("hair") end,
        Sprite = "hair",
        Desc = "Put your hair up/down/in a bun/ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function() ToggleProps("Hat") end,
        Sprite = "hat",
        Desc = "Take your hat off/on",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function() ToggleProps("Glasses") end,
        Sprite = "glasses",
        Desc = "Take your glasses off/on",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function() ToggleProps("Ear") end,
        Sprite = "ear",
        Desc = "Take your ear accessory off/on",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function() ToggleClothing("Neck") end,
        Sprite = "neck",
        Desc = "Take your neck accessory off/on",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function() ToggleProps("Watch") end,
        Sprite = "watch",
        Desc = "Take your watch off/on",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function() ToggleProps("Bracelet") end,
        Sprite = "bracelet",
        Desc = "Take your bracelet off/on",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function() ToggleClothing("Mask") end,
        Sprite = "mask",
        Desc = "Take your mask off/on",
        Button = 6,
        Name = "Mask"
    }
}

local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

Config.ExtraCommands = {
    ["pants"] = {
        Func = function() ToggleClothing("Pants", true) end,
        Sprite = "pants",
        Desc = "Take your pants off/on",
        Name = "Pants",
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ["shirt"] = {
        Func = function() ToggleClothing("Shirt", true) end,
        Sprite = "shirt",
        Desc = "Take your shirt off/on",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Revert everything back to normal",
        Name = "reset",
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ["bagoff"] = {
        Func = function() ToggleClothing("Bagoff", true) end,
        Sprite = "bagoff",
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped["Bagoff"]
            if LastEquipped["Bagoff"] then
                if bags[BagOff.Drawable] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            else
                return false
            end
        end,
        Desc = "Take your bag off/on",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}
