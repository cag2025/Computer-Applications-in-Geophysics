#!/bin/sh 

# gmt pscoast -R68/100/18/32 -Jm30 -B2g2 -N1 -G200 -Spink > x.ps
## gmt pscoast -R68/100/18/32 -Jm30 -B2g2 -N1 -G200 -Ia/0.3,blue -Spink > x.ps
# gmt pscoast -R68/100/18/32 -Jm0.8 -B2g2 -N1 -G200 -Ia/0.3,blue -Spink -Dc > x.ps
#gmt pscoast -R-30/30/-40/40 -Jm0.1i -B5 -I1/1p,blue -N1/0.25p -I2/0.25p,blue -W0.25,white -Ggreen -SBlue > africa.ps
#okular africa.ps 
#gmt pscoast -RIS+r1 -Jm1c -Baf -Wthin -Gp28+r100 -P > iceland.ps 
#okular iceland.ps 
# gmt pscoast -R0/360/-70/70 -Jm0.05 -Bx30+l"longitute" -By20+l"latitute" -BWsen -Gred -Swhite -Dh > ll.ps 
# gmt pscoast -JM6i -Baf -EGB,IT,FR+gblue+p0.25p,red -EES,PT,GRR+gyellow -P > map.ps
# okular ll.ps
REGION=68/100/18/32
proj=m0.8 
a=x.ps 
font=Times-Roman

gmt gmtset MAP_FRAME_TYPE plain 
gmt gmtset FONT_ANNOT_PRIMARY 12p,$font 

gmt pscoast -R$REGION -J$proj -B2g2 -Na -Ia/0.3,darkblue -Glightgreen -Sskyblue -K > $a
cat cities.dat | awk '{print $3,$2}' |\
  gmt psxy -R -Jm0.8 -B2g2 -O -K -Sa0.5 -W1,0 -Gred >> x.ps
cat cities.dat | awk '{print $3, $2, $1}' |\
  gmt pstext -R$REGION -J$proj -B2g2 -F+f15p,black+jBL -D0.0i/0.1i -O -K >> x.ps
# okular x.ps
gmt pstext -R$REGION -J$proj -K -O -F+a+f15p,Helvetica-Bold,black <<!>> x.ps
79 23 0 INDIA
89.9 24.7 0 BANGLADESH
90.3 27.5 0 BHUTAN
87 33 0 TIBET
83 29 -20 HIMALAYA
!

