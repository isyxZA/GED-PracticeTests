if inputFocus {
	if blink == "" { blink = "|" }
		else { blink = "" }
	alarm[1] = room_speed * 0.5
}
else {
	blink = ""
}