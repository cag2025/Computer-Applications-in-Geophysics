#!/bin/sh

# Set the GMT parameters for Times-Roman font
gmt gmtset FONT_ANNOT_PRIMARY Times-Roman
gmt gmtset FONT_LABEL Times-Roman

# Region of South America
Reg=-R-90/-30/-60/40

# Projection (mercator) with a new scale for South America
Pro=-Jm0.2

# Input grid and color palettes
GRD=topo30.grd
CPT=aman.cpt

# Output file
ps=south-america.ps


# Step 1: Cut the region from the global topo grid
gmt grdcut $GRD $Reg -Gtmp1.grd -V

# Step 2: Resample to 4 arc-minute resolution
gmt grdsample tmp1.grd -Gtmp.grd -I4m -r -nc+c -V

# Step 3: Compute gradient for shading
gmt grdgradient tmp.grd -A315 -Ggradient.grd -Nt -V

# Step 4: Create the fancy base map frame and start the PostScript file
gmt pscoast $Reg $Pro -Bf2g2 -Slightblue -K > $ps

# Step 5: Plot the gridded image on top of the base map
gmt grdimage tmp.grd $Reg $Pro -C$CPT -Igradient.grd -O -K >> $ps

# Step 6: Add coastlines and rivers on top of the image
gmt pscoast $Reg $Pro -Q -W0.25p,black -Ia/0.5p,blue -O -K >> $ps

# Step 7: Plot the five cities as blue inverted triangles
gmt psxy cities.dat $Reg $Pro -ST0.2i -Gblue -Wthin -O -K >> $ps

# Step 8: Label the cities and finalize the PostScript file
# The last command must NOT have a -K to finalize the output file.
gmt pstext cities.dat $Reg $Pro -F+f10p,Times-Roman+jRT -D0.1i/0.1i -O >> $ps
