# This script allows two seperate magneto switches.
# Currently handles up to three engines.
# Could be made shorter by passing values to a function instead of repeating the code over and over.

setlistener("/sim/signals/fdm-initialized", func {

	setprop("/controls/engines/engine[0]/magnetoR", 0);
	setprop("/controls/engines/engine[0]/magnetoL", 0);
	setprop("/controls/engines/engine[1]/magnetoR", 0);
	setprop("/controls/engines/engine[1]/magnetoL", 0);
	setprop("/controls/engines/engine[2]/magnetoR", 0);
	setprop("/controls/engines/engine[2]/magnetoL", 0);

});

setlistener("/controls/engines/engine[0]/magnetoR", func {
	if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 and getprop("/controls/engines/engine[0]/magnetoL") == 1) {
		setprop("/controls/engines/engine[0]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[0]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[0]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[0]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[0]/magnetoL", func {
	if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 and getprop("/controls/engines/engine[0]/magnetoL") == 1) {
		setprop("/controls/engines/engine[0]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[0]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[0]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[0]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[1]/magnetoR", func {
	if ( getprop("/controls/engines/engine[1]/magnetoR") == 1 and getprop("/controls/engines/engine[1]/magnetoL") == 1) {
		setprop("/controls/engines/engine[1]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[1]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[1]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[0]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[1]/magnetoL", func {
	if ( getprop("/controls/engines/engine[1]/magnetoR") == 1 and getprop("/controls/engines/engine[1]/magnetoL") == 1) {
		setprop("/controls/engines/engine[1]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[1]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[1]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[1]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[2]/magnetoR", func {
	if ( getprop("/controls/engines/engine[2]/magnetoR") == 1 and getprop("/controls/engines/engine[2]/magnetoL") == 1) {
		setprop("/controls/engines/engine[2]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[2]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[2]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[2]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[2]/magnetoL", func {
	if ( getprop("/controls/engines/engine[2]/magnetoR") == 1 and getprop("/controls/engines/engine[0]/magnetoL") == 1) {
		setprop("/controls/engines/engine[2]/magnetos", 3);
	} else if ( getprop("/controls/engines/engine[0]/magnetoR") == 1 ) {
		setprop("/controls/engines/engine[2]/magnetos", 2);
	} else if ( getprop("/controls/engines/engine[0]/magnetoL") == 1 ) {
		setprop("/controls/engines/engine[2]/magnetos", 1);
	} else {
		setprop("/controls/engines/engine[2]/magnetos", 0);
	}
});

setlistener("/controls/engines/engine[0]/magnetos", func {
	if ( getprop("/controls/engines/engine[0]/magnetos") == 3 ) {
		setprop("/controls/engines/engine[0]/magnetoR", 1);
		setprop("/controls/engines/engine[0]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[0]/magnetos") == 2 ) {
		setprop("/controls/engines/engine[0]/magnetoR", 1);
		setprop("/controls/engines/engine[0]/magnetoL", 0);
	}
	if ( getprop("/controls/engines/engine[0]/magnetos") == 1 ) {
		setprop("/controls/engines/engine[0]/magnetoR", 0);
		setprop("/controls/engines/engine[0]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[0]/magnetos") == 0 ) {
		setprop("/controls/engines/engine[0]/magnetoR", 0);
		setprop("/controls/engines/engine[0]/magnetoL", 0);
	}
});

setlistener("/controls/engines/engine[1]/magnetos", func {
	if ( getprop("/controls/engines/engine[1]/magnetos") == 3 ) {
		setprop("/controls/engines/engine[1]/magnetoR", 1);
		setprop("/controls/engines/engine[1]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[1]/magnetos") == 2 ) {
		setprop("/controls/engines/engine[1]/magnetoR", 1);
		setprop("/controls/engines/engine[1]/magnetoL", 0);
	}
	if ( getprop("/controls/engines/engine[1]/magnetos") == 1 ) {
		setprop("/controls/engines/engine[1]/magnetoR", 0);
		setprop("/controls/engines/engine[1]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[1]/magnetos") == 0 ) {
		setprop("/controls/engines/engine[1]/magnetoR", 0);
		setprop("/controls/engines/engine[1]/magnetoL", 0);
	}
});

setlistener("/controls/engines/engine[2]/magnetos", func {
	if ( getprop("/controls/engines/engine[2]/magnetos") == 3 ) {
		setprop("/controls/engines/engine[2]/magnetoR", 1);
		setprop("/controls/engines/engine[2]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[2]/magnetos") == 2 ) {
		setprop("/controls/engines/engine[2]/magnetoR", 1);
		setprop("/controls/engines/engine[2]/magnetoL", 0);
	}
	if ( getprop("/controls/engines/engine[2]/magnetos") == 1 ) {
		setprop("/controls/engines/engine[2]/magnetoR", 0);
		setprop("/controls/engines/engine[2]/magnetoL", 1);
	}
	if ( getprop("/controls/engines/engine[2]/magnetos") == 0 ) {
		setprop("/controls/engines/engine[2]/magnetoR", 0);
		setprop("/controls/engines/engine[2]/magnetoL", 0);
	}
});