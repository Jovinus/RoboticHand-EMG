# RoboticHand-EMG
# ABSTRACT
When we performed 6 Feature Extraction Methods in Machine Learning, we found techniques that show high recognition rate. It can be seen that WL (Wave Length) is the technique with the highest recognition rate and RMS (Root Mean Square) is the next highest technique. On the other hand, the ZC (Zero Crossing) technique showed the lowest recognition rate of 50%. As a result of 4, 5 and 6 Feature Extraction Method Combinations based on techniques with high recognition rate, machine learning was performed. Waveform Length (WL), Root Mean Square (RMS), Mean Absolute Value (MAV) Sign Change) and Machine Learning Method of KNN (K-Nearest Neighbors) showed high recognition rate. The maximum recognition rate of scissors, rocks, and beam motion for the four combinations of WL (Waveform Length), Root Mean Square (RMS), Mean Absolute Value (MAV), and Slope Sign Change.

# INTRODUCTION
![default](https://user-images.githubusercontent.com/32018719/42020556-23d8a02e-7af3-11e8-8f51-8aed5f07ae7c.PNG)

 Electromyogram (EMG) signals are the curves of electrical signals that occur when muscle cells are electrically activated from nerve signals during muscle contraction, indicating 'muscle movement during human motion'. Recently, human-robot interaction (HRI) technology using bio-signals has been actively studied. Since the EMG signal among the vital signals is mainly measured by attaching the electrode to the surface of the arm, it is relatively easy and easy to measure the signal compared to other vital signal measuring methods. Also, since the measured value is constant compared with other vital signals The signal can be measured accurately. Based on these advantages, it is widely used in HRI technology. 

1. Patient who cut a part of the body.
 There are many people in the world who have lost some of their bodies in the event of injustice, but they are having difficulty in competing with others in society because the body is not functioning properly. In order to improve the situation, it is necessary to use auxiliary equipment including mental aids, but mainly for economic reasons, less than 20% of them wear auxiliary aids. Even ancillary equipment, such as those worn primarily by them, have a number of limitations that make them easy to operate or to achieve sophisticated operation. People who need strength
2. People who need a strength.
 As the interest in improving the quality of human life is increased, the need for aids to strengthen the muscular strength of a large number of elderly, women, and handicapped people who are pursuing the convenience of human physical activity and relatively weak muscles is increasing. In addition, it is predicted that this demand will increase further as the aging population increases the elderly population.

# Limitations of previous research 
1. Previous work has focused on identifying whole-hand gestures and applying them to robotic hands.  Limitations: It is difficult to recognize and classify elaborate gestures that move individual fingers. 
2. Previous studies have identified large gestures using large muscles that have little effect on each other and have been applied to various devices including robot arms. Limitations: fewer recognizable motions than EMG sensors. In the worst case, the number of sensors is the same as the number of operations, which can lead to very low efficiency. In addition, it is difficult to recognize and classify sophisticated movements without using large muscles. 
3. Related products such as robots are very expensive.
4. Limitations: it is difficult to classify relevant gestures in real time and implement algorithms. 
# Main reasons for the limit 
In the case of gestures involving muscles involving such as finger movements, the signals obtained from the EMG sensors are similar in shape and characteristics, making it difficult to classify the movements.

# Research direction and goal 
Develop hand gesture recognition algorithm and real time moving bionic hand by EMG signal classification.
Capstone Design Goals 
1.Configure and configure the LabVIEW circuit diagram to identify and save the EMG signal waveforms of the 10 hand gestures obtained with low-cost EMG sensors. 
2. Three kinds of operation setting 
3. Extract only EMG signals involved in actual operation after noise removal 
4. Selection of Feature Extraction Method for Machine Learning 
5. Selection of machine learning method suitable for real time gesture recognition 
6. Selecting the appropriate feature extraction combination and machine learning method by performing machine learning with MATLAB
# Key Considerations
For real time detection and low cost, it should have high hand gesture recognition rate while reducing computation complexity.
# Material
We need simple 3 thing for our research. 3 EMG sensors for Arduino/Raspberry Pi, Electrodes for with EMG sensor, Robotic Hand for Aurduino/Raspberry Pi. It's really cheap compared to current Prosthetic Arms.Let's see a picture on the upper list. 3 Materials can be seen.

![material](https://user-images.githubusercontent.com/32018719/42020431-d03823a4-7af2-11e8-80c1-5a3efe3fa51a.PNG)
# Method
Hand Gesture and Finding definite Muscles for Hand gesture

1.Muscles Selecting
 ![muscle adaptation](https://user-images.githubusercontent.com/32018719/42020685-87c7a2ba-7af3-11e8-8f13-6220d0b09fe6.PNG)
 ![muscles](https://user-images.githubusercontent.com/32018719/42020627-63285a08-7af3-11e8-874a-a80dafb52b38.PNG)
 ![gestures1](https://user-images.githubusercontent.com/32018719/42020907-34f6404a-7af4-11e8-855a-9de8f6e4281f.PNG)
 ![gestures2](https://user-images.githubusercontent.com/32018719/42020911-36c41956-7af4-11e8-8472-a1d539258d99.PNG)
 
Like the picture on the upper part. We attach electrodes to the muscle in definite place and insert EMG sensor to DAQ and make a code to load a data by LabVIEW

 ![laview](https://user-images.githubusercontent.com/32018719/42020880-20b1b8bc-7af4-11e8-9364-e27521f54803.PNG)
 ![1](https://user-images.githubusercontent.com/32018719/42020980-6ce1e2b6-7af4-11e8-8175-c65f66ae3e3b.PNG)
 ![2](https://user-images.githubusercontent.com/32018719/42020981-6d275e9a-7af4-11e8-9582-26b209cd48d8.PNG)
 
2.Preprocessing
 When we open the data, we could find a huge noises from DAQ that came from DAQ starting session.
 
 ![problem](https://user-images.githubusercontent.com/32018719/42021066-9f94bb34-7af4-11e8-89f7-260df5de5374.PNG)
 
 So we put bullet button to solve these problems.
 
 ![bullet button3](https://user-images.githubusercontent.com/32018719/42021230-053fb54c-7af5-11e8-86a5-2b560d6e50b5.PNG)
![bullet button](https://user-images.githubusercontent.com/32018719/42021231-05758258-7af5-11e8-8a4b-fbde9195bec2.PNG)
![bullet button2](https://user-images.githubusercontent.com/32018719/42021232-05a82352-7af5-11e8-8529-ef5e00a42162.PNG)

There is number one at the last collum that means "meaningful Action". So we collteting the data between number one at the last collum.
After that we set a Threshold Voltage to set a exact begining of gesture.

![threshold](https://user-images.githubusercontent.com/32018719/42021415-7c773c5c-7af5-11e8-9a8d-a4a983d80c97.PNG)
![threshold2](https://user-images.githubusercontent.com/32018719/42021417-7cb4bc8a-7af5-11e8-889c-00f57f9dc277.PNG)
![threshold3](https://user-images.githubusercontent.com/32018719/42021418-7cea1efc-7af5-11e8-816d-3b25d39a97e7.PNG)
![thresholdcode](https://user-images.githubusercontent.com/32018719/42021419-7d1d5e0c-7af5-11e8-8b7b-9cd2b796296b.PNG)

The data results and Code at the upper parts.

3. Machine Learning 
 We have to find best Machine Learning Method for real time detection of EMG Signal.
A. Classification Method
a.SVM
 A SVM can solve high-dimensional and nonlinear problems, but it doesn't provide a general solution to a nonlinear problem
b. KNN
 KNN in simple to understand, easy to implement, and inexpensive in retraining, but may lead to inaccurate results when entering a new sample with an imbalanced data set
c. LDA(linear Discriminant Analysis)
 LDA factor analyses look for linear combinations of variables that best fit the data.
d. QDA(Quadratic Discriminant Analysis)
 QDA may result in problems with small samples in practical applications.

"They are computationally efficient and hence are relatively easy to implement in real-time, low cost applications"
Based on these results, we will focus on the feature extraction method and SVM and KNN machine learning method in the future. 

# Result
Based on these results, we will focus on the feature extraction method and SVM and KNN machine learning method in the future. 

![default](https://user-images.githubusercontent.com/32018719/42019809-089a6100-7af1-11e8-903e-7d9c0eeb226e.PNG)
# Conclusion
Based on these results, we will focus on the feature extraction method and SVM and KNN machine learning method in the future. 
