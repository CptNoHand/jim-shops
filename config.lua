print("^2Jim^7-^2Shops v^41^7.^47 ^7- ^2Shop Script by ^1Jimathy^7")

-- If you need support I now have a discord available, it helps me keep track of issues and give better support.

-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false, -- Enable to add debug boxes and message.
	img = "qb-inventory/html/images/", -- Set this to your inventory
	JimMenu = true, -- Enable this if you are using an updated qb-menu resource with icon support
	ApGov = true, -- Add support for AP-Goverment Tax 
	Peds = false, -- Set to true if you want Shops to have Peds
	Limit = true, -- Enable this to add Stash features, This adds limits to items and gets refilled at each restart
	MaxSlots = 41, -- Set this to your player inventory slot count, this is default "41"
	BlackMarket = true, -- enable to add blackmarket locations (defined at the bottom of this file)
	Measurement = "kg", -- Custom Weight measurement
	Gabz247 = true,  -- Enable if using gabz 247 stores
	GabzAmmu = true, -- Enable if using gabz Ammunation stores
	VendOverride = true, -- Enable this if you want all the vending machines to use this script
	RandomAmount = true, -- Sets wether a stash should have a "random" amount of stock or full.

	Scenarios = { -- List of scenarios the peds do, This is called "fun", much better than standing staring at the void.
		"WORLD_HUMAN_GUARD_PATROL",
		"PROP_HUMAN_STAND_IMPATIENT",
		"WORLD_HUMAN_VALET",
		"WORLD_HUMAN_AA_COFFEE",
		"WORLD_HUMAN_AA_SMOKE",
		"WORLD_HUMAN_DRUG_DEALER",
		"WORLD_HUMAN_GUARD_STAND_CASINO",
	},
	Products = {
		["normal"] = {
			{ name = "tosti", price = 2, amount = 50, },
			{ name = "water_bottle", price = 2, amount = 50, },
			{ name = "kurkakola", price = 2, amount = 50, },
			{ name = "twerks_candy", price = 2, amount = 50, },
			{ name = "snikkel_candy", price = 2, amount = 50, },
			{ name = "sandwich", price = 2, amount = 50, },
			{ name = "beer", price = 7, amount = 50, },
			{ name = "whiskey", price = 10, amount = 50, },
			{ name = "vodka", price = 12, amount = 50, },
			{ name = "lighter", price = 2, amount = 50, },
			{ name = "rolling_paper", price = 2, amount = 5000,  },
			{ name = "redwoodcigs", price = 50, amount = 50, info = { uses = 20 }, },
		},
		["bar"] = {
			{ name = "water_bottle", price = 2, amount = 50, },
			{ name = "beer", price = 7, amount = 50, },
			{ name = "whiskey", price = 10, amount = 50, },
			{ name = "vodka", price = 12, amount = 50, },
		},
		["hardware"] = {
			{ name = "weapon_wrench", price = 250, amount = 250, },
			{ name = "weapon_hammer", price = 250, amount = 250, },
			{ name = "screwdriverset", price = 350, amount = 50, },
			{ name = "phone", price = 750, amount = 50, },
			{ name = "radio", price = 2500, amount = 50, },
			{ name = "ammonia", price = 20, amount = 15, },
			{ name = "rope", price = 20, amount = 15, },
		},
		["masker"] = {
			{ name = "terror", price = 500, amount = 250, },
			{ name = "hockeymask", price = 500, amount = 250, },
			{ name = "blackbandana", price = 500, amount = 50, },
			{ name = "tshirtmask", price = 500, amount = 50, },
			{ name = "scarecrowmask", price = 500, amount = 50, },
			{ name = "scarf", price = 500, amount = 50, },
			{ name = "monkeymask", price = 500, amount = 50, },
			{ name = "skullmask", price = 500, amount = 50, },
			{ name = "terrorwit", price = 500, amount = 50, },
			{ name = "feest", price = 500, amount = 50, },
			{ name = "noselong", price = 500, amount = 150, },
			{ name = "blauw", price = 500, amount = 150, },
			{ name = "skullzwart", price = 500, amount = 250, },
			{ name = "silver", price = 500, amount = 250, },
			{ name = "zwart1", price = 500, amount = 50, },
			{ name = "zwart2", price = 500, amount = 50, },
			{ name = "please", price = 500, amount = 50, },
			{ name = "sok", price = 500, amount = 50, },
			{ name = "zak", price = 500, amount = 50, },
			{ name = "groen", price = 500, amount = 50, },
			{ name = "bandanab", price = 500, amount = 50, },
			{ name = "bivak1", price = 500, amount = 50, },
			{ name = "roodc", price = 500, amount = 150, },
			{ name = "clown", price = 500, amount = 150, },
			{ name = "gorilla", price = 500, amount = 50, },
			{ name = "paard", price = 500, amount = 50, },
			{ name = "paardu", price = 500, amount = 50, },
			{ name = "skullr", price = 500, amount = 50, },
			{ name = "masker3", price = 500, amount = 50, },
			{ name = "helm1", price = 500, amount = 50, },
		},
		["weedshop"] = {
			{ name = "weapon_poolcue", price = 100, amount = 10, },
			{ name = "empty_weed_bag", price = 1, amount = 1500, },
			{ name = "rolling_paper", price = 1, amount = 1500, },
			{ name = "water", price = 1, amount = 1500, },
			{ name = "blottingpaper", price = 2, amount = 1500, },
			{ name = "shears", price = 250, amount = 5, },
			{ name = "cagoule", price = 25, amount = 1500, },
		},
		["gearshop"] = {
			{ name = "diving_gear", price = 2500, amount = 10, },
			{ name = "jerry_can", price = 200, amount = 50, },
			{ name = "fishingrod", price = 100, amount = 1000, },
			{ name = "fishingbait", price = 2, amount = 1000, },
			{ name = "skateboard", price = 250, amount = 1000, },
			{ name = "spray", price = 200, amount = 10, },
			{ name = "spray_remover", price = 100, amount = 10, },
			{ name = "backpack_small", price = 750, amount = 5, },
			{ name = "backpack_medium", price = 1250, amount = 10, },
			{ name = "backpack_large", price = 2000, amount = 5, },
			{ name = "kq_outfitbag", price = 2000, amount = 5, },
		},
		["leisureshop"] = {
			{ name = "parachute", price = 2500, amount = 10, },
			{ name = "binoculars", price = 50, amount = 50, },
			{ name = "diving_gear", price = 2500, amount = 10, },
			{ name = "diving_fill", price = 500, amount = 10, },
			{ name = "syphoningkit", price = 2500, amount = 10, },
		},
		["weapons"] = {
			{ name = "weapon_bat", price = 250, amount = 250, },
			{ name = "weapon_hatchet",price = 250, amount = 250, },
		},
		["pills"] = {
			{ name = "painkillers", price = 100, amount = 250, },
		},
		["digitalden"] = {
			{ name = "classic_phone", price = 850, amount = 10, },
			{ name = "mp3", price = 250, amount = 10, },
			{ name = "fitbit", price = 500, amount = 10, },
			{ name = "radio", price = 2000, amount = 10, },
			{ name = "black_phone", price = 850, amount = 10, },
			{ name = "blue_phone", price = 850, amount = 10, },
			{ name = "gold_phone", price = 850, amount = 10, },
			{ name = "red_phone", price = 850, amount = 10, },
			{ name = "green_phone", price = 850, amount = 10, },
			{ name = "greenlight_phone", price = 850, amount = 10, },
			{ name = "pink_phone", price = 850, amount = 10, },
			{ name = "white_phone", price = 850, amount = 10, },
			{ name = "sim_card", price = 99, amount = 10, },
			{ name = "phone_module", price = 200, amount = 10, },
		},
		["coffeeplace"] = {
			{ name = "coffee", price = 5, amount = 500 },
			{ name = "lighter", price = 2, amount = 50 },
		},
		["electronics"] = {
			{ name = "screwdriverset", price = 350, amount = 50, },
			{ name = "binoculars", price = 50, amount = 50, },
		},
		["vending"] = {
			{ name = "water_bottle", price = 100, amount = 25, },
			{ name = "kurkakola", price = 100, amount = 25, },
			{ name = "sprunk", price = 100, amount = 25, },
			{ name = "sprunklight", price = 100, amount = 25, },
			{ name = "ecola", price = 100, amount = 25, },
			{ name = "ecolalight", price = 100, amount = 25, },
			{ name = "twerks_candy", price = 100, amount = 25, },
			{ name = "snikkel_candy", price = 100, amount = 25, },
		},
		["blackmarket"] = {
			{ name = "laptop", price = 7500, amount = 1 },
		},
	},
}

