const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#081A2B", /* black   */
  [1] = "#5A6591", /* red     */
  [2] = "#036FC2", /* green   */
  [3] = "#8D77A0", /* yellow  */
  [4] = "#259EA6", /* blue    */
  [5] = "#2893B9", /* magenta */
  [6] = "#5496B2", /* cyan    */
  [7] = "#c1c5ca", /* white   */

  /* 8 bright colors */
  [8]  = "#5e6974",  /* black   */
  [9]  = "#5A6591",  /* red     */
  [10] = "#036FC2", /* green   */
  [11] = "#8D77A0", /* yellow  */
  [12] = "#259EA6", /* blue    */
  [13] = "#2893B9", /* magenta */
  [14] = "#5496B2", /* cyan    */
  [15] = "#c1c5ca", /* white   */

  /* special colors */
  [256] = "#081A2B", /* background */
  [257] = "#c1c5ca", /* foreground */
  [258] = "#c1c5ca",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
