#pick colors by name
twColor <- function(color) {
  twPaletteNamed <- c(
    darkblue = "#1DA1F2",
    darkpurple = "#794BC4",
    darkpink = "#E0245E",
    darkyellow = "#FFAD1F",
    darkorange = "#F45D22",
    darkgreen = "#17BF63",
    lightblue = "#71C9F8",
    lightpurple = "#A37CED",
    lightorange = "#FF8D57",
    lightyellow = "#FFD03F",
    lightpink = "#F6809A",
    lightgreen = "#68E090",
    xdblue = "#005FD1",
    xdpurple = "#4F0299",
    xdpink = "#A01744",
    xdorange = "#D82E18",
    xdyellow = "#F98E00",
    xdgreen = "#008951",
    xlblue = "#97E3FF",
    xlpurple = "#C7B4FA",
    xlpink = "#FFB8C2",
    xlorange = "#FFBE78",
    xlyellow = "#FFE76E",
    xlgreen = "#A5F2AA",
    white = "#FFFFFF",
    xxlgrey = "#F5F8FA",
    xlgrey = "#CCD6DD",
    lightgrey = "#AAB8C2",
    darkgrey = "#657786",
    xxlgray = "#F5F8FA",
    xlgray = "#CCD6DD",
    lightgray = "#AAB8C2",
    darkgray = "#657786"
  )
  if (is.numeric(color)) c <- twPaletteNamed[1:color[1]]
  else c <- as.vector(twPaletteNamed[tolower(color)])
  return(c)
}
