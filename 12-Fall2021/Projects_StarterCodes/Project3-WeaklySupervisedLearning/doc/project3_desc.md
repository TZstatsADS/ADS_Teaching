## STAT GU4243/GR5243 Fall 2021 Applied Data Science 

### Project 3: Weakly supervised learning: label noise and correction


In this project, we will carry out **model evaluation and selection** for predictive analytics on an imbalanced image data. As data scientists, we often need to **evaluate** different modeling/analysis strategies and decide what is the best. Such decisions need to be supported by sound evidence in the form of *model assessment, validation and comparison*. In addition, we also need to **communicate our decision and supporting evidence** clearly and convincingly in an accessible fashion.

We will be dealing with a classification problem, where the training labels are not perfect. This is a common phenomenon in data science. Getting accurate ground true labels can be costly and time-consuming. Sometimes, it is even impossible. The weakly supervised learning is a subject that addresses the issue with imperfect labels. In particular, we are going to train a predictive model where label noises exist. 



##### Dataset

A noisy version of "CIFAR-10" dataset will be provided (on piazza). The original CIFAR-10 dataset consists of 32x32 colour images in 10 classes. For this task, random noises have been added to original dataset and you only have access to a small subset of clean labels. In particular, we provide a training set with 50,000 images in the directory `../data/images/` with:
- noisy labels for all images provided in `../data/noisy_label.csv`;
- clean labels for the first 10,000 images provided in `../data/clean_labels.csv`.

See the starter code for more details on loading and visualizing the data. 



##### Challenge

Your client is interested in creating an mobile AI program that **accurately classifies the images**. 
The portability of this AI program (holding storage and memory cost) and the computational efficiency (test running time cost) are of great concern to your client. This translates to a balance between the complexity of variable/features/models used and the predictive performance. 


For this project, you are asked to build a predictive model for image classification using the imperfect dataset provided. A baseline logistic regression model that:

- uses RGB color histogram features; and 
- treats the training set as if it has clean labels

is provided in the starter code. 


Assume that the **current practice (baseline)** on your client side is just using the logistic regression soley on the noisy data.

