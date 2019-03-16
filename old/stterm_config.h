/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#ffffff", /* black   */
  [1] = "#ff5555", /* red     */
  [2] = "#50fa7b", /* green   */
  [3] = "#ffb86c", /* yellow  */
  [4] = "#ff79c6", /* blue    */
  [5] = "#bd93f9", /* magenta */
  [6] = "#8be9fd", /* cyan    */
  [7] = "#ffffff", /* white   */

  /* 8 bright colors */
  [8]  = "#f8f8f2", /* black   */
  [9]  = "#ff5555", /* red     */
  [10] = "#50fa7b", /* green   */
  [11] = "#ffb86c", /* yellow  */
  [12] = "#ff79c6", /* blue    */
  [13] = "#bd93f9", /* magenta */
  [14] = "#8be9fd", /* cyan    */
  [15] = "#f8f8f2", /* white   */

  /* special colors */
  [256] = "#282a36", /* background */
  [257] = "#f8f8f2", /* foreground */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor
 */
static unsigned int defaultfg = 257;
static unsigned int defaultbg = 256;
static unsigned int defaultcs = 257;

/*
 * Colors used, when the specific fg == defaultfg. So in reverse mode this
 * will reverse too. Another logic would only make the simple feature too
 * complex.
 */
static unsigned int defaultitalic = 7;
static unsigned int defaultunderline = 7;
