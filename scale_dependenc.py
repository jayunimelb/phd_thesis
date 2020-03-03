import numpy as np
import matplotlib.pyplot as plt

plt.rc('font', family='serif');plt.rc('xtick', labelsize='medium');plt.rc('ytick', labelsize=10);plt.rcParams['axes.labelsize'] = 18;plt.rc('font',weight = 10)
a = np.arange(1e-5, 1, 1e-6)
h = 0.73; rr = (2.47*1e-5*(1/h**2))*np.power(a,-4);rm = (0.3*(1/h**2))* np.power(a,-3);rd = np.power(a,0)
fig = plt.figure()
plt.plot(a,np.log10(rr),'b', lw =2, label = 'radiation'); plt.plot(a,np.log10(rm), 'k',lw = 2, label = 'matter');plt.plot(a,np.log10(rd),'r',lw = 2, label = 'dark energy');plt.xscale('log')
plt.legend(fancybox=True, framealpha=0.5, loc = 'upper right')
plt.xlabel('scale factor (a)')
plt.ylabel(r'$log_{10}(\rho(t)/\rho_{crit})$')
fig.savefig("figs/dummy.pdf",bbox_inches = 'tight')
plt.show()

