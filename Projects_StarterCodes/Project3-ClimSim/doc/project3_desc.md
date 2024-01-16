## STAT GU4243/GR5243 Fall 2023 Applied Data Science 

### Project 3: ClimSim - Machine Learning for Climate Modeling 

<img src="https://leap-stc.github.io/ClimSim/_images/fig_1.png" alt="climsim" width="400"/>

In this project, you are invited to participate and contribute to [ClimSim](https://leap-stc.github.io/ClimSim/README.html), an ongoing machine learning research project of [LEAP (Learning the Earth with AI and Physics) Center](https://leap.columbia.edu), an NSF funded Science and Technology Center. 

[LEAP's mission](https://leap.columbia.edu/about/) is to *to increase the reliability, utility, and reach of climate projections through the integration of climate and data science*. As part of LEAP's research, the **ClimSim** team produced the largest-ever dataset designed for hybrid ML-physics research and hosts a GitHub repo with demo notebooks and tutorials. The raw data sets (with a total size of 42+ TB) are hosted on [huggingface](https://huggingface.co/LEAP). The team's [paper](https://arxiv.org/abs/2306.08754) describing the dataset, baseline ML models and potential research directions is accepted by the [Datasets and Benchmarks Track of NeurIPS 2023](https://nips.cc/Conferences/2023/CallForDatasetsBenchmarks).

The *ClimSim* project and dataset provide endless opportunities for data science explorations from codes adaptation, feature engineering, model traning and evaluation, to result interpretation and data visualization. The *ClimSim* team hopes to engage the Machine Learning community at large to accelerate ML research for climate modeling. 

Your project is to help the *ClimSim* project by addressing the following questions:

* Is the *ClimSim* GitHub repo with its associated "quick start" guide and demo notebooks set up in a way to provide data scientists an easy entryway to play with the data set and contribute ideas?
* Could one use collaborative cloud-based notebooks such as Google Colab or Huggingface Spaces to explore the dataset's numerous files on Huggingface? 
* What data selection, visualizations and/or processing workflows could be created so that one could apply various ML/DL models on some aspects of the *ClimSim* data? This is especially interesting given the dataset is already on Huggingface, which hosts a large number of models for NLP and computer vision. 
* What advanced ML/DL models could be applied to the *ClimSim* data set to improve the evaluation metrics?

#### Dataset
As described on the *ClimSim*'s [Data Information](https://leap-stc.github.io/ClimSim/dataset.html) page, there are three tiers of data sets:

* Tier 1: High-resolution data with real geography
* Tier 2: Low-resolution data
	* with real geography
	* assuming an [aquaplanet](https://www.cesm.ucar.edu/models/simple/aquaplanet)
* Tier 3: Quickstart toy data

You could use data from any of the tiers for this project. 

#### Challenge
This project has two subchallenges. 

**Challenge I (Oct 11, 2023 - Oct 21, 2023)** Reproducibility challenge. 

Teams attempt to reproduce [the quickstart demo notebook](https://github.com/leap-stc/ClimSim/blob/main/demo_notebooks/quickstart_example.ipynb). 

* As a first step to get familiar with the dataset, reproduce the notebook on your local computer by forking the repo and following the instructions of [the quickstart guide](https://leap-stc.github.io/ClimSim/quickstart.html). 
* Document clearly, in a report, local computing environment, steps taken for the successful reproduction, issues encountered and estimated time used for the full reproduction process. 

**Challenge II (Oct 22, 2023 - Oct 30, 2023)** Machine Learning exploration challenge. 

Each team builds upon their own reproduced [quickstart demo notebook](https://github.com/leap-stc/ClimSim/blob/main/demo_notebooks/quickstart_example.ipynb) and explore in one or more of the following directions. 

* **A quick start for R users**: Adapt the quickstart notebook and one of the baseline model notebook using R. 

* **Cloud-based notebooks**: Could the quickstart notebook be implemented on Google Colab or Huggingface Spaces to enable a more automatic one-click "quicker start"? The notebook would need to set up the required computing environment first by installing the utility functions on the cloud instance. 
	* For Google Colab, one could consider mount Google Drive to provide data access. The notebook should use relative path and provide clear data loading instructions for future users.
	* For Huggingface Spaces, the quick start data set is already [on the Huggingface Hub](https://huggingface.co/datasets/LEAP/subsampled_low_res). The key is to figure out how to load the data correctly.

* **Data loader**: The quickstart demo data set was proepared using the [preprocessing/create_npy_data_splits.ipynb](https://github.com/leap-stc/ClimSim/tree/main/preprocessing/create_npy_data_splits.ipynb) notebook. This notebook reads in data files from a local folder. Could this be revised to [read data files from the Huggingface hub](https://huggingface.co/docs/datasets/loading)? Could a user select data by specifying time range and subsampling scheme? 

* **Leveraging advanced ML models**: The *ClimSim* team prepared [a number of baseline models](https://leap-stc.github.io/ClimSim/models.html) notebooks on their GitHub. Please review them and reproduce any of their results first. It could be done locally or on the cloud. Teams are then invited to propose new models or expand any of the baseline models to improve one or multiple [the evaluation metrics](https://leap-stc.github.io/ClimSim/evaluating.html). 
 
Your final **in-class** presentation should share lessons learned during **Challenge II** that could be valuable to the *ClimSim* team:

* How to make it easier for machine learning researchers to use the *ClimSim* data?
* What machine learning models show great potential for the *ClimSim* data?
* What information could be helpful for future new visitors to the *ClimSim* GitHub page?

##### (Project) Evaluation criteria

- Challenge I
	- Is the reproduction successful?
  	- Is the reproduction process clearly described?
- Value of Challenge II exploration
	- Does the exploration enable easier use of the *ClimSim* data?
	- Does the exploration point to a promising direction for machine learning model development using the *ClimSim* data? 
- Readiness for integration with the *ClimSim* project
  - Are the cloud notebooks or GitHub repo ready to be linked to the *ClimSim* project page?
  - Are the issues identified during the project formulated as actions that could be taken to improve the GitHub repo?
- Presentation and organization
  - Is the presentation clear about both the goals and findings of the exploration?
  - Are the findings supported by adequate and appropriate evidence?
  - Is the GitHub organized and prepared in a way that makes it easier for readers to understand the project's intended values and findings?

*(More grading details will be posted as grading rubrics in courseoworks/canvas)*


#### Project details

For this project, you are performing reproducibile research for an ongoing machine learning research project. Your task is **two-fold:** *evaluating* the reproducibility and ease of use of the project's assets and *exploring* other opportunities of building new capacities. 

##### Project Deliverables

+ Challenge I: reproducibility report as specified above. 
+ Challenge II: a final presentation. The team should present their **exploration** for a new project capacity with supporting evidence.

The presentation can be technical but need to be accessible to your peer students in our class. 

##### Reproducibility requirement

Each team should organize the project repo on GitHub in a reasonable way so that others could easily navigate your repo and reproduce your results.

##### Suggested team workflow

1. [wk1] Week 1 is the **learning** week. Read the *ClimSim* GitHub page, the paper and start reproducing the quick start notebook. 

2. [wk1] As a team, brainstorm about possible choices of Challenge II based on the team's strength areas.

4. [wk2] Finish reproducing the quick start notebook and summarize the process into a reproduction report. 

5. [wk2] Week 2 is the **exploration** week. Explore different ideas for Challenge II.

6. [wk 2+3] It is ok to have 2-3 leads to explore at the end of week 2 or the beginning of week 3 but it is better to converge on a single direction by the end of week 3.

7. [wk 3+4] Week 3/4 is the **evaluation** weeks. By the second half of week 3, you should have a clear plan on what capacity you would build for Challenge II (Start early!)

8. [wk 3+4] By end of week 3, you should layout a to-do list and divide up tasks for the final product. Teams should work together and resolve any ambiguity about which team member should be doing what for this project. This is **extremly important** for this project due to the computational nature of this project.

##### Working together

- Setup a GitHub project folder with everyone listed as contributor. Everyone clones the project locally and create a local branch.
- The data is too big to be stored on GitHub. You can edit  ".gitignore" so that you don't upload the  data to GitHub.
- The team can work with subgroups of 2-3 work together more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.  