Config.SellCasinoChips = {
    coords = vector4(950.37, 34.72, 71.87, 33.82),
    ped = 'S_M_Y_CASINO_01',
    pricePer = 1,
}

Config.Locations = {
    -- 24/7 Locations
    ["247supermarket"] = {
        ["label"] = "24/7 Supermarket",
		["type"] = "items",
		["model"] = {
			`mp_m_shopkeep_01`,
			`S_F_Y_Shop_LOW`,
			`S_F_Y_SweatShop_01`,
		},
		["killable"] = true,
		["logo"] = "https://i.imgur.com/bPcM0TM.png",
        ["coords"] = {
			vector4(24.5, -1346.19, 29.5, 266.78),
			vector4(-3039.91, 584.26, 7.91, 16.79),
			vector4(-3243.27, 1000.1, 12.83, 358.73),
			vector4(1728.28, 6416.03, 35.04, 242.45),
			vector4(1697.96, 4923.04, 42.06, 326.61),
			vector4(1959.6, 3740.93, 32.34, 296.84),
			vector4(549.16, 2670.35, 42.16, 92.53),
			vector4(2677.41, 3279.8, 55.24, 334.16),
			vector4(2556.19, 380.89, 108.62, 355.58),
			vector4(372.82, 327.3, 103.57, 255.46),
			vector4(161.21, 6642.32, 31.61, 223.57),
		},
        ["products"] = Config.Products["normal"],
        ["blipsprite"] = 628,
		["blipcolour"] = 2,
    },
    -- LTD Gasoline Locations
    ["ltdgasoline"] = {
        ["label"] = "LTD Gasoline",
		["type"] = "items",
		["model"] = {
			`s_m_m_autoshop_02`,
			`S_F_M_Autoshop_01`,
			`S_M_M_AutoShop_01`,
			`S_M_M_Autoshop_03`,
			`IG_Benny`,
			`IG_Benny_02`,
			`MP_F_BennyMech_01`,
		},
		["logo"] = "https://static.wikia.nocookie.net/gtawiki/images/7/72/LTD-GTAO-LSTunersBanner.png",
        ["coords"] = {
			vector4(-47.42, -1758.67, 29.42, 47.26),
			vector4(-706.17, -914.64, 19.22, 88.77),
			vector4(-1819.53, 793.49, 138.09, 131.46),
			vector4(1164.82, -323.66, 69.21, 106.86),
		},
        ["products"] = Config.Products["normal"],
        ["blipsprite"] = 628,
		["blipcolour"] = 5,
    },
    -- Rob's Liquor Locations
    ["robsliquor"] = {
        ["label"] = "Rob's Liqour",
		["type"] = "items",
		["model"] = {
			`cs_nervousron`,
			`IG_RussianDrunk`,
			`U_M_Y_MilitaryBum`,
			`A_F_M_TrampBeac_01`,
			`A_M_M_Tramp_01`,
		},
		["logo"] = "https://static.wikia.nocookie.net/gtawiki/images/d/de/RebsLiquor-GTAV.png",
        ["coords"] = {
			vector4(-1221.38, -907.89, 12.33, 27.51),
			vector4(-1486.82, -377.48, 40.16, 130.89),
			vector4(-2966.41, 391.62, 15.04, 87.82),
			vector4(1165.15, 2710.78, 38.16, 177.96),
			vector4(1134.3, -983.26, 46.42, 276.3),
		},
        ["products"] = Config.Products["bar"],
        ["blipsprite"] = 628,
		["blipcolour"] = 31,
    },
    -- Hardware Store Locations
    ["hardware"] = {
        ["label"] = "Hardware Store",
		["type"] = "items",
		["model"] = {
			`s_m_m_autoshop_02`,
			`S_F_M_Autoshop_01`,
			`S_M_M_AutoShop_01`,
			`S_M_M_Autoshop_03`,
			`IG_Benny`,
			`IG_Benny_02`,
			`MP_F_BennyMech_01`,
		},
		["coords"] = {
			vector4(46.52, -1749.55, 29.64, 50.82),
			vector4(2747.76, 3472.9, 55.67, 243.88),
			vector4(-421.65, 6135.97, 31.88, 232.98),
		},
        ["products"] = Config.Products["hardware"],
        ["blipsprite"] = 402,
		["blipcolour"] = 5,
    },
	-- Ammunation VANILLA Locations
    ["ammunation"] = {
        ["label"] = "Ammunation",
        ["targetLabel"] = "Open Ammunation",
		["type"] = "weapons",
		["model"] = {
			`s_m_m_ammucountry`,
			`S_M_Y_AmmuCity_01`,
			`MP_M_WareMech_01`,
			`A_M_M_Farmer_01`,
			`MP_M_ExArmy_01`,
			`S_M_Y_ArmyMech_01`,
			`S_M_M_Armoured_02`,
		},
		["logo"] = "https://static.wikia.nocookie.net/gtawiki/images/a/aa/Ammunation-GTAV.png",
        ["coords"] = {
            vector4(808.94, -2158.99, 29.62, 330.26),
            vector4(-660.98, -933.6, 21.83, 154.74),
			vector4(1693.16, 3761.94, 34.71, 189.83),
            vector4(-330.72, 6085.81, 31.45, 190.52),
			vector4(253.41, -51.67, 69.94, 28.88),
			vector4(23.69, -1105.95, 29.8, 124.58),
            vector4(2566.81, 292.54, 108.73, 320.09),
            vector4(-1118.19, 2700.5, 18.55, 185.31),
            vector4(841.31, -1035.28, 28.19, 334.27),
			vector4(-1304.44, -395.68, 36.7, 41.85),
		},
        ["products"] = Config.Products["weapons"],
		["hideblip"] = true,
    },
	 -- Police Locations
	["police"] = {
		["label"] = "Kitchen",
		["targetLabel"] = "Kaufe Nahrung&Getränke",
		["type"] = "items",
		["model"] = {
			`S_M_M_HighSec_01`,
		},
		["coords"] = {
			vector4(463.06, -982.67, 30.69, 45.07),
		},
		["products"] = Config.Products["normal"],
		["hideblip"] = true,
		["blipsprite"] = 617,
		["blipcolour"] = 0,
	},

    -- Weedshop Locations
    ["weedshop"] = {
		["label"] = "Smoke on the Water",
		["type"] = "items",
		["model"] = {
			`mp_f_weed_01`,
			`MP_M_Weed_01`,
			`A_M_Y_MethHead_01`,
			`A_F_Y_RurMeth_01`,
			`a_m_y_hippy_01`,
		},
		["coords"] = { vector4(-1210.85, -1465.12, 4.37, 303.0), },
		["products"] = Config.Products["weedshop"],
		["hideblip"] = true,
	},

    -- Bean Coffee Locations
    ["beancoffee"] = {
		["label"] = "Bean Machine Coffee",
		["type"] = "items",
		["model"] = {
			`A_F_Y_Hipster_02`,
		},
		["coords"] = {
			vector4(-628.97, 238.27, 81.9, 1.28),
			vector4(126.55, -1028.12, 29.36, 343.0),
		},
		["products"] = Config.Products["coffeeplace"],
		["hideblip"] = true,
    },

	-- Digital Den Locations
    ["digitalden"] = {
		["label"] = "Digital Den",
		["type"] = "items",
		["model"] = {
			`A_F_Y_Hipster_02`,
		},
		["coords"] = {
			vector4(-1232.12, -1439.73, 4.37, 217.03),
		},
		["products"] = Config.Products["digitalden"],
		["hideblip"] = true,
    },

    -- Sea Word Locations digitalden
    ["seaworld"] = {
		["label"] = "Sea World Gear",
		["type"] = "items",
		["model"] = {
			`mp_m_boatstaff_01`,
			`a_m_y_beach_01`,
		},
		["coords"] = { vector4(-1686.48, -1072.53, 13.15, 49.85), },
		["products"] = Config.Products["gearshop"],
		["blipsprite"] = 52,
		["blipcolour"] = 3,
	},

    -- Leisure Shop Locations
    ["leisureshop"] = {
		["label"] = "Leisure Shop",
		["type"] = "items",
		["model"] = {
			`mp_m_boatstaff_01`,
			`a_m_y_beach_01`,
		},
		["coords"] = { vector4(-1505.67, 1512.29, 115.29, 244.94) },
		["products"] = Config.Products["leisureshop"],
		["blipsprite"] = 52,
		["blipcolour"] = 2,
    },

	-- Leisure Shop Locations
    ["pills"] = {
		["label"] = "Apotheke",
		["type"] = "items",
		["model"] = {
			`mp_m_boatstaff_01`,
			`a_m_y_beach_01`,
		},
		["coords"] = { vector4(-1830.39, -381.07, 49.4, 45.02) },
		["products"] = Config.Products["pills"],
		["hideblip"] = true,
    },

    -- Local Store Locations
    ["masker"] = {
        ["label"] = "Masquerade",
		["type"] = "items",
		["model"] = {
			`cs_nervousron`,
			`IG_RussianDrunk`,
			`S_M_M_StrVend_01`,
		},
        ["coords"] = { vector4(-1262.78, -1424.2, 4.37, 128.39), },
        ["products"] = Config.Products["masker"],
        ["hideblip"] = true,
    },
}

