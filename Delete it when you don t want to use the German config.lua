--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
--Benenne diese Datei in "config" um und lösche die normale Config-Datei, um die übersetzte deutsche Version zu nutzen.--
Config = {}

Config.ExtrasEnabled = true

Config.Locales = { -- Locales feel free to change them
['no_variants'] = "Es scheint keine Varianten dafür zu geben!",
['wrong_ped'] = "Dieses Modell erlaubt diese Option nicht.",
['already_wearing'] = "Du trägst das bereits!",
['nothing_to_remove'] = "Es scheint nichts zu geben, was du entfernen könntest.",
},

lib.registerRadial({
id = 'extrasmenu',
items = {
{
label = 'Brille',
icon = 'glasses',
type = 'client',
onSelect = function()
ExecuteCommand("glasses")
end
}, 
{ 
label = 'Visier',
icon = 'hat-cowboy-side',
type = 'client',
onSelect = function()
ExecuteCommand("visor")
end
}, 
-- {
--      label = 'Vest',
--      icon = 'vest', --Du kannst es bei Bedarf wieder aktivieren--
--       type = 'client',
-- onSelect = function()
--	ExecuteCommand("vest")
-- end
  -- }, 
{
label = 'Tasche',
icon = 'bag-shopping',
type = 'client',
onSelect = function()
ExecuteCommand("bag")
end
}, 
{
label = 'Armband',
icon = 'user',
type = 'client',
onSelect = function()
ExecuteCommand("bracelet")
end
}, 
{
label = 'Uhr',
icon = 'stopwatch',
type = 'client',
onSelect = function()
ExecuteCommand("watch")
end
}, 
{
 label = 'Handschuhe',
icon = 'mitten',
type = 'client',
onSelect = function()
ExecuteCommand("gloves")
end
},
{
label = 'Ohr',
icon = 'ear-deaf',
type = 'client',
onSelect = function()
ExecuteCommand("ear")
end
}, 
{
label = 'Kette',
icon = 'user-tie',
type = 'client',
onSelect = function()
ExecuteCommand("neck")
end},
}
})
   
lib.registerRadial({
id = 'clothingmenu',
items = {
     -- {
       --   label = 'Haare',
      --    icon = 'user', --Du kannst es bei Bedarf wieder aktivieren--
      --    type = 'client',
		  --onSelect = function()
			--ExecuteCommand("hair")
		 -- end
     --     
     -- }, 

     --  {
      --    label = 'Torso',
     --     icon = 'shirt',
     --     type = 'client', --Du kannst es bei Bedarf wieder aktivieren--
	--	  onSelect = function()
	--		ExecuteCommand("top")
		--  end
     -- },
     {
      label = 'Maske',
      icon = 'masks-theater',
      type = 'client',
      onSelect = function()
        ExecuteCommand("mask")
      end
    },
{
  label = 'Schuhe',
  icon = 'shoe-prints',
  type = 'client',
onSelect = function()
ExecuteCommand("shoes")
end
},
{
  label = 'Hose',
  icon = 'user',
  type = 'client',
  onSelect = function()
    ExecuteCommand("pants")
  end
},
  {
    label = 'Oberteil',
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
  label = 'Hut',
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
      label = 'Kleidung',
      icon = 'shirt',
      menu = 'clothingmenu'
    },
  })

Config.Commands = {
        ["top"] = {
        Func = function() ToggleClothing("Top") end,
        Sprite = "top",
        Desc = "Ziehen Sie Ihr Oberteil aus/an",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function() ToggleClothing("gloves") end,
        Sprite = "gloves",
        Desc = "Handschuhe ausziehen/anziehen",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function() ToggleProps("visor") end,
        Sprite = "visor",
        Desc = "Visier",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function() ToggleClothing("Bag") end,
        Sprite = "bag",
        Desc = "Öffne oder verschließe deine Tasche",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function() ToggleClothing("Shoes") end,
        Sprite = "shoes",
        Desc = "Schuhe ausziehen/anziehen",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function() ToggleClothing("Vest") end,
        Sprite = "vest",
        Desc = "Weste ausziehen/anziehen",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function() ToggleClothing("hair") end,
        Sprite = "hair",
        Desc = "Haar hoch/runter/zu einem Dutt/Ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function() ToggleProps("Hat") end,
        Sprite = "hat",
        Desc = "Hut ab/auf",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function() ToggleProps("Glasses") end,
        Sprite = "glasses",
        Desc = "Brille ab/auf",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function() ToggleProps("Ear") end,
        Sprite = "ear",
        Desc = "Nehmen Sie Ihr Ohrzubehör ab/an",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function() ToggleClothing("Neck") end,
        Sprite = "neck",
        Desc = "Nehmen Sie Ihr Hals-Accessoire ab/an",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function() ToggleProps("Watch") end,
        Sprite = "watch",
        Desc = "Nehmen Sie Ihre Uhr ab/an",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function() ToggleProps("Bracelet") end,
        Sprite = "bracelet",
        Desc = "Nehmen Sie Ihr Armband ab/an",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function() ToggleClothing("Mask") end,
        Sprite = "mask",
        Desc = "Nehmen Sie Ihre Maske ab/auf",
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
        Desc = "Ziehen Sie Ihr Oberteil aus/an",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nichts zum Zurücksetzen', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Alles wieder in den Normalzustand versetzen",
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
        Desc = "Tasche abnehmen/aufsetzen",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}
--German translation made by maske0926--