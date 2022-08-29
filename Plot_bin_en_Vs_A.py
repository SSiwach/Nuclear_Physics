import numpy as np
from matplotlib import pyplot as plt

#load data from the file

data = np.loadtxt('binding_energy.dat')

#make the array containging x-axis and binding energies as a function of A

x = data[:,2]

bexpt = data[:,3]

plt.plot(x, bexpt, 'r') # plotting the binding energy curve

plt.axis([0,270,-1,10.0])

plt.xlabel(r'$A$')

plt.ylabel(r'Binding Energy in [MeV]')

plt.legend((r'Experiment'), loc='upper right')

plt.title(r'Binding energies from experiment')

plt.savefig('expbindingenergies.pdf')

plt.savefig('expbindingenergies.png')

plt.show
