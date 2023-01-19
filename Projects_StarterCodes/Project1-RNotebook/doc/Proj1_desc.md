## Applied Data Science @ Columbia
## STAT GR5243/GU4243 Spring 2023
### Project 1 A Notebook "Data Story" on the history of philosophy

<img src="../figs/100126-the-glass.jpeg" width="400">

The goal of this project is to write a data story on philosophy using the dataset for the [Philosophy Data Project](http://philosophydata.com/index.html). Applying data mining, statistical analysis and visualization, students should derive interesting findings in this collection of philosophy texts and write a "data story" that can be shared with a **general audience**. 

### Datasets

+ The data sets can be found at https://www.kaggle.com/kouroshalizadeh/history-of-philosophy. 

### Challenge 

In this project you will carry out an **exploratory data analysis (EDA)** of philosophy texts and write a blog on interesting findings from your analysis (i.e., a *data story*).

You are tasked to explore the text corpus using tools from data mining, statistical analysis and visualization, etc, all available in `R` or `Python` and write a blog post using `R` or `Python` Notebook. Your blog should be in the form of a `data story` blog on interesting trends and patterns identified by your analysis of these philosophy texts. 

Even though this is an individual project, you are **encouraged** to discuss with your classmates and exchange ideas. 

### Project organization

A link to initiate a *GitHub starter codes repo* will be posted on Canvas for you to start your own project. 

#### Suggested workflow
This is a relatively short project. We only have about two weeks of working time. 

1. [wk1] Week 1 is the **data processing and mining** week. Read data description, **project requirement**, browse data and study the R notebooks in the starter codes, and think about what to do and try out different tools you find related to this task.
2. [wk1] Try out ideas on a **subset** of the data set to get a sense of computational burden of this project. 
3. [wk2] Explore data for interesting trends and start writing your data story. 

#### Submission
You should produce an R or Python notebook (rmd and html files) in your GitHub project folder, where you should write a story or a blog post on the history of philosophy based on your data analysis. Your story, especially *main takeways* should be **supported by** your results and appropriate visualization. 

Your story should NOT be a laundry list of all analyses you have tried on the data or how you solved a technical issue in your analysis, no matter how fascinating that might be. 

#### Repository requirement

The final repo should be under our class github organization (TZStatsADS) and be organized according to the structure of the starter codes. 

```
proj/
├──data/
├──doc/
├──figs/
├──lib/
├──output/
├── README
```
- The `data` folder contains the raw data of this project. These data should NOT be processed inside this folder. Processed data should be saved to `output` folder. This is to ensure that the raw data will not be altered. 
- The `doc` folder should have documentations for this project, presentation files and other supporting materials. 
- The `figs` folder contains figure files produced during the project and running of the codes. 
- The `lib` folder (sometimes called `dev`) contain computation codes for your data analysis. Make sure your README.md is informative about what are the programs found in this folder. 
- The `output` folder is the holding place for intermediate and final computational results.

The root README.md should contain your name and an abstract of your findings. 

### Useful resources

##### R pakcages
* R [tidyverse](https://www.tidyverse.org/) packages
* R [DT](http://www.htmlwidgets.org/showcase_datatables.html) package
* R [tibble](https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html)
* [Rcharts](https://www.r-graph-gallery.com/interactive-charts.html), quick interactive plots
* [htmlwidgets](http://www.htmlwidgets.org/), javascript library adaptation in R. 

##### Project tools
* A brief [guide](http://rogerdudler.github.io/git-guide/) to git.
* Putting your project on [GitHub](https://guides.github.com/introduction/getting-your-project-on-github/).

##### Example
+ [A good "data story"](https://drhagen.com/blog/the-missing-11th-of-the-month/)

##### Tutorials

For this project we will give **tutorials** and give comments on:

- GitHub
- R notebook
- Example on sentiment analysis and topic modeling
