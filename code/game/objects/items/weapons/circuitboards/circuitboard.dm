/obj/item/weapon/circuitboard
	name = "circuit board"
	icon = 'icons/obj/module.dmi'
	icon_state = "id_mod"
	item_state = "electronic"
	origin_tech = list(TECH_DATA = 2)
	density = 0
	anchored = 0
	w_class = ITEM_SIZE_SMALL
	flags = CONDUCT
	force = 5.0
	throwforce = 5.0
	throw_speed = 3
	throw_range = 15
	var/build_path = null
	var/board_type = "computer"
	var/list/req_components = null

//Called when the circuitboard is used to contruct a new machine.
/obj/item/weapon/circuitboard/proc/construct(var/obj/machinery/M)
	if(istype(M, build_path))
		return 1
	return 0

//Called when a computer is deconstructed to produce a circuitboard.
//Only used by computers, as other machines store their circuitboard instance.
/obj/item/weapon/circuitboard/proc/deconstruct(var/obj/machinery/M)
	if(istype(M, build_path))
		return 1
	return 0
