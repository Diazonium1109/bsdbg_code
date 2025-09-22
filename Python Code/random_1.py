import random
ls = [10, 20, 30, 40, 50]
random.shuffle(ls)
print(ls)


## THIS IS HOW YOUR GENERATE A RANDOM INTEGER IN A RANGE
print(random.randint(1, 100)) # The interval is [1, 100]
print(random.random()) # The interval is [0.0, 1.0)


## There are many pseudorandom number generator (PRNG)
#One of them is the BLUM BLUM SHUB (BBS) that’s considered one of the more cryptographically secure ones out there.




##RANDOM SAMPALING WITH NUMPY

import numpy as np
print(np.random.randint(1, 100)) # The interval is [1, 100)

print(np.random.random(5)) # This will generate a array of 5 different floating point values in the range [0.0, 1.0). This size parameter was not there in the original random library.


print(np.random.randn(5)) # From normal distribution. Here the 'n' in 'randn' stands for normal distribution.
print(np.random.randn(3, 5)) # From normal distribution


## The three lines of code below will give different values
print(np.random.randint(1, 100))
print(np.random.randint(1, 100))
print(np.random.randint(1, 100))


## The three lines of code below will give the same value 
np.random.seed(20)
print(np.random.randint(1, 100)) ## The random value generated here will be treated as the a new Seed value and the same follows for each step
print(np.random.randint(1, 100))
print(np.random.randint(1, 100))

sample = np.random.poisson(10, 50000)
import matplotlib.pyplot as plt
plt.hist(sample, 10)
plt.show()
