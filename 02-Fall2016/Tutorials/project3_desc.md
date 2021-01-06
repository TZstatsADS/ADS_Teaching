### STAT GU4243/GR5243 Fall 2016 Applied Data Science
### Project 3 Predictive analytics-model evaluation and selection

#### - for poodle versus fried chickens (KFC?)

In this project, we will carry out **model evaluation and selection** for predictive analytics on image data. As data scientists, we often need to evaluate different modeling/analysis strategies and decide what is the best. Such decisions need to be supported by sound evidence in the form of model assessment, validation and comparison. In addition, we also need to communicate our decision and supporting evidence clearly and convincingly in an accessible fashion.

##### Challenge
For this project, you will receive [a set of 2000 images of poodle dogs and fried chickens](https://courseworks2.columbia.edu/courses/11849/files/folder/Project_Files?preview=696483)[coursework login required]. Your client is interested in creating an AI program that accurately distinguish pictures of poodle dogs from pictures of fried chicken. 

The portability of this AI program (holding storage and running memory cost) and the computational efficiency (test running time cost) are of great concern to your client. This translates to a balance between the complexity of variable/features/models used and the predictive performance. 

![image](https://github.com/TZstatsADS/ADS_Teaching/blob/master/Fall2016_Projects/Project3_PoodleKFC/doc/predictiveprogram.png)

Assume that the **current practice** on your client side is just using [boosted](https://en.wikipedia.org/wiki/Boosting_(machine_learning)) [decision stumps](https://en.wikipedia.org/wiki/Decision_stump) on [SIFT features](https://en.wikipedia.org/wiki/Scale-invariant_feature_transform). `R` pakcage [`gbm`](https://cran.r-project.org/package=gbm) can be used to implement this classifier. 

For this project, you are to carry out a business feasibility evaluation project that try to propose a *feasible* improvement over the current practice in terms of running cost (storage, memory and time) **and** prediction accuracy. 

Throughout the course of this project, we will give tutorials on the following topics:

- Image processing and features extraction.
- Overview of classification.
- Model evaluation and comparison.

For presentation, the team should present their **proposal** for an improvement and support this proposal with evidence on 

- Performance improvement;
- Running cost tradeoff;
- Supporting evidence on why the proposed strategies make sense, such as intuitiveness of the selected features etc.

The presentation can be technical but need to be accessible to your peer students in our class. 

##### Reproducibility requirement

Each team should organize the project repo on GitHub according to the structure of the starter codes. 

```
proj/
├──data/
├──doc/
├──figs/
├──lib/
├──output/
├── main.R
├── README
```
- In `data`, one should find raw image data and a file that contains groundtruth for the images. Currently the folder is empty due to the upload limit of GitHub. You shall not upload the images as these are copy-right protected materials. For tutorial purpose, we put example images of handwritten zipcode digits in the starter codes. 
- The `doc` folder should have documentations for this project, presentation files and other supporting materials. 
- The `figs` folder contains figure files produced during the project and running of the codes. 
- The `lib` folder contain R codes for the AI program. It should have the following files: `feature.R`, `train.R`, and `test.R`. The codes in the `lib` folder are not intended to be run directly but to be called from `main.rmd`. 
- The `output` folder is the holding place for feature extracted, other intermediate and final results.

The instructional team will cross-examine each team's proposal for reproducibility on the current dataset and for reliability using a different dataset.

##### Project learning support 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1: introduction and project description
- week 2: image processing and feature extraction
- week 3: supervised learning and model assessment

##### Suggested team workflow
1. [wk1] Week 1 is the **planning** week. Read data description, **project requirement**, and browse data and the starter codes. 
2. [wk1] As a team, download the data, discuss data management need of this project, and try adapt the starter codes to a *subset* of images to a sense of computational burden of this project. 
3. [wk1] As a team, read and brainstorm about possible lead on features. 
4. [wk2] Based on outcomes from week 1 brainstorm sessions, start data cleaning (start early on this one!)
5. [wk2] Week 2 is the **exploration** week. Try different features and classifiers.
6. [wk2] It is ok to have 2-3 leads to explore at the beginning of week 2 but it is better to converge on a single direction by the end of week 2 (10/26). 
7. [wk3] Week 3 is program **evaluation** week. By 10/26 (the beginning of week 3), you should have a clear plan on what set of features to consider and what set of classifiers to consider. During the final week, there will be some serious model training, validation and testing, which is likely to take some time. (Start early!)
8. [wk2/3] By 10/21, you should layout a to-do list and divide up tasks. Teams should work together and resolve any ambiguity about which team member should be doing what for this project. This is **extremly important** for this project due to the computational nature of this project. 

##### Working together
- Setup a GitHub project folder with everyone listed as contributor. Everyone clones the project locally and create a local branch. 
- The data is too big to be stored on GitHub. You can fork the repo to a local folder for this class or all your data science projects and have the data stored in "../data/" from root. Your project folder may look like

```
local proj/
├──data/
├──GitHub/
├── README
```
- The team can work with subgroups of 2-3 work together more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.  

##### Example starter codes

As example, you can find in the GitHub starter codes an example using handwritten zipcode data. We will give more examples during tutorials. 

