import numpy as np
import matplotlib.pyplot as plt


import pickle,gzip
data = np.loadtxt('/Users/sanjaykumarp/project/CAMB/test_scalCls.dat')

l = data[:,0]
Cls = data[:,1]

res_arr = np.zeros(len(l))
for i in range(len(res_arr)):
	res = 0
	for j in range(i):
		 res = res + (l[j]**3)*(Cls[j])
		 res_arr[i] = res

plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)
fig = plt.figure();plt.rc('ytick', labelsize=10);plt.rc('xtick', labelsize=10);plt.rcParams['axes.linewidth'] = 10;ax1 = fig.add_subplot(1,1,1);plt.setp(ax1.spines.values(), linewidth=2)
plt.ylabel('$G_{rms}$($\mu$K/arcmin)');plt.xlabel('$l_{G}$');plt.loglog(l, res_arr,'k', lw =3);plt.xlim(10,6000);plt.ylim(1e6,1e16)

fig.savefig('/Users/sanjaykumarp/phd_thesis/figs/gradient_cut.pdf',bbox_inches = 'tight')