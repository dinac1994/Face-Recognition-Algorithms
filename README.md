# Face-Recognition-Algorithms

This repository includes Eigenfaces and Tensorfaces algorithms for face recognition. These numerical methods use different matrix and tensor singular decompositions which are explained in detail in the scientific article "Facial Recognition using Tensor-Tensor Decompositions" by K. Braman and R. C. Hoover.

Both algorithms have been tested on the Yale Face Database. Image dataset is consisted of 70 images (7 different expression photographs for 10 persons).

Image set of the first person is shown below.

<img width="1064" alt="github1" src="https://user-images.githubusercontent.com/92053362/179402053-bd1ef7f3-fb23-4f08-af09-f1df78e21c91.png">


For the training image set we take first three expression photographs of the first five persons (shown in the green rectangle in the picture below). Other images are testing images. The goal of the algorithms is to recognize whether a person on the image is in the database (training image set) or not.

![preza_pca_2](https://user-images.githubusercontent.com/92053362/179402198-25d3e2f0-d8be-4591-a8a1-39944abdb07d.png)

The results of each algorithm is shown below.

### Eigenfaces results

![preza_pca_3](https://user-images.githubusercontent.com/92053362/179402275-61a7ac78-d4de-4c98-8460-f37d5a6e67af.png)

### Tensorfaces results

![tensorfacestest](https://user-images.githubusercontent.com/92053362/179402291-ec3bb4fd-eccf-4a0b-8631-edd8e1601351.png)
