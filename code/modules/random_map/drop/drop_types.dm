var/global/list/datum/supply_drop_loot/supply_drop

/proc/supply_drop_random_loot_types()
	if(!supply_drop)
		supply_drop = init_subtypes(/datum/supply_drop_loot)
		supply_drop = dd_sortedObjectList(supply_drop)
	return supply_drop

/datum/supply_drop_loot
	var/name = ""
	var/container = null
	var/list/contents = null

/datum/supply_drop_loot/proc/contents()
	return contents

/datum/supply_drop_loot/proc/drop(turf/T)
	var/C = container ? new container(T) : T
	for(var/content in contents())
		new content(C)

/datum/supply_drop_loot/dd_SortValue()
	return name


/datum/supply_drop_loot/lasers
	name = "Laser Warfare"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/lasers/New()
	..()
	contents = list(
		/obj/item/clothing/gloves/arm_guard/laserproof,
		/obj/item/clothing/shoes/leg_guard/laserproof,
		/obj/item/clothing/head/helmet/bulletproof,
		/obj/item/clothing/suit/armor/bulletproof,
		/obj/item/clothing/glasses/sunglasses/sechud/tactical,
		/obj/item/weapon/storage/belt/security/tactical/bandolier,
		/obj/item/clothing/accessory/storage/black_drop_pouches,
		/obj/item/weapon/storage/backpack/dufflebag/sec,
		/obj/item/weapon/shield/energy,
		/obj/item/weapon/gun/energy/ionrifle,
		/obj/item/weapon/gun/energy/xray,
		/obj/item/weapon/storage/box/emps,
		/obj/item/weapon/storage/box/flashbangs,
		/obj/item/weapon/material/hatchet/tacknife/combatknife
		)

/datum/supply_drop_loot/ballistics
	name = "Ballistic Warfare"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/ballistics/New()
	..()
	contents = list(
		/obj/item/clothing/head/helmet/bulletproof,
		/obj/item/clothing/suit/armor/bulletproof,
		/obj/item/clothing/gloves/arm_guard/bulletproof,
		/obj/item/clothing/shoes/leg_guard/bulletproof,
		/obj/item/clothing/glasses/sunglasses/sechud/tactical,
		/obj/item/weapon/storage/belt/security/tactical/bandolier,
		/obj/item/clothing/accessory/storage/black_drop_pouches,
		/obj/item/weapon/storage/backpack/dufflebag/sec,
		/obj/item/weapon/shield/riot/tele,
		/obj/item/weapon/storage/box/emps,
		/obj/item/weapon/storage/box/flashbangs,
		/obj/item/weapon/gun/projectile/automatic/sts35,
		/obj/item/ammo_magazine/c762/ap,
		/obj/item/ammo_magazine/c762/ap,
		/obj/item/weapon/gun/projectile/colt,
		/obj/item/ammo_magazine/c45m,
		/obj/item/weapon/material/hatchet/tacknife/combatknife
		)

/datum/supply_drop_loot/heavy_warfare
	name = "Heavy Warfare"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/armour/New()
	..()
	contents = list(
		/obj/item/clothing/head/helmet/combat,
		/obj/item/clothing/suit/armor/combat,
		/obj/item/clothing/gloves/arm_guard/combat,
		/obj/item/clothing/shoes/leg_guard/combat,
		/obj/item/clothing/glasses/sunglasses/sechud/tactical,
		/obj/item/weapon/storage/belt/security/tactical/bandolier,
		/obj/item/clothing/accessory/storage/black_drop_pouches,
		/obj/item/weapon/storage/backpack/dufflebag/sec,
		/obj/item/weapon/gun/projectile/automatic/carbine,
		/obj/item/ammo_magazine/a556m/ap,
		/obj/item/ammo_magazine/a556m,
		/obj/item/weapon/shield/energy,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/grenade/frag,
		/obj/item/weapon/grenade/smokebomb,
		/obj/item/weapon/grenade/smokebomb,
		/obj/item/weapon/grenade/flashbang,
		/obj/item/weapon/grenade/flashbang,
		/obj/item/weapon/grenade/empgrenade,
		/obj/item/weapon/grenade/empgrenade,
		/obj/item/weapon/material/hatchet/tacknife/combatknife
		)

