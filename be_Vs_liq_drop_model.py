import numpy as np
from matplotlib import pyplot as plt
#load data
data = np.loadtxt('binding_energy.dat')

x = data[:,2]

bexpt = data[:,3]

liquiddrop = data[:,4]

plt.plot(x, bexpt, 'b', x, liquiddrop, 'r')

plt.axis([0,270,-1,10.0])

plt.xlabel(r'$A$')

plt.ylabel(r'Binding Energy in [MeV]')

plt.legend((r'Experiment','Liquid Drop Model'), loc='upper right')

plt.title(r'Binding energies from experiment and liquid drop')

plt.savefig('expbindingenergies.pdf')

plt.savefig('expbindingenergies.png')

plt.show

