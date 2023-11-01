#Type of output and name of it
set terminal pdf
set output "Results/Compil_O0.pdf"

#Global Name
set title 'MiB/s depending on the type of dotprod'

#Style of plot (explicit)
set style data histograms

#Set distances between boxes
set style histogram clustered gap 1 

#Parameters of plot
set boxwidth 0.9 absolute
set style fill   solid 1.00 border lt -1
set key noautotitle nobox

# Increase bottom margin to allow room for dates
set bmargin at screen 0.3

#Set label Name
set ylabel 'MiB/s'
set xlabel 'Type of dotprod'

#Set x labels names
set xtics border in scale 0,5 nomirror rotate by -45
set xtics norangelimit 
set xtics ()

plot 'Results/Compil_O0.dat' using 15:xticlabels(1) linecolor variable
pause -1 "Hit any key to continue"
