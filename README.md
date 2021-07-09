# YogApp

## Inspiration
The inspiration for this project started when the national wide lockdown hit in India as soon the second wave of Covid-19 pandemic started spreading, being a computer science majors I had to stay at my desk for very very long hours sometimes for 7 hours in continuation and on an average for 10 hours every day. My neck and lower back started to ache then my elder sister who was practicing yoga for last 12 years suggested me to do yoga for 30 min everyday and started teaching me, in beginning I just have to follow her to learn the basic steps then after she just started to correct my posture and different yoga poses and to be very honest I would not be able to learn Yoga the way my sister taught me, I have my sister who was practicing this art for these 12 long years but not everyone has someone who is this proficient in yoga and can teach and correct the posture the way my sister did.

_And hence was born **YogApp - A completely new, end-to-end artificial intelligence based personal yoga instructor application built to help people teach and improve yoga posture by giving proper instruction to them.**_

Then we as a team started to build this ML based application just to solve some real problem!


## About YogApp
YogApp is built from the ground up keeping user experience in mind, which is a key ingredient when we are concerned with improving users health. It has the following features:

-Interactive experience through real-time pose recognition.
-Uses computer vision and deep learning Keras models to guide you through every step of the asana only when you complete the previous step of the asana successfully.
-Specifically designed yoga tracks/playlists which are suited to the user's health issues, creating a more personalized experience.
-Users are awarded stars based on how good the accuracy of their pose is once they complete and progress through each step in the track.

# Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/goldipatel12/YogApp/main/1.png" alt="1" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/goldipatel12/YogApp/main/2.png" alt="2" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/goldipatel12/YogApp/main/3.png" alt="3" />
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/goldipatel12/YogApp/main/4.png" alt="4" />
</p>

## Tools Used
 
- Flutter (framework to deploy a service to iOS and Android)

<p align="center">
  <img src="https://venturebeat.com/wp-content/uploads/2019/05/flutter-mobile-desktop-web-embedded.png?fit=400%2C200&strip=all" alt="1" />
</p>

- MongoDB (Cloud data store for User data)

<p align="center">
  <img src="https://www.freecodecamp.org/news/content/images/size/w2000/2020/10/node-mongodb-fundamentals.png" alt="2" />
</p>


- Tensorflow Lite (Run model on-device)

<p align="center">
  <img src="https://miro.medium.com/max/921/1*YyUienrsApR3H2aFZy_Dsw.png" alt="3" />
</p>

- PoseNet (Detect pose of user)

