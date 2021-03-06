/datum/game_mode/intrigue
	name = "Traitors & Ninja"
	round_description = "Crewmembers are contacted by external elements while another infiltrates the colony."
	extended_round_description = "Traitors and a ninja spawn during this round."
	config_tag = "intrigue"
	required_players = 6
	required_enemies = 3
	end_on_antag_death = 0
	antag_tags = list(ROLE_NINJA, ROLE_TRAITOR)
	round_autoantag = 1
	require_all_templates = 1