--if Gabz locations are enabled, override their coords with these
if Config.Gabz247 then
	Config.Locations["247supermarket"]["coords"] = {
		vector4(24.91, -1346.86, 29.5, 268.37),
		vector4(-3039.64, 584.78, 7.91, 21.88),
		vector4(-3242.73, 1000.46, 12.83, 2.08),
		vector4(1728.44, 6415.4, 35.04, 243.26),
		vector4(1697.96, 4923.04, 42.06, 326.61),
		vector4(1960.26, 3740.6, 32.34, 300.45),
		vector4(548.67, 2670.94, 42.16, 101.0),
		vector4(2677.97, 3279.95, 55.24, 325.89),
		vector4(2556.8, 381.27, 108.62, 359.15),
		vector4(373.08, 326.75, 103.57, 253.14),
		vector4(161.2, 6641.74, 31.7, 221.02),
		vector4(812.86, -782.01, 26.17, 270.01),
	}
end
if Config.GabzAmmu then
	Config.Locations["ammunation"]["coords"] = {
		vector4(-659.16, -939.79, 21.83, 91.25),
		vector4(812.85, -2155.16, 29.62, 355.85),
		vector4(1698.04, 3757.43, 34.71, 136.69),
		vector4(-326.03, 6081.17, 31.45, 138.33),
		vector4(246.87, -51.3, 69.94, 335.47),
		vector4(18.71, -1108.24, 29.8, 158.71),
		vector4(2564.85, 298.83, 108.74, 283.17),
		vector4(-1112.4, 2697.08, 18.55, 152.96),
		vector4(841.16, -1028.63, 28.19, 294.2),
		vector4(-1310.71, -394.33, 36.7, 340.51),
	}