![alt text](https://www.danioved.com/portfolio/posenet/images/posenet-multipose.gif)

- Yoga Pose Image Dataset (transfer learning)

![alt text](https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/basic_yoga_poses_slideshow/650x350_basic_yoga_poses_slideshow.jpg)

- Text to Speech (Give the assistant a voice)

![alt text](https://tr3.cbsistatic.com/hub/i/r/2017/07/05/ae7f3c56-988b-412b-b1d0-18cb01d7ffd1/resize/1200x/f714f0b33f51070d4d0de7da7f5a0a0f/text-to-speech.jpg)
 
 


##Background Study and ML pipeline

### How Does the PoseNet model work? (images, english, math, code)
 
#### The Pipeline 
 
![alt text](https://cdn-images-1.medium.com/max/2400/1*DQ1MUB2aDSF-Opqo50Wuiw.png)
 
### Dependencies
 
- Deep Learning
- Calculus 
- Graph Theory
- Set Theory
 
## Terms
 
- A body part is an element of the body, like neck, left shoulder or right hip.
- A pair is a couple of parts. A connection between parts. 
 
### These skeletons show the indeces of parts and pairs on the COCO dataset. For the MPII dataset these skeletons vary slightly: there is one more body part corresponding to lower abs.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*BJQRrQGuW8VLH8MfA9ZngQ.png)
 
### Step 1 - Preprocessing
 
Convert the image from [0,255] to [-1,1]
`img = img * (2.0 / 255.0) — 1.0`
 
### Step 2 - Neural network
- The last operation of the neural network returns a tensor consisting of 57 matrices.
- However, this last op is just a concatenation of two different tensors: heatmaps and PAFs.
- The understanding of these two tensors is essential.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*6Y2bbt6Q_eMYZmlqA-sV-A.png)
 
- A heatmap is a matrix that stores the confidence the network has that a certain pixel contains a certain part. There are 18 (+1) heatmaps associated with each one of the parts and indexed as we showed in the drawing of the skeletons. We will extract the location of the body parts out of these 18 matrices.
![alt text](https://cdn-images-1.medium.com/max/1600/1*Uj96YyLBlU2Zk4AXK069pQ.png)
- PAFs (Part Affinity Fields) are matrices that give information about the position and orientation of pairs. They come in couples: for each part we have a PAF in the ‘x’ direction and a PAF in the ‘y’ direction. There are 38 PAFs associated with each one of the pairs and indexed as we showed in the drawing of the skeletons. We will associate couples of parts into pairs thanks to these 38 matrices.
![alt text](https://cdn-images-1.medium.com/max/1600/1*UXo2pmN7XGz4GD3S5Fka3w.png)
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*sSWrmi9DsXkJ1kR1mZBKhA.png)
 
### Step 3 - Detecting Parts in the image
 
### We need to extract parts locations out of a heatmap. Or, in other words, we need to extract points out of a function. What are these points? The local maximums.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*L9AVT5fd5_SetfIe25MLfA.png)
 
We apply a non-maximum suppression (NMS) algorithm to get those peaks.
 
1. Start in the first pixel of the heatmap.
2. Surround the pixel with a window of side 5 and find the maximum value in that area.
3. Substitute the value of the center pixel for that maximum
4. Slide the window one pixel and repeat these steps after we’ve covered the entire heatmap.
5. Compare the result with the original heatmap. Those pixels staying with same value are the peaks we are looking for. Suppress the other pixels setting them with a value of 0.
 
- After all the process, the non-zero pixels denote the location of the part candidates.
![alt text](https://cdn-images-1.medium.com/max/1600/1*AvUQlzPlWd9tq2yKMuvEzg.png)
 
### Step 4 - Connect Body parts (Bipartite graph)
- Now that we have found the candidates for each one of the body parts, we need to connect them to form pairs. 
- This is where graph theory steps into.
- Say that, for a given image, we have located a set of neck candidates and a set of right hip candidates. 
- For each neck there is a possible association, or connection candidate, with each one of the right hips. 
- So, what we have, is a complete bipartite graph, where the vertices are the part candidates, and the edges are the connection candidates.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*u4qA5KiwnFwmTC_RngLi8g.png)
 
- How can we find the right connections? 
- Finding the best matching between vertices of a bipartite graph is a well-known problem in graph theory known as the assignment problem. 
- In order to solve it, each edge on the graph should have a weight.
- Let’s put some weights on those edges.
 
### Step 5 - Score each connection (Line Integral)
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*xvieCZs8n5pSsBXIaJlt4g.png)
 
- This is where PAFs enter the pipeline. 
- We will compute the line integral along the segment connecting each couple of part candidates, over the corresponding PAFs (x and y) for that pair. 
- As Wikipedia says, a line integral measures the effect of a given field (in our case, the Part Affinity Fields) along a given curve (in our case, the possible connections between part candidates). 
 
#### khan academy example  https://www.youtube.com/watch?v=uXjQ8yc9Pdg 
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*Ce7iDD5ac7i26YXqoLQPyw.png)
 
- The line integral will give each connection a score, that will be saved in a weighted bipartite graph and will allow us to solve the assignment problem.
- In the code, we approximate the line integral by taking samples of the dot product and sum them all.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*2ZhsRCvcFbB2jg_A0v9Khg.png)
 
### Step 6 - Finds Connections that Maximize total score (Assignment) 
 
- The weighted bipartite graph shows all possible connections between candidates of two parts, and holds a score for every connection. 
- The mission now is to find the connections that maximize the total score, that is, solving the assignment problem.
- There are plenty of good solutions to this problem, but we are going to pick the most intuitive one:
 
1. Sort each possible connection by its score.
2. The connection with the highest score is indeed a final connection.
3. Move to next possible connection. If no parts of this connection have been assigned to a final connection before, this is a final connection.
4. Repeat  step 3 until we are done.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*_AKnRFchFgs6JURm3-4EbQ.png)
- As you see, there may be part candidates that will finally not fit into a pair.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*ldvZsQrO-xFEUbbwR-gYcg.png)
 
### Step 7 Merge the detected connection into a skeleton! 
 
- The final step is to transform these detected connections into the final skeletons. 
- We will start with a naive assumption: at first, every connection belongs to a different human. 
- This way, we have the same number of humans as connections we have detected.
 
### Let Humans be a collection of sets {H1, H2, …, Hk}. Each one of these sets — that is, each human — contains, at first, two parts (a pair). And let’s describe a part as a tuple of an index, a coordinate in the ‘x’ direction and a coordinate in the ‘y’ direction.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*dZVvVOzD2yY6WFvbiiPWAg.png)
 
### Here comes the merging: if humans H1 and H2 share a part index with the same coordinates, they are sharing the same part! H1 and H2 are, therefore, the same humans. So we merge both sets into H1 and remove H2.
 
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*Uwh8lCgKAMC2tXRQ-0hPIg.png)
 
- We continue to do this for every couple of humans until no couple share a part.
- In the code, for some sensible reasons, we first define a human as a set of connections, not as set of parts. After all the merging is done, we finally describe a human as a set of parts.
 
