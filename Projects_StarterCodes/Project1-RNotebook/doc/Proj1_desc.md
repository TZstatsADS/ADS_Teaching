## STAT GR5243 Spring 2018 Applied Data Science
### Project 1 An R Notebook Data Story on presidential inaugural speeches

![image](../figs/GWspeech.jpg)

Inaugural speech is the first official speech of any president of United States. It is the first time the public get to hear the president's plan for the next 100 days or 4 years. Historians who studied [1][2] past presidential inaugural speeches concluded that the speeches persistently demonstrated American ideological values over time, with constant shifts of emphasis in different eras. Natural language processing and text mining are promising tools to derive new findings in this collection of historical documents. [3]

[1] Sigelman, Lee. "Presidential inaugurals: The modernization of a genre." Political Communication 13.1 (1996): 81-92.

[2] Windt, Theodore Otto. "Presidential rhetoric: Definition of a field of study." Presidential Studies Quarterly 16.1 (1986): 102-116.

[3] Shahin, Saif. "When scale meets depth: Integrating natural language processing and textual analysis for studying digital corpora." Communication Methods and Measures 10.1 (2016): 28-50.

### Challenge 

In this project we will explore the texts of U. S. presidents' inaugrual speeches, from that of George Washington to that of Donald Trump which was delivered earlier this year. 

You are tasked to explore the texts using tools from text mining and natural language processing such as sentiment analysis, topic modeling, etc, all available in `R` and write a small story about inaugural speeches of U.S. presidents on interesting trends and patterns identified by your analysis. 

For this project, you will receive 59 inaugrual speeches that was scrapped from [The American Presidency Project](http://www.presidency.ucsb.edu/inaugurals.php). 

Even though this is an individual project, you are **encouraged** to discuss online and exchange ideas. 

The data set released contain:

+ `InaugrationInfo.xlsx`: some basic information about the presidential inaugrations.
+ `InaugrationDates.txt`: dates information about the presidential inaugrations. 
+ `inaug[president]-[term].txt`: plain text files of the transcripts of inaugrual speeches. 

#### Submission
You should produce an R notebook (rmd and html files) in your GitHub project folder, where you should write a story or a blog post on presidential inaugural speeches based on your data analysis. Your story should be supported by your results and appropriate visualization

### Project organization

A GitHub starter codes repo will be posted on piazza for you to fork and start your own project. The GitHub repo will come with suggested *milestones*. 

#### Useful resources

##### R pakcages
* R [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html) package
* R [readr](https://github.com/hadley/readr) package
* R [DT](http://www.htmlwidgets.org/showcase_datatables.html) package
* R [tibble](https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html)
* [Rcharts](http://rcharts.io/gallery/), quick interactive plots
* [htmlwidgets](http://www.htmlwidgets.org/), javascript library adaptation in R. 

##### Project tools
* A brief [guide](http://rogerdudler.github.io/git-guide/) to git.
* Putting your project on [GitHub](https://guides.github.com/introduction/getting-your-project-on-github/).
##### Examples
+ [Topic modeling](https://cran.r-project.org/web/packages/topicmodels/vignettes/topicmodels.pdf)
+ [Clustering](http://www.statmethods.net/advstats/cluster.html)
+ [Sentiment analysis of Trump's tweets](https://www.r-bloggers.com/sentiment-analysis-on-donald-trump-using-r-and-tableau/)

##### Tutorials

For this project we will give **tutorials** and give comments on:


- GitHub
- R notebook
- Example on sentiment analysis and topic modeling

#### Repositary requirement

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
- The `lib` folder contain computation codes for your data analysis. Make sure your README.md is informative about what are the programs found in this folder. 
- The `output` folder is the holding place for intermediate and final computational results.

The root README.md should contain your name and an abstract of your findings. 

#### Suggested workflow
This is a relatively short project. We only have about two weeks of working time. 

1. [wk1] Week 1 is the **data processing and mining** week. Read data description, **project requirement**, browse data, and think about what to do and try out different tools you find related to this task.
2. [wk1] Try out ideas on a *subset* of the data set to get a sense of computational burden of this project. 
4. [wk2] Explore data for interesting trends and start writing your data story. 
