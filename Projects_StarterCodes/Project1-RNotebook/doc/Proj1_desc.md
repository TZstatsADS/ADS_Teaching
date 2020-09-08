## Applied Data Science @ Columbia
## STAT GR5243/GU4243 Fall 2020 
### Project 1 An R Notebook "Data Story" on "How Americans Vote?"

<img src="../figs/title2.jpg" width="400">

The year 2020 has been strange and eventful, to say the least. Yet, there are still months before it is over. During the remaining months of 2020, United States, the rest of world, will all pay close attention to the upcoming election of the next U.S. president, as there is so much on the stake. 

The goal of this project is to look deeper into the patterns and characteristics of voter behaviors from past U.S. elections using the [American National Election Studies (ANES)](https://electionstudies.org/). Applying data mining, statistical analysis and visualization, students should derive interesting findings in this collection of election surveys and write a "data story" that can be shared with a **general audience**. 

### Datasets

+ all datasets on ANES' website can be considered, including pilots. 

### Challenge 

In this project you will carry out an **exploratory data analysis (EDA)** of survey responses from ANES and write a blog on interesting findings from your selected data sets (i.e., a *data story*).

You are tasked to explore the survey responses using tools from data mining, statistical analysis and visualization, etc, all available in `R` and write a blog post using `R` Notebook. Your blog should be in the form of a `data story` blog on interesting trends and patterns identified by your analysis of these national election studies. 

You should *critically* consider potential issues due to confounding, response and non-response biases, and design changes (i.e., different ways the questions were phrased in different years) when interpreting your data analysis results.

Even though this is an individual project, you are **encouraged** to discuss with your classmates online and exchange ideas. 

### Project organization

A link to initiate a *GitHub starter codes repo* will be posted on piazza for you to start your own project. 

#### Suggested workflow
This is a relatively short project. We only have about two weeks of working time. In the starter codes, we provide you one basic data processing R notebooks to show you how to get started. 

1. [wk1] Week 1 is the **data processing and mining** week. Read data description, **project requirement**, browse data and studies the R notebooks in the starter codes, and think about what to do and try out different tools you find related to this task.
2. [wk1] Try out ideas on a **subset** of the data set to get a sense of computational burden of this project. 
3. [wk2] Explore data for interesting trends and start writing your data story. 

#### Submission
You should produce an R notebook (rmd and html files) in your GitHub project folder, where you should write a story or a blog post on "How Did Americans Vote" based on your data analysis. Your story, especially *main takeways* should be **supported by** your results and appropriate visualization. 

Your story should NOT be a laundry list of all analyses you have tried on the data or how you solved a technical issue in your analysis, no matter how fascinating that might be. 

#### Repositary requirement

The final repo should be under our class github organization (TZStatsADS) and be organized according to the structure of the starter codes. 

```
proj/
├──data/
├──doc/
├──figs/
├──dev/
├──output/
├── README
```
- The `data` folder contains the raw data of this project. These data should NOT be processed inside this folder. Processed data should be saved to `output` folder. This is to ensure that the raw data will not be altered. 
- The `doc` folder should have documentations for this project, presentation files and other supporting materials. 
- The `figs` folder contains figure files produced during the project and running of the codes. 
- The `dev` folder (sometimes called `lib`) contain computation codes for your data analysis. Make sure your README.md is informative about what are the programs found in this folder. 
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

##### Examples
+ [FiveThirtyEight: Voters Who Think The Economy Is The Country’s Biggest Problem Are Pretty Trumpy. That Might Not Help Him Much.](https://fivethirtyeight.com/features/voters-who-think-the-economy-is-the-countrys-biggest-problem-are-pretty-trumpy-that-might-not-help-him-much/)
+ [Blog: Republicans trust the government more than Democrats do under their own presidents](https://blogs.lse.ac.uk/usappblog/2019/10/31/republicans-trust-the-government-more-than-democrats-do-under-their-own-presidents/)
+ [Paper: “Like They’ve Never, Ever Seen in This Country”? Political Interest and Voter Engagement in 2016](https://academic.oup.com/poq/article/82/S1/822/4944388)
+ [A good "data story"](https://drhagen.com/blog/the-missing-11th-of-the-month/)

##### Tutorials

For this project we will give **tutorials** and give comments on:

- GitHub
- R notebook