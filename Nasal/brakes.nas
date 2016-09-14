#To enable the center brake.
#The front brake will be a little jittery, but it shouldn't be noticeable.

var UPDATE_PERIOD = 0.3;

var update = func {
	var brake1 = getprop("controls/gear/brake-left");
	var brake2 = getprop("controls/gear/brake-right");
	if (brake1 > 0 and brake2 > 0)
	{
		var brake3 = ((brake1 + brake2) / 2) / 4;       #average the strenghth of the other brakes, and divide so the aircraft doesn't flip.
		setprop("controls/gear/brake-center", brake3);
	} else {
		setprop("controls/gear/brake-center", 0);
	}
}

var loop = func {
	update();
	settimer(loop, UPDATE_PERIOD);
}

loop();