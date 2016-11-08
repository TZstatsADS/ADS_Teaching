## STAT GU4243/GR5243 Fall 2016 Applied Data Science
### Project 4 Association mining of music and text

### - from the [million song data](http://labrosa.ee.columbia.edu/millionsong/) project

In this project we will explore the association between music features and lyrics words from a subset of songs in the [million song data](http://labrosa.ee.columbia.edu/millionsong/). [Association rule minging](https://en.wikipedia.org/wiki/Association_rule_learning) has a wide range of applications that include marketing research (on co-purchasing), natural language processing, finance, public health and etc. Here the word "rules" is really as general as any interesting and meaningful patterns. Based on the association patterns identified, we will create **lyric words [recommender algorithms](http://blog.yhat.com/posts/recommender-system-in-r.html)** for a piece of music (using its music features).

#### May the next *Nobel prize in Literature* be with you!
![image](https://static01.nyt.com/images/2010/12/10/arts/times/times-blog480.jpg)

### Challenge 
For this project, you will receive [a set of 2350 songs from the million song data project](https://courseworks2.columbia.edu/courses/11849/files/folder/Project_Files?preview=763391)-[**coursework login required**]. This is a hacking challenge where the organizer is interested in exploring a collection of creative lyrics recommender methods that the participating data scientists can come with. The participants are **encouraged** to discuss online and exchange ideas. 

The data set released contain:

+ `Common_id.txt`: ids for the songs that have both lyrics and sound analysis information. 2350 in total;
+ `lyr.Rdata`: dim: 2350*5001. [bag-of-words](https://en.wikipedia.org/wiki/Bag-of-words_model) for 2350 songs stored in an `R` dataframe;
+ `data.zip`: [h5](https://en.wikipedia.org/wiki/Hierarchical_Data_Format) format music feature files for the 2350 songs;
+ `msm_dataset_train.txt` original text of the lyrics data. (Potentially can be used for [n-gram](https://en.wikipedia.org/wiki/N-gram) models).

#### Submission
On 11/16/2016, you will receive music features of 100 songs. We will provide you with a dictionary of 5000 words. For each song, you need to produce a *ranked list* (with the most likely being the first) of 100 suggested lyric words from the given dictionary. 

### Project organization

This is a very short project. So we will not form teams. A GitHub starter codes repo will be posted online for you to fork and start your own project. 

You can consider using the following data mining tools for this project. This is only a suggestive list. 

+ [Representation learning](https://www.r-bloggers.com/a-little-h2o-deeplearning-experiment-on-the-mnist-data-set/)
+ [Topic modeling](https://cran.r-project.org/web/packages/topicmodels/vignettes/topicmodels.pdf)
+ [Clustering](http://www.statmethods.net/advstats/cluster.html)
+ Itemset mining or [Association rule mining](https://cran.r-project.org/web/packages/arules/vignettes/arules.pdf) ([More resources)](https://www.r-bloggers.com/examples-and-resources-on-association-rule-mining-with-r/)
+ [Word prediction](http://rstudio-pubs-static.s3.amazonaws.com/151199_c31c3aa978614a889f938f993065450b.html)
+ [Recommendation based on similarities](http://www.cs.umd.edu/~samir/498/Amazon-Recommendations.pdf)

On 11/9/2016, we will give **tutorials** and give comments on:

- Topic modeling
- Clustering algorithms
- An example analysis of the million song dataset from Spring 2016. [Jingying Zhou]

#### Repositary requirement

The final repo should be under our class github organization (TZStatsADS) and be organized according to the structure of the starter codes. 

```
proj/
├──doc/
├──figs/
├──lib/
├──output/
├── README
```
- The data is too big to be hosted on GitHub.
- The `doc` folder should have documentations for this project, presentation files and other supporting materials. 
- The `figs` folder contains figure files produced during the project and running of the codes. 
- The `lib` folder contain computation codes for your data analysis. Make sure your README.md is informative about what are the programs found in this folder. 
- The `output` folder is the holding place for intermediate and final computational results.

The root README.md should contain your name and an abstract of your findings. 

#### Suggested workflow
This is a relatively short project. We only have about two weeks of working time. 

1. [wk1] Week 1 is the **data processing and mining** week. Read data description, **project requirement**, browse data and the starter codes, and think about what to do and try out different tools you find related to this task.
2. [wk1] Try out ideas on a *subset* of the data set to get a sense of computational burden of this project. 
4. [wk2] Based on outcomes from week 1 think carry out **predictive modeling** for the recommender algorithm.
5. [wk2] The data analysis is likely to take a lot of time. Start early. 