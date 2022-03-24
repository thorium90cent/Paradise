// TODO: make the outfit and sword, hud can be done later
// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851

// TODO: get the worn outfit sprited and make adjustments to it

/obj/item/clothing/head/drifter
	name = "drifter's hood"
	desc = "The hood of a drifter's outfit."
	icon_state = "hardsuit0-syndielite"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)

/obj/item/clothing/under/drifter
	name = "drifter's outfit"
	desc = "Once used by a drifter, it has been discarded in favor of better equipment."
	icon_state = "hardsuit0-syndielite"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)

/obj/item/clothing/under/drifter/proc/cough(mob/M)
	// TODO: add a timer for coughing

	return


/obj/item/clothing/suit/storage/drifter
	name = "drifter's cloak"
	desc = "A cloak discarded by a drifter. It has pockets for weapons."
	icon_state = "capmantle"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)
	allowed = list(/obj/item/melee/drifter)

/obj/item/clothing/suit/storage/drifter/New()
	..()
	pockets.storage_slots = 7 // one for every gun
	pockets.max_w_class = WEIGHT_CLASS_NORMAL
	pockets.max_combined_w_class = 21

/obj/item/clothing/suit/storage/drifter/can_be_inserted(obj/item/I, TRUE)
	if (!I.type in list(/obj/item/gun/energy/drifter,/obj/item/gun/energy/drifter/upgraded))
		to_chat(usr, "<span class='warning'>[I] won't fit in [src]!</span>")
		return 0
	..(I)
