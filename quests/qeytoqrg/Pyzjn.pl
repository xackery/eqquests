sub EVENT_WAYPOINT_ARRIVE {
	if (($zonetime > 700 || $zonetime < 1899) && ($wp == 1)) {
	quest::depop();
	}
}