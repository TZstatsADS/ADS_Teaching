### GU4243/GR5243 Fall 2016 Applied Data Science
### Project 2 Shiny App Development
#### - for New York City open data

In this project, we will create a shiny app for exploring and visualizing a topic about our city (the city!) using [NYC open data](https://nycopendata.socrata.com/). 

##### Challenge
For this project, I invite you to browse 1500+ open data sets available about New York city and choose a topic about this city that interest you. In the following, I list a number of interesting blog posts or analyses based on New York city open data that might hopefully give you some inspiration. 

For presentation, the team should present their **shiny app** as a *product demo* and interesting findings from their experience. All shiny apps will be posted on our class repo. All developments need to be carried out in group shared private repo on [https://www.github.com/TZstatsADS/].

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1: introduction and project description
- week 2: shiny app development/shiny server setup/spatial visualization
- week 3: [TBD] depends on topics emerge from online and in-class discussions.

##### Suggested team workflow
1. [wk1] Week 1 is the **planning** week. Read data description and browse data. 
2. [wk1] As a team, read the example blog posts, projects from [Spring 2016](http://tzstatsads.github.io//2016/09/21/Spr2016Project2-summary.html) or other interesting analyses found online together (not necessarily face-to-face). During the discussion, study a number of analyses carefully on the techniques and computational packages used.
	 * "What information is of value or interesting?"
     * "Which analysis/visualization is particularly informative?" 
     * Good visualizations do not just look cool. They should be easy to understand and give the correct impression about data. 
3. [wk1] As a team, brainstorm about possible topics 
4. [wk2] Based on outcomes from week 1 brainstorm sessions, identify the dataset(s) to download and start data cleaning (start early on this one!)
5. [wk2] Week 2 is the **design and development** week. Start learn and use the shiny library to do simple things. Some team members may know more about shiny than others. Share and learn together. 
6. [wk2] It is ok to have 2-3 leads to explore  at the beginning of week 2 but it is better to converge on a single topic by the end of week 2 (10/4). 
7. [wk3] Week 3 is the shiny app **implementation/production/testing** week. By 10/5 (the beginning of week 3), you should have a cleaned set of data and a project idea. 
8. [wk3] By 10/5, You should layout a to-do list and divide up tasks. At the session on 10/5, teams should work together and resolve any ambiguity about which team member should be doing what for this project. 

##### Working together
- Setup a GitHub project folder with everyone listed as contributors. Everyone clones the project locally and create a local branch. 
- The team can work with subgroups of 2-3 work together more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.  

##### Example analyses
Here the examples are for inspiration. The order is abitrary. I do not endorse any of these analyses to be a model analysis for you to follow. The tools included are those I think might be useful. Please feel free to send me *stories* and/or *tools* that you would like to contribute to this list. 

Stories

- [data2go NYC](http://www.data2go.nyc/tutorial/) On this website, you can find many interactive visualizatons of geo-spatial data. They also used simple plots to display summary statistics. Not every visio there is based on R or shiny.
- [311 sanitation complaints](http://www.spatialinformationdesignlab.org/projects/civic-data-management-311-sanitation-complaints)
- [250 years of buildings from Manhattan](http://www.gislounge.com/mapping-almost-250-years-buildings-manhattan/)
- [i quant NY's blog](http://iquantny.tumblr.com/)
- [chris whong's blog](http://chriswhong.com/)
- [NYC taxi data](http://www.andresmh.com/nyctaxitrips/), some [exploration](http://hafen.github.io/taxi/#initial-exploration), a cool [visualization](http://nyctaxi.herokuapp.com/).
- [Winners of New York City Tree Counts DataJam](http://treescountdatajam.devpost.com/updates/5503-and-the-winners-are)

Tools

- [Dashboards using R, Shiny and GoogleVis](http://www.r-bloggers.com/dashboards-in-r-with-shiny-and-googlevis/) This simple example shows how you can have multiple tabs in your shiny app, each corresponding to a different analysis/visulization.
- [Hierarchical clustering with R, D3.js and Shiny](http://www.r-bloggers.com/hierarchical-clustering-with-r-feat-d3-js-and-shiny/)
- [Combining th power of d3.js and R](http://blog.ae.be/combining-the-power-of-r-and-d3-js/) d3.js is a powerful javascript library with a rich [gallery](https://github.com/mbostock/d3/wiki/Gallery) of examples. In my research, my student followed the 3rd example in this blogpost and adapted new json data using [`RJSONIO`](https://cran.r-project.org/web/packages/RJSONIO/index.html) using the exsiting d3.js codes in that visualization. 
- [plot.ly for shiny](https://plot.ly/r/shiny-tutorial/) plot.ly has a nice library of interactive visualization that can be incorporated with shiny.
- [Street address to coordinates](http://www.inside-r.org/packages/cran/RDSTK/docs/street2coordinates)
- [postGIS](http://rpubs.com/dgolicher/6373) process and visualize spatial data
- [Geo Visualization using ggplot and ggmap](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf)
