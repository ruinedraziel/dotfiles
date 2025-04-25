static const char norm_fg[] = "#c1c5ca";
static const char norm_bg[] = "#081A2B";
static const char norm_border[] = "#5e6974";

static const char sel_fg[] = "#c1c5ca";
static const char sel_bg[] = "#5A6591";
static const char sel_border[] = "#c1c5ca";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
