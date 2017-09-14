sz = 0.60
lw = 1.5
set terminal pdf monochrome size 5*sz, 3*sz linewidth lw
o = "i/flow/prof.pdf"
set output o
print o

a = "i/flow/a/prof.txt"
b = "i/flow/b/prof.txt"

set key right bottom
set xlabel "coord"
set ylabel "velocity"

set xtics 5
set ytics 10

plot [0:32][-30:30] \
     a u ($0+0.5):1 t "immiscible" w l, \
     b u ($0+0.5):1 t "  miscible" w l
