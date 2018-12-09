# Traffic Sign Detection and Classification Under Challenging Conditions

## Block Diagram
![alt text](https://github.com/himol7/Traffic-Sign-Detection-and-Classification-Under-Challenging-Conditions/blob/master/images/blockdiagram.PNG)

## Detect_Condtion  
In the first step, conditions like *Lens Blurring, Extreme Darkness/Brightness and Gaussian Noise* are detected in the video. We need to *nullify* effects of these conditions before performing contours' detection on the video frames. <br/>
Codes for the same present in the folder.

## Operations on Video
Then, we divide the video into frames and remove the aforementioned effects from each frame of the video. After this processing is done, we merge the video frames together in order to obtain a full video sequence. <br/>
Codes for the same present in the folder.

## Optical Flow
After the video is processed and a *clean(effects nullified)* sequence is in hand, we implement detection and tracking on the video sequence. The algorithm collects sign contours **detected** *(contours detection using Hough Transforms)* in each video frame and passes them through LeNet architecture for **recognition** of the sign. <br/>
>As performing detection on each and every video frame is computationally and temporally, we have employed Optical Flow algorithm to obtain the track of a particular traffic sign in a video sequence. Optical Flow provides a Bounding Box of the contour for the upcoming frame.<br/>

Codes for the same present in the folder.

## LeNet Architecture:
![alt text](https://github.com/himol7/Traffic-Sign-Detection-and-Classification-Under-Challenging-Conditions/blob/master/images/LeNet.png)

Source: https://github.com/muddassir235/German-Traffic-Sign-Classifier/tree/master

## Data sets used:
1. CURE-TSD https://ghassanalregib.com/cure-tsd/
2. Tencent 100k https://cg.cs.tsinghua.edu.cn/traffic-sign/
3. GTSRB  http://benchmark.ini.rub.de/?section=gtsrb&subsection=dataset
