# Traffic Sign Detection and Classification Under Challenging Conditions

## Detect_Condtion  
In the first step, conditions like *Lens Blurring, Extreme Darkness/Brightness and Gaussian Noise* are detected from the video. We need to *nullify* effects of these conditions before performing contours' detection on the video frames.

## Operations on Video
Then, we divide the video into frames and remove the aforementioned effects from each frame of the video. After this processing is done, we merge the video frames together in order to obtain a full video sequence.

## Optical Flow
After the video is processed and a *clean(effects nullified)* sequence is in hand, we implement detection and tracking on the video sequence. The algorithm collects sign contours **detected** in each video frame and passed them through LeNet architecture for **recognition** of the sign. <br/>
>As performing detection on each and every video frame is computationally and temporally, we have employed Optical Flow algorithm to obtain the track of a particular traffic sign in a video sequence. Optical Flow provides a Bounding Box of the contour for the upcoming frame.