end
if Config.BlackMarket then
	Config.Locations["blackmarket"] = {
		["label"] = "Black Market",
		["type"] = "items",
		["model"] = {
			`mp_f_weed_01`,
			`MP_M_Weed_01`,
			`A_M_Y_MethHead_01`,
			`A_F_Y_RurMeth_01`,
			`A_M_M_RurMeth_01`,
			`MP_F_Meth_01`,
			`MP_M_Meth_01`,
		},
		["coords"] = {
			vector4(-401.35, 1052.25, 323.84, 31.37),
		},
		["products"] = Config.Products["blackmarket"],
		["hideblip"] = true,
	}
end

if Config.VendOverride then
	Config.Locations["vendingmachine"] = {
		["label"] = "Vending Machine",
		["targetIcon"] = "fas fa-calculator",
		["targetLabel"] = "Vending Machine",
		["type"] = "items",
		["logo"] = "https://static.wikia.nocookie.net/gtawiki/images/d/d4/Ecola-GTAO-LSTunersBanner.png",
		["model"] = { -- You can add more models to this, but these make the most sense for the vending machine stuff
			`prop_vend_soda_01`,
			`prop_vend_soda_02`,
			`prop_vend_snak_01`,
			`prop_vend_snak_01_tu`
		},
		["coords"] = { -- If you want to place custom vending machine locations
			vector4(131.13, -3007.16, 7.04, 0.0), -- GABZ LS Tuners
		},
		["products"] = Config.Products["vending"],
	}
