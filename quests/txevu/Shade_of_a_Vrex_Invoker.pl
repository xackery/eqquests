# Shade_of_a_Vrex_Invoker (297213) on grid 73

sub EVENT_WAYPOINT_ARRIVE {
	quest::ze(5,"Waypoint Arrive $wp $x,$y,$z");
	if($wp == 5) {
		quest::ze(5,"I'm here");
		quest::signalwith(297212,1); #tell trigger I'm here
		quest::modifynpcstat("special_attacks","SMCID"); #go active
	}
}

sub EVENT_CAST {
	quest::settimer("check_charm",1);
}

sub EVENT_TIMER {
	if($npc->GetPetID()) {
		quest::stoptimer("check_charm");
		$npc->RemoveAISpell(891);
	}
}

sub EVENT_SIGNAL {
	if($signal == 3) { #my turn to be absorbed
		quest::say("High Priest, may my everlasting soul provide you with the strength to cleanse this temple!");
		quest::emote("dissolves into tendrils of ghostly vapor that reach out and replenish the strength of High Priest Nkosi Bakari.");
		quest::depop();
	}
}