datum/supply_drop_loot/riot
	name = "Riot Gear"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/armour/New()
	..()
	contents = list(
		/obj/item/clothing/head/helmet/riot,
		/obj/item/clothing/suit/armor/riot,
		/obj/item/clothing/gloves/arm_guard/riot,
		/obj/item/clothing/shoes/leg_guard/riot,
		/obj/item/weapon/shield/riot/tele,
		/obj/item/weapon/storage/box/flashbangs,
		/obj/item/weapon/storage/box/handcuffs,
		/obj/item/weapon/melee/baton,
		/obj/item/clothing/glasses/sunglasses/sechud/tactical,
		/obj/item/weapon/storage/belt/security,
		/obj/item/clothing/shoes/jackboots,
		/obj/item/clothing/gloves/black,
		/obj/item/weapon/gun/projectile/shotgun/pump,
		/obj/item/weapon/gun/energy/gun,
		/obj/item/clothing/accessory/holster,
		/obj/item/weapon/gun/launcher/grenade,
		/obj/item/weapon/storage/backpack/dufflebag/sec
		)

/datum/supply_drop_loot/seeds
	name = "Plant Growing"
	container = /obj/structure/closet/crate
/datum/supply_drop_loot/seeds/New()
	..()
	contents = list(
		/obj/item/seeds/chiliseed,
		/obj/item/seeds/icepepperseed,
		/obj/item/seeds/berryseed,
		/obj/item/seeds/cornseed,
		/obj/item/seeds/eggplantseed,
		/obj/item/seeds/tomatoseed,
		/obj/item/seeds/appleseed,
		/obj/item/seeds/soyaseed,
		/obj/item/seeds/wheatseed,
		/obj/item/seeds/carrotseed,
		/obj/item/seeds/lemonseed,
		/obj/item/seeds/limeseed,
		/obj/item/seeds/orangeseed,
		/obj/item/seeds/grassseed,
		/obj/item/seeds/sunflowerseed,
		/obj/item/seeds/chantermycelium,
		/obj/item/seeds/potatoseed,
		/obj/item/seeds/sugarcaneseed,
		/obj/item/seeds/plastiseed,
		/obj/item/seeds/grapeseed,
		/obj/item/seeds/greengrapeseed,
		/obj/item/seeds/peanutseed,
		/obj/item/seeds/cabbageseed,
		/obj/item/seeds/bananaseed,
		/obj/item/seeds/poppyseed,
		/obj/item/seeds/riceseed,
		/obj/item/seeds/plumpmycelium,
		/obj/item/seeds/lavenderseed,
		/obj/item/seeds/whitebeetseed,
		/obj/item/seeds/sugarcaneseed,
		/obj/item/seeds/watermelonseed,
		/obj/item/seeds/cherryseed,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/item/weapon/reagent_containers/glass/bottle/eznutrient,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/machinery/portable_atmospherics/hydroponics,
		/obj/structure/reagent_dispensers/watertank,
		/obj/item/weapon/reagent_containers/glass/bucket,
		/obj/item/weapon/reagent_containers/glass/bucket)

/datum/supply_drop_loot/food
	name = "Emergeny Provisions For Two"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/food/New()
	..()
	contents = list(
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/liquidfood,
		/obj/item/weapon/reagent_containers/food/snacks/tastybread,
		/obj/item/weapon/reagent_containers/food/snacks/tastybread,
		/obj/item/weapon/reagent_containers/food/snacks/tastybread,
		/obj/item/weapon/reagent_containers/food/snacks/tastybread,
		/obj/item/weapon/reagent_containers/food/snacks/tastybread,
		/obj/item/weapon/reagent_containers/food/drinks/glass2/fitnessflask/proteinshake,
		/obj/item/weapon/reagent_containers/food/drinks/glass2/fitnessflask/proteinshake,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/device/flashlight,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/device/flashlight/flare,
		/obj/item/device/flashlight/flare
		)