![alt text](https://cdn-images-1.medium.com/max/1600/1*QYkHpFrX6MJOltizDhEyUA.png)
 
- Finally what you get is a collection of human sets, where each human is a set of parts, where each part contains its index, its relative coordinates and its score.
 
## PoseNet Transfer Learning on Yoga
 
![alt text](https://cdn-images-1.medium.com/max/800/1*9t7Po_ZFsT5_lZj445c-Lw.png)
 
1. Train the entire model. In this case, you use the architecture of the pre-trained model and train it according to your dataset. You’re learning the model from scratch, so you’ll need a large dataset (and a lot of computational power).
 
2. Train some layers and leave the others frozen. As you remember, lower layers refer to general features (problem independent), while higher layers refer to specific features (problem dependent). Here, we play with that dichotomy by choosing how much we want to adjust the weights of the network (a frozen layer does not change during training). Usually, if you’ve a small dataset and a large number of parameters, you’ll leave more layers frozen to avoid overfitting. By contrast, if the dataset is large and the number of parameters is small, you can improve your model by training more layers to the new task since overfitting is not an issue.
 
3. Freeze the convolutional base. This case corresponds to an extreme situation of the train/freeze trade-off. The main idea is to keep the convolutional base in its original form and then use its outputs to feed the classifier. You’re using the pre-trained model as a fixed feature extraction mechanism, which can be useful if you’re short on computational power, your dataset is small, and/or pre-trained model solves a problem very similar to the one you want to solve.
Figure 2 presents these three strategies in 
 
 


## Problems
Some of the problems that we are trying to solve with YogApp are:


- **Obesity** - a serious worldwide health issue.

- People in normal time, have terribly **hectic schedules**, they don’t have time to go to the gym. Some people are insecure about their bodies so avoid going to public gyms as well.

- **Work from home** due to the recent COVID pandemic has deteriorated the situation even more.

- **Physical inactivity** can lead to diseases, both physical and mental. In these trying times, any kind of disease can be deadly.

- Maintaining **correct posture** while exercising is essential, as wrong postures can lead to **body problems**.
## Proposed solution

- We propose **yoga** as a solution to this issue. Practitioners recommend yoga for its **mind-body benefits—flexibility**, toned muscles, reduced stress, among others. Yoga is closely related to the principles of **Indian Ayurveda**. Yoga helps reduce weight as well as **cholesterol**, thus this will be helpful for **diabetics** out there. Yoga reduces the symptoms of **depression** and **anxiety**. It’s beneficial for women during and after **breast cancer** as well as **pregnancy**.

- More recently, scientists have begun to test yoga's effect on serious medical conditions. Yoga has already become part of the **standard treatment for a number of medical problems**.

- YogApp is your **real-time personal YOGA instructor**, allowing anyone to harness the benefits of yoga from any place in the world.

- YogApp will ensure that however busy a person might be, they spend some time of their day in physical activity and mental exercises as they **don't have to travel anywhere** to exercise.


## How is YogApp different from all the applications out there? 

The first question that arises - why should should you choose YogApp?

**Simply because no other app out there implements real-time pose prediction technology!**

- Every time you are stuck on a step or yoga asana, YogApp waits for you to complete it, and only then it gives instructions for the next asana, just like a **personal yoga instructor** who attends to you in **real-time**.

- You don’t need to pause the video or anything. It will **automatically detect** if you have achieved the correct pose and adapt accordingly.

- Gamified by **awarding stars** to the users based on their pose accuracy.

## Scalability implementation: scale-out

- For a large number of users, we will continue to use **Firebase** for storage, authentication and various other services that comes along with it. We believe **Firebase** provides an amazing set to tools to easily maintain a large userbase with robust and essential services in a single package.

- **MUX** will be used for fast and seamless video streaming to multiple users around the world.

- We can support any number of users with **Tensorflow Lite** on-device ML models.

- For voice recognition we are using **Dialogflow** which easily scales out as it is also connected to the Google Cloud Platform.

## Commercializing 

- This app will have **beginners track** publicly accessible to all users for free as we release.

- We shall have other **requirement specific tracks** as a paid option. But we will give users access to the paid features as a limited time trial so that they can try them out.

- We will have an **active support channel** where users can reach out easily if they face any problem while using the app.

## Scope of going beyond

- Converting the app into a **whole assistant for fitness** in general.

- From **personalized diets** to assessing requirements and suggesting a whole **fitness routine** including food items, schedules, and yoga tracks and timings.

- The app can be used for **ordering health gear** like yoga mats as well as nutritional items, like nutritional granola bars. It can be made into a **monthly plan** for the users specific to the yoga track plan they have chosen.

- YogApp will be a **global platform** for us to introduce and educate people on the benefits of Indian Vedic culture to the global community. This will make yoga a fun experience, hence people will **enjoy** exercising along with improving their physique, mental strength, and will power.

