#!/bin/sh 

# gmt pscoast -R68/100/18/32 -Jm30 -B2g2 -N1 -G200 -Spink > x.ps
## gmt pscoast -R68/100/18/32 -Jm30 -B2g2 -N1 -G200 -Ia/0.3,blue -Spink > x.ps
# gmt pscoast -R68/100/18/32 -Jm0.8 -B2g2 -N1 -G200 -Ia/0.3,blue -Spink -Dc > x.ps
#gmt pscoast -R-30/30/-40/40 -Jm0.1i -B5 -I1/1p,blue -N1/0.25p -I2/0.25p,blue -W0.25,white -Ggreen -SBlue > africa.ps
#okular africa.ps 
#gmt pscoast -RIS+r1 -Jm1c -Baf -Wthin -Gp28+r100 -P > iceland.ps 
#okular iceland.ps 
gmt pscoast -R0/360/-70/70 -Jm0.05 -Bx30+l"longitute" -By20+l"latitute" -BWsen -Gred -Swhite -Dh > ll.ps 
# gmt pscoast -JM6i -Baf -EGB,IT,FR+gblue+p0.25p,red -EES,PT,GRR+gyellow -P > map.ps
okular ll.ps
