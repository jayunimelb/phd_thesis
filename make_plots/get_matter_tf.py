import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc, rcParams

plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)#plt.rcParams['axes.labelweight'] = 'bold'
parent_folder = "/Users/sanjaykumarp/Downloads/CAMB/fortran"
tf_data = np.loadtxt('%s/planck_2018_transfer_out.dat'%(parent_folder))
fig = plt.figure()
plt.plot(tf_data[:,0],tf_data[:,6]/np.max(tf_data[:,6]), lw = 2)
plt.xscale('log')
plt.xlabel('$k$[h/Mpc]')
plt.ylabel('T(k)')
fig.savefig("/Users/sanjaykumarp/phd_thesis/figs/tf.pdf",bbox_inches = 'tight')
plt.show()
