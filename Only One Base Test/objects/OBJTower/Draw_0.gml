draw_self();

if (showRange)
	draw_circle(shootOriginX, shootOriginY, range, 1);

if (showAIStatus)
	draw_text(shootOriginX, y-20, ai);