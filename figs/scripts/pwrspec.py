"""
Generates power spectrum just for thesis

Planck 2015 cosmology
"""


import numpy as np
import matplotlib.pyplot as plt
fig = plt.figure()
plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)
Dlfile_len = '/Users/sanjaykumarp/sptXdes/SCL-sptpol_cluster_lensing/QE/data/output_planck_r_0.0_2015_cosmo_lensedCls.dat';Dls_len = np.loadtxt(Dlfile_len,usecols=[0,1,2,3,4])
temp = Dls_len[:,1]; els = Dls_len[:,0]
ee = Dls_len[:,2]; bb = Dls_len[:,3]
plt.loglog(els, temp*1e12*2*np.pi, 'r', label='Temperature');plt.loglog(els, ee*1e12*2*np.pi, 'b',label = 'Polarisation E'); plt.loglog(els, bb*1e12*2*np.pi,'k', label='Polarisation B'); plt.xlabel('Multipole l');plt.ylabel('$D_{l}$')
plt.legend(fancybox=True, framealpha=0.5, loc = 'lower right');plt.xlim(0, 6000);fig.savefig('PS.pdf')
