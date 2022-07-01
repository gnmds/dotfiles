/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nobody";

static const char *colorname[NUMCOLS] = {
	[BACKGROUND] =   "#16161d",     /* after initialization */
	[INIT] =   "#76946a",     /* after initialization */
	[INPUT] =  "#7e9cd8",   /* during input */
	[FAILED] = "#c34043",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* insert grid pattern with scale 1:1, the size can be changed with logosize */
static const int logosize = 50;
static const int logow = 9;	/* grid width and height for right center alignment*/
static const int logoh = 11;

static XRectangle rectangles[15] = {
	/* x	y	w	h */
	{ 3,	0,	3,	2 },
	{ 2,	1,	1,	1 },
	{ 6,	1,	1,	1 },
	{ 1,	2,	2,	9 },
	{ 6,	2,	2,	9 },
	{ 0,	5,	1,	5 },
	{ 8,	5,	1,	5 },
	{ 3,	4,	3,	1 },
	{ 3,	5,	1,	1 },
	{ 5,	5,	1,	1 },
	{ 3,	7,	1,	2 },
	{ 5,	7,	1,	2 },
	{ 3,	9,	3,	1 },
	{ 1,	10,	7,	1 },

};
