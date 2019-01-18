import glob 
import os 
import numpy as np 
from sklearn.metrics.pairwise import cosine_similarity 
import matplotlib.pyplot as plt 
import scipy.misc 
a = np.loadtxt("features_Alderley_real_testA.txt") 
b = np.loadtxt("features_Alderley_real_testB.txt") 
sim = cosine_similarity(a, b) 
np.savetxt('SimilarityMatrix.txt',sim) 
scipy.misc.imsave('outfile.jpg',sim)
