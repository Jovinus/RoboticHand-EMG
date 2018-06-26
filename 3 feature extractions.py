import numpy as np

a = 1

b = 1

num_ZC = []

MAV = []

WL =[]

n = 20 # The number of data samples

m = 3 # The number of channels


while (b <= m):
    

    while (a <= n):

        signal = np.loadtxt('./CH' + str(b) + '_주먹'+ str(a) + '.txt')
    
        signal = np.array(signal)


        zero_crossings = np.where(np.diff(np.signbit(signal)))[0]

        num_ZC.append(len(zero_crossings))


        Sum_MAV = 0

        for x in range(0, len(signal)):
            
            Sum_MAV += abs(signal[x])

            MAV = Sum_MAV / len(signal)

        
        MAV=np.append(MAV,MAV,axis= 0)

        
        WL = sum(abs(np.diff(signal)))

        WL.append(WL)
        

        a += 1

    np.savetxt('주먹CH' + str(b) + '_ZC.txt', num_ZC, fmt='%i', delimiter='\n')

    np.savetxt('주먹CH' + str(b) + '_MAV.txt', MAV, fmt='%10.5f', delimiter='\n')

    np.savetxt('주먹CH' + str(b) + '_WL.txt', WL, fmt='%10.5f', delimiter='\n')
    
    a = 1

    num_ZC = []
    MAV = []
    WL =[]

    b += 1

'''
signal = np.loadtxt('./CH1_주먹1.txt')

signal = np.array(signal)

## Zerocrossing(ZC)

zero_crossings = np.where(np.diff(np.signbit(signal)))[0]

num_ZC = (len(zero_crossings))


## Mean absolute value(MAV)

Sum_MAV = 0

for x in range(0, len(signal)):

    Sum_MAV += abs(signal[x])

MAV = Sum_MAV / len(signal)

## Waveform length(WL)

WL = sum(abs(np.diff(signal)))
'''







