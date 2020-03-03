import numpy as np
import matplotlib.pyplot as plt
from matplotlib import rc, rcParams

plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)#plt.rcParams['axes.labelweight'] = 'bold'
parent_folder = "/Users/sanjaykumarp/Downloads/CAMB/fortran"
ps_data = np.loadtxt('%s/planck_2018_matterpower.dat'%(parent_folder))
ps_data_z_1 = np.loadtxt('%s/planck_2018_z_1_matterpower.dat'%(parent_folder))
fig = plt.figure()
plt.plot(ps_data[:,0],ps_data[:,1], lw = 2, label = 'redshift = 0')
plt.plot(ps_data_z_1[:,0],ps_data_z_1[:,1], color = 'g', lw = 2, label = 'redshift = 1')
plt.xscale('log');plt.yscale('log')
plt.xlabel('$k$[h/Mpc]')
plt.ylabel('P(k)')
plt.legend(fancybox=True, framealpha=0.5, loc = 'upper right')
fig.savefig("ps.pdf",bbox_inches = 'tight')
plt.show()