end
Config.ItemModels = {
	["repairkit"] = `v_ind_cs_toolbox4`,
	["advancedrepairkit"] = `v_ind_cs_toolbox4`,
	["phone"] = `p_amb_phone_01`,
	["tosti"] = `prop_sandwich_01`,
	["sandwich"] = `prop_sandwich_01`,
	["water_bottle"] = `ba_prop_club_water_bottle`,
	["kurkacola"] = `prop_ecola_can`,
	["sprunk"] = `v_res_tt_can03`,
	["sprunklight"] = `v_res_tt_can03`,
	["ecola"] = `prop_ecola_can`,
	["ecolalight"] = `prop_ecola_can`,
	["twerks_candy"] = `prop_choc_pq`,
	["snikkel_candy"] = `prop_choc_pq`,
	["beer"] = `prop_sh_beer_pissh_01`,
	["whiskey"] = `prop_whiskey_bottle`,
	["vodka"] = `prop_vodka_bottle`,
	["lighter"] = `lux_prop_lighter_luxe`,

	["screwdriverset"] = `prop_tool_screwdvr01`,
	["radio"] = `prop_cs_hand_radio`,
	["binoculars"] = `v_serv_ct_binoculars`,
	["cleaningkit"] = `prop_huf_rag_01`,

	["casinochips"] = `vw_prop_chip_100dollar_st`,
	["diving_gear"] = `p_s_scuba_tank_s`,
	["jerry_can"] = `prop_jerrycan_01a`,
	["parachute"] = `p_parachute_s_shop`,

	["coffee"] = `prop_fib_coffee`,
	["fitbit"] = `p_watch_02`,
	["radioscanner"] = `prop_police_radio_main`,
	--Weapons
	["weapon_bat"] = `p_cs_bbbat_01`,
	["weapon_knife"] = `prop_w_me_knife_01`,
	["weapon_hammer"] = `w_me_hammer`,
	["weapon_hatchet"] = `prop_w_me_hatchet`,
	['weapon_dagger'] = `prop_w_me_dagger`,
	['weapon_bottle'] = `prop_w_me_bottle`,
	['weapon_crowbar'] = `prop_ing_crowbar`,
	['weapon_flashlight'] = `w_me_flashlight`,
	['weapon_golfclub'] = `prop_golf_iron_01`,
	['weapon_knuckle'] = `w_me_knuckle`,
	['weapon_machete'] = `prop_ld_w_me_machette`,
	['weapon_switchblade'] = `w_me_switchblade`,
	['weapon_nightstick'] = `w_me_nightstick`,
	['weapon_wrench'] = `v_ind_cs_wrench`,
	['weapon_battleaxe'] = `w_me_battleaxe`,
	['weapon_poolcue'] = `w_me_poolcue`,
	['weapon_handcuffs']  = `prop_cs_cuffs_01`,
	['weapon_bread']  = `v_res_fa_bread01`,
	['weapon_stone_hatchet'] = `w_me_stonehatchet`,

	['weapon_pistol'] = `w_pi_pistol`,
	['weapon_pistol_mk2'] = `w_pi_pistolmk2`,
	['weapon_combatpistol'] = `w_pi_combatpistol`,
	['weapon_appistol']  = `w_pi_appistol`,
	['weapon_stungun'] 	 = `w_pi_stungun`,
	['weapon_pistol50']  = `w_pi_pistol50`,
	['weapon_snspistol']  = `w_pi_sns_pistol`,
	['weapon_heavypistol']  = `w_pi_heavypistol`,
	['weapon_vintagepistol'] = `w_pi_vintage_pistol`,
	['weapon_flaregun'] = `w_pi_flaregun`,
	--['weapon_marksmanpistol'] = ``,
	['weapon_revolver'] = `w_pi_revolver`,
	['weapon_revolver_mk2'] = `w_pi_revolvermk2`,
	['weapon_doubleaction'] = `w_pi_wep1_gun`,
	['weapon_snspistol_mk2'] = `w_pi_sns_pistolmk2`,
	['weapon_raypistol'] = `w_pi_raygun_ev`,
	['weapon_ceramicpistol'] = `w_pi_ceramic_pistol`,
	['weapon_navyrevolver'] = `w_pi_wep2_gun`,
	--['weapon_gadgetpistol'] = ``,
	['weapon_microsmg'] = `w_sb_microsmg`,
	['weapon_smg'] = `w_sb_smg`,
	['weapon_smg_mk2'] = `w_sb_smgmk2`,
	['weapon_assaultsmg'] = `w_sb_assaultsmg`,
	['weapon_combatpdw'] = `w_sb_pdw`,
	--['weapon_machinepistol'] = ``,
	['weapon_minismg'] = `w_sb_minismg`,
	['weapon_raycarbine'] = `w_ar_srifle`,
	['weapon_pumpshotgun'] = `w_sg_pumpshotgun`,
	['weapon_pumpshotgun_mk2'] = `w_sg_pumpshotgunmk2`,
	['weapon_sawnoffshotgun'] = `w_sg_sawnoff`,
	['weapon_assaultshotgun'] = `w_sg_assaultshotgun`,
	['weapon_bullpupshotgun'] = `w_sg_bullpupshotgun`,
	['weapon_musket'] = `w_ar_musket`,
	['weapon_heavyshotgun'] = `w_sg_heavyshotgun`,
	['weapon_dbshotgun'] = `w_sg_doublebarrel`,
	--['weapon_autoshotgun'] = ``,
	--['weapon_combatshotgun'] = ``,

	['weapon_assaultrifle'] = `w_ar_assaultrifle`,
	['weapon_assaultrifle_mk2'] = `w_ar_assaultriflemk2`,
	['weapon_carbinerifle'] = `w_ar_carbinerifle`,
	['weapon_carbinerifle_mk2'] = `w_ar_carbineriflemk2`,
	['weapon_advancedrifle'] = `w_ar_advancedrifle`,
	['weapon_specialcarbine'] = `w_ar_specialcarbine`,
	['weapon_specialcarbine_mk2'] = `w_ar_specialcarbinemk2`,
	['weapon_bullpuprifle'] = `w_ar_bullpuprifle`,
	['weapon_bullpuprifle_mk2'] = `w_ar_bullpupriflemk2`,
	['weapon_compactrifle']  = `w_ar_assaultrifle_smg`,
	['weapon_militaryrifle'] = `w_ar_heavyrifleh`,
	['weapon_mg'] = `w_mg_mg`,
	['weapon_combatmg'] = `w_mg_combatmg`,
	['weapon_combatmg_mk2'] = `w_mg_combatmgmk2`,
	['weapon_gusenberg'] = `w_sb_gusenberg`,

	['weapon_sniperrifle'] = `w_sr_sniperrifle`,
	['weapon_heavysniper'] = `w_sr_heavysniper`,
	['weapon_heavysniper_mk2'] = `w_sr_heavysnipermk2`,
	['weapon_marksmanrifle'] = `w_sr_marksmanrifle`,
	['weapon_marksmanrifle_mk2'] = `w_sr_marksmanriflemk2`,
	--['weapon_remotesniper'] = ``,
	['weapon_rpg'] = `w_lr_rpg`,
	['weapon_grenadelauncher'] = `w_lr_grenadelauncher`,
	['weapon_grenadelauncher_smoke'] = `w_lr_grenadelauncher`,
	['weapon_minigun'] = `prop_minigun_01`,
	['weapon_firework'] = `w_lr_firework`,
	['weapon_railgun'] = `w_ar_railgun`,
	--['weapon_hominglauncher'] = ``,
	--['weapon_compactlauncher'] = ``,
	--['weapon_rayminigun'] = ``,
	['weapon_grenade'] = `w_ex_grenadefrag`,
	['weapon_bzgas'] = `prop_gas_grenade`,
	['weapon_molotov'] = `w_ex_molotov`,
	--['weapon_stickybomb'] = ``,
	['weapon_proxmine'] = `gr_prop_gr_pmine_01a`,
	['weapon_snowball'] = `w_ex_snowball`,
	['weapon_pipebomb'] = `w_ex_pipebomb`,
	['weapon_ball'] = `w_am_baseball`,
	['weapon_smokegrenade'] = `w_ex_grenadesmoke`,
}
