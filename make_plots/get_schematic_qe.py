import numpy as np
import pickle,gzip
import matplotlib.gridspec as gridspec
import matplotlib.pyplot as plt
fig = plt.figure()
gs = gridspec.GridSpec(3, 4)
data = pickle.load(gzip.open('/Users/sanjaykumarp/sptXdes/SCL-sptpol_cluster_lensing/QE/QE_schem_rep.pkl.gz'))
unlen = data['unlensed']*1e6;lens = data['lensed']*1e6
ax1 = plt.subplot(gs[0, 1:3])
img1 = ax1.imshow(unlen); ax1.set_xticks([]);ax1.set_yticks([])
ax2 = plt.subplot(gs[1, 0:2]); ax3 = plt.subplot(gs[1, 2:])
ax2.imshow(lens);ax2.set_xticks([]);ax2.set_yticks([]);ax3.imshow(lens-unlen);ax3.set_xticks([]);ax3.set_yticks([])
ax4 = plt.subplot(gs[2, 1:3])
ax4.imshow(data['kappa']);ax4.set_xticks([]);ax4.set_yticks([])
plt.colorbar(img1, ax=ax1)
from IPython import embed;embed()
fig.savefig('/Users/sanjaykumarp/phd_thesis/figs/schematic_rep.pdf',bbox_inches = 'tight')