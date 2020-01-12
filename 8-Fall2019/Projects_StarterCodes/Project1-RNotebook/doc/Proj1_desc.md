## Applied Data Science @ Columbia
## STAT GR5243/GU4243 Fall 2019 
### Project 1 An R/Python Notebook "Data Story" on Song Lyrics

<img src="../figs/title2.jpg" width="400">

Has it happened to you when a song was really *speaking* to you? Do you like some of your favorite songs for their lyrics? When you think of a particular music genre (e.g., classic rock), do you expect certain *topics* or *sentiments* for the lyrics? 

The goal of this project is to look deeper into the patterns and characteristics of different types of song lyrics. Applying tools from natural language processing and text mining, students should derive interesting findings in this collection of song lyrics and write a "data story" that can be shared with a general audience. 

### Datasets

+ "lyrics.csv" ([Download](https://www.dropbox.com/s/3tfv5v73z0ec8vr/lyrics.csv?dl=0)) is a filtered corpus of 100,000+ song lyrics from MetroLyrics. Available features are song name, year, artist, genre, and lyrics. You can find the complete 380,000+ song lyrics data on [Kaggle](https://www.kaggle.com/gyani95/380000-lyrics-from-metrolyrics). A ```lyrics.RData``` file is also provided in the [\data folder](../data/).

+ "artists.csv" (in the [\data folder](../data/)) provides additional background information of all the artistis. These information were scraped from [LyricsFreak](https://www.lyricsfreak.com/) by the ADS instructional team. For the singers, a detailed biography is provided. And for the bands, available information are members, established year and location. **The use of this data set for this project is optional.**

### Challenge 

In this project you will carry out an **exploratory data analysis (EDA)** of the corpus of song lyrics and write a blog on interesting findings from the provided data sets (i.e., a *data story*).

You are tasked to explore the texts using tools from text mining and natural language processing such as sentiment analysis, topic modeling, etc, all available in `R` and write a blog post using `R` Notebook. Your blog should be in the form of a `data story` blog on interesting trends and patterns identified by your analysis of these song lyrics. 

Even though this is an individual project, you are **encouraged** to discuss with your classmates online and exchange ideas. 

### Project organization

A link to initiate a *GitHub starter codes repo* will be posted on piazza for you to start your own project. 

#### Suggested workflow
This is a relatively short project. We only have about two weeks of working time. In the starter codes, we provide you two basic data processing R notebooks to get you started. 

`Text_processing.rmd` cleans the text data while `Lyrics_ShinyApp.rmd` constrcuts a shiny app to quickly explore the data. 

1. [wk1] Week 1 is the **data processing and mining** week. Read data description, **project requirement**, browse data and studies the R notebooks in the starter codes, and think about what to do and try out different tools you find related to this task.
2. [wk1] Try out ideas on a **subset** of the data set to get a sense of computational burden of this project. 
3. [wk2] Explore data for interesting trends and start writing your data story. 

#### Submission
You should produce an R notebook (rmd and html files) in your GitHub project folder, where you should write a story or a blog post on song lyrics based on your data analysis. Your story should be supported by your results and appropriate visualization.

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

### Useful resources

##### R pakcages
* R [tidyverse](https://www.tidyverse.org/) packages
* R [tidytext](https://cran.r-project.org/web/packages/tidytext/vignettes/tidytext.html)
* [Text Mining with `R`](https://www.tidytextmining.com/)
* R [DT](http://www.htmlwidgets.org/showcase_datatables.html) package
* R [tibble](https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html)
* [Rcharts](https://www.r-graph-gallery.com/interactive-charts.html), quick interactive plots
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