/datum/supply_drop_loot/plushie
	name = "Cuddly Fun!"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/plushie/New()
	..()
	contents = list(
		/obj/structure/plushie/drone,
		/obj/structure/plushie/carp,
		/obj/structure/plushie/beepsky,
		/obj/item/toy/plushie/nymph,
		/obj/item/toy/plushie/mouse,
		/obj/item/toy/plushie/kitten,
		/obj/item/toy/plushie/lizard,
		/obj/random/action_figure,
		/obj/random/action_figure,
		/obj/random/action_figure,
		/obj/random/action_figure,
		/obj/random/action_figure,
		/obj/random/action_figure,
		/obj/item/toy/nanotrasenballoon,
		/obj/item/toy/syndicateballoon,
		/obj/item/toy/sword,
		/obj/item/toy/sword,
		/obj/item/toy/sword,
		/obj/item/toy/sword,
		/obj/item/toy/katana,
		/obj/item/toy/katana,
		/obj/item/weapon/inflatable_duck,
		/obj/item/weapon/inflatable_duck
		)

/datum/supply_drop_loot/materials
	name = "Materials"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/materials/New()
	..()
	contents = list(
		/obj/item/stack/material/steel/fifty,
		/obj/item/stack/material/steel/fifty,
		/obj/item/stack/material/steel/fifty,
		/obj/item/stack/material/glass/fifty,
		/obj/item/stack/material/glass/fifty,
		/obj/item/stack/material/wood/fifty,
		/obj/item/stack/material/plastic/fifty,
		/obj/item/stack/material/glass/reinforced/fifty,
		/obj/item/stack/material/plasteel/fifty)

/datum/supply_drop_loot/materials_advanced
	name = "Advanced Materials"
	container = /obj/structure/largecrate
/datum/supply_drop_loot/materials_advanced/New()
	..()
	contents = list(
		/obj/item/stack/material/steel/fifty,
		/obj/item/stack/material/glass/fifty,
		/obj/item/stack/material/wood/fifty,
		/obj/item/stack/material/plastic/fifty,
		/obj/item/stack/material/glass/reinforced/fifty,
		/obj/item/stack/material/plasteel/fifty,
		/obj/item/stack/material/diamond/fifty,
		/obj/item/stack/material/phoron/fifty,
		/obj/item/stack/material/gold/fifty,
		/obj/item/stack/material/silver/fifty,
		/obj/item/stack/material/platinum/fifty,
		/obj/item/stack/material/mhydrogen/fifty,
		/obj/item/stack/material/tritium/fifty,
		/obj/item/stack/material/osmium/fifty,)

/datum/supply_drop_loot/supermatter
	name = "Supermatter"
/datum/supply_drop_loot/supermatter/New()
	..()
	contents = list(/obj/machinery/power/supermatter)

/datum/supply_drop_loot/medical
	name = "Medical"
	container = /obj/structure/closet/crate/medical
/datum/supply_drop_loot/medical/New()
	..()
	contents = list(
		/obj/item/weapon/storage/firstaid/regular,
		/obj/item/weapon/storage/firstaid/fire,
		/obj/item/weapon/storage/firstaid/toxin,
		/obj/item/weapon/storage/firstaid/o2,
		/obj/item/weapon/storage/firstaid/adv,
		/obj/item/weapon/storage/firstaid/combat,
		/obj/item/weapon/reagent_containers/glass/bottle/antitoxin,
		/obj/item/weapon/reagent_containers/glass/bottle/antitoxin,
		/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline,
		/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/weapon/storage/box/autoinjectors)