import numpy as np
import matplotlib.pyplot as plt


import pickle,gzip
data = np.loadtxt('/Users/sanjaykumarp/Downloads/CAMB/fortran/test_1#planck_2018_z_1_scalCls.dat')

l = data[:,0]
Cls = data[:,1]

res_arr = np.zeros(len(l))
for i in range(len(res_arr)):
	res = 0
	for j in range(i):
		 res = res + ((l[j]**3)*(Cls[j]*1e-12))/((l[j]*(l[j]+1)*(2/2*np.pi)))
		 res_arr[i] = res

plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)
fig = plt.figure();plt.rc('ytick', labelsize=10);plt.rc('xtick', labelsize=10);plt.rcParams['axes.linewidth'] = 10;ax1 = fig.add_subplot(1,1,1);plt.setp(ax1.spines.values(), linewidth=2)
plt.ylabel('Gradient');plt.xlabel('Multipole $l_{G}$');plt.loglog(l, np.sqrt(res_arr*(1e6)),'k', lw =3);plt.xticks([10,1000,2000,3000]);plt.xlim(10,4000);#plt.ylim(1e6,1e16)
#plt.loglog(l, Cls*(10./Cls.max()).max())

fig.savefig('/Users/sanjaykumarp/phd_thesis/figs/gradient_cut.pdf',bbox_inches = 'tight')
#fig.savefig('/Users/sanjaykumarp/phd_thesis/figs/gradient_cut.pdf',bbox_inches = 'tight')
