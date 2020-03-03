import numpy as np
import matplotlib.pyplot as plt

plt.rc('font', family='serif', weight = 'bold', size = 12);plt.rc('xtick', labelsize='x-small');plt.rc('ytick', labelsize='x-small')

data = np.loadtxt('/Users/sanjaykumarp/Downloads/CAMB/fortran/planck_2018_lensedCls.dat')
els,cls = data[:,0], data[:,1]
fig = plt.figure()
plt.plot(els,cls, lw = 3)
plt.ylabel(r'$(l(l+1)C_{l})/2\pi$')
plt.xlabel('multipole ($l$)')
plt.show()

fig.savefig("/Users/sanjaykumarp/phd_thesis/figs/cmb_ps.pdf",bbox_inches = 'tight')
