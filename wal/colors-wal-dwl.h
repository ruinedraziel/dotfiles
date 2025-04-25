/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x081A2Bff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc1c5caff, 0x081A2Bff, 0x5e6974ff },
	[SchemeSel]  = { 0xc1c5caff, 0x036FC2ff, 0x5A6591ff },
	[SchemeUrg]  = { 0xc1c5caff, 0x5A6591ff, 0x036FC2ff },
};
