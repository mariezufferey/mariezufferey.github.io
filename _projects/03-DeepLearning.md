---
title: Deep Learning for image segmentation
# vignette: [[jonathan’s movies??]]
collaborators: Guillaume Witz
past: false
---

Deep learning methods have received a lot of attention in the past years. While in many cases simpler methods works as well, image analysis is the one application where deep learning shines. Using tools such as Keras and Tensorflow which simplify access to deep learning methods, I am exploring the feasibility to use those to perform routine image segmentation in various microscopy based projects. The image below shows how a u-net convolutional network achieves excellent segmentation of dense E.coli cells imaged over a large area in a 96-well plate (see code [here](https://github.com/guiwitz/DeepPlateSegmenter)). The video shows that deep learning can be applied successfully in very different situations. On the left cells growing in a microfluidic channel are segmented, while on the right fluorescent spots within the cells (tagged origin of replication) are segmented.

![My screenshot]({{ "/assets/projects/segmentation.png" | absolute_url}}){:height="500px" width="500px"}..


<iframe width="640" height="360" src="https://www.youtube.com/embed/csQeQfq81rQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>