As expected, the overall performance of the baseline model is not satisfactory mainly due to two reasons. The first reason is that the model and feature extractor we used is not sophisticated enough. The toyish model we used for baseline is barely for the purpose of illustrating the workflow of building a predictive models for CIFAR-10 dataset. Therefore, you should consider a more complex model that will give a better prediction performance. The second reason is that we treat the noisy labels with error as if they are clean. Therefore, the model is actually learning from a untrustful source. There are many approaches to addressing the second issue in the literature. For example, [Inoue et al. (2017)](https://openaccess.thecvf.com/content_ICCV_2017_workshops/papers/w32/Inoue_Multi-Label_Fashion_Image_ICCV_2017_paper.pdf) suggests a "label-correction" approach - before feeding the training set to the predictive model, they use the small set with both clean and noisy label to train a label-correction model.  



To see how performance get improved by solving the two issues listed as above, you will be asked to build the following two predictive models:

- **Model I**: this is a more sophisticated model (e.g. neural networks) than the baseline, while still treats the noisy labels as clean ones;
- **Model II**: use exactly the same predictive model as in Model I, but add some extra models or procedures to address the label noise issue. You can replicate the method in  [Inoue et al. (2017)](https://openaccess.thecvf.com/content_ICCV_2017_workshops/papers/w32/Inoue_Multi-Label_Fashion_Image_ICCV_2017_paper.pdf) (with some simplification if you wish), or you can explore some other methods for weakly supervised learning.




##### Evaluation criteria

- Ease of reproducibility 
  - Are the codes for the proposed methods well annotated and documented?
  - Can the analysis be re-run nearly automatically in the Jupyter/R Notebook?
- Out-of-sample performance 
  - How close are the reported performances (presentation and online) to the performances on a hidden test set?
  - Retrain the model on a new set of noisy labels, how close are the performances compared to the reported performances?
- Portability of proposed strategies
  - Computational speed for feature extraction and model training.
  - Computational speed for prediction.
  - Memory use for model training and prediction.
- Presentation and organization
  - Is the presentation convincing about the intuition of the proposed strategies?
  - Is it supported by adequate and appropriate evidence?
  - Is the GitHub organized and prepared in a way that makes it easier for readers to understand the proposed strategies and its advantages and limitations?

*(More details will be posted as grading rubrics in courseoworks/canvas)*


#### Project details

For this project, you are to carry out a business feasibility evaluation project that try to propose a **feasible** improvement over the current practice in terms of running cost (storage, memory and time) **and** prediction accuracy (average precision). 


##### Final presentation
For presentation, the team should present their **proposal** for an improvement and support this proposal with evidence on 

- Performance improvement;
- Running cost tradeoff;
- Supporting evidence on why the proposed strategies make sense, such as intuitiveness of the weakly supervised strategy etc.

The presentation can be technical but need to be accessible to your peer students in our class. 

##### Platform requirement

Your client will evalaute your report on a single personal computer that has `R` and `python` installed with 16GB memory.  
 
+ Your feature processing needs to be reasonably efficient as you will have **only 30 minutes to process 10,000 new images**. 
+ Your `main.ipynb`/`main.Rmd` should 
	+ have a folder path as an input that point to the folder of training images. The folder structure of new images will have the same structure as the training data released to you (but without any labels);
	+ and output a report on the performance (average precision and time cost) of the 3 models (*baseline*, *model I* and *model II*).
	+ if you use tools outside `python`/`R`, please provide detailed instruction on the installation and use of these tools. 

##### Reproducibility requirement

Each team should organize the project repo on GitHub according to the structure of the starter codes.

```
GitHub_proj/
├──data/
├──doc/
├────main.ipynb
├──figs/
├──output/
├──README.md
```

- In `data`, team members should individually save raw image data and csv files that contains clean and noisy labels for the images on their local computer. 
- The `doc` folder should have documentations for this project, presentation files and other supporting materials. You should have a final `main.ipynb` or `main.Rmd` following the template given in the starter codes. Your `main.ipynb`/`main.Rmd` can assume that there is a data folder of raw images with subfolders corresponding to the training set and the test set.
- The `figs` folder contains figure files produced during the project and running of the codes.
- The `output` folder is the holding place for feature extracted, other intermediate and final results.

The instructional team will download each team's GitHub repo and cross-examine each team's proposal for reproducibility on the current dataset and for reliability using a different dataset.



##### Suggested team workflow

1. [wk1] Week 1 is the **planning** week. Read data description, fully understand the **project requirement**, and browse data and the starter codes.

2. [wk1] As a team, download the data, discuss data management need of this project, and try adapt the starter codes to a *subset* of images to a sense of computational burden of this project.

3. [wk1] As a team, read and brainstorm about possible choices of model I and model II.

4. [wk2] Based on outcomes from week 1 brainstorm sessions, start data cleaning (start early on this one!)

5. [wk2] Week 2 is the **exploration** week. Try different feature extractors and predictive models.

6. [wk2] It is ok to have 2-3 leads to explore at the beginning of week 2 but it is better to converge on a single direction by the end of week 2.

7. [wk 3+4] Week 3/4 is program **evaluation** weeks. By the beginning of week 3, you should have a clear plan on what predictive model and weakly supervised learning method to consider. During the final week, there will be some serious model training, validation and testing, which is likely to take some time. (Start early!)

8. [wk 3+4] By week 3, you should layout a to-do list and divide up tasks. Teams should work together and resolve any ambiguity about which team member should be doing what for this project. This is **extremly important** for this project due to the computational nature of this project.

   

##### Working together

- Setup a GitHub project folder with everyone listed as contributor. Everyone clones the project locally and create a local branch.
- The data is too big to be stored on GitHub. You can edit  ".gitignore" so that you don't upload the  data to GitHub.
- The team can work with subgroups of 2-3 work together more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.  


##### Example starter codes

As example, you can find in the GitHub starter codes an example using logistic regression. 
