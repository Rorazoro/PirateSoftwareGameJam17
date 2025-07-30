draw_self();

if (showRange) {
	var spawnOriginX = RightSide ? spawnOriginXRightSide : spawnOriginXLeftSide;
	draw_circle(spawnOriginX, y, range, true);
}