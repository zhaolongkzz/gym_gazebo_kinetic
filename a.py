import torch
import torch.nn as nn
import torch.functional as F
import torch.optim as optim
import torch.distributions as Categorical
# a = [1, 3,4, 56,2,44,42312,343,4,23,4,32,4,34,23,4,234,23]
# print(a[:5])

# fig = plt.figure()
# ax = fig.add_subplot(111)
# plt.plot(np.arrange(1, len(scores)+1), scores)
# plt.ylabel('scores')
# plt.xlabel('episodes#')
# plt.show()
#
#
# class Agent(nn.Module):
#     def __init__()
import numpy as np

def ad(a,b):
    return np.sqrt(np.sum(np.square(a-b)))

a = [np.array([1,2]),np.array([5])]
a = np.array(a)
b = [np.array([2,1,3,4]),np.array([4])]
b = np.array(b)
# a = np.array(a)
# b = np.array(b)

c = ad(a[0],b[0])
# +ad(a[1],b[1])
print c
# print()
