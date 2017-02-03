### GU4243/GR5243 Spring 2017 Applied Data Science
### Project 2 Shiny App Development
### - for [data.gov](https://www.data.gov/) open data

In this project, working in teams, you will create a `R` shiny app for exploring and visualizing a topic about United States using open data from [data.gov](https://www.data.gov/). 

### Challenge
For this project, I invite you to browse 193,990 datasets available on data.gov](https://www.data.gov/) about United States and choose a topic that interest you. A number of web applications using open data from data.gov can be found at <https://www.data.gov/applications>. You can recreate, extend and improve some of these applications' functionality or create something entirely from scratch. 

For presentation, the team should present their **shiny app** as a *product demo* and interesting findings from their experience. All shiny apps are required to be deployed (either on <http://www.shinyapps.io/> or your own Shiny server). 

All developments need to be carried out in group shared private repo on [https://www.github.com/TZstatsADS/] with clear project management log, taking advantage of GitHub issues. 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1: introduction and project description
- week 2: shiny app development/shiny server setup/spatial visualization
- week 3: [TBD] depends on topics emerge from online and in-class discussions.

#### Evaluation criteria 
- Business values of information presented 
	* is it of importance?
	* is it interesting?
	* can it be used to answer questions or exploring for interesting trends?
- Implementation of the apps
	* are the data processed properly?
	* are necessary measures taken to account for data collection issues such as biases, missing values, etc?
- Visualization
	* Is the information visualized clearly?
	* Is the visualization easy to understand?
- Presentation and organization
	* Is the presentation convincing about the business value of the apps?
	* Is the GitHub organized and prepared in a way that makes it easier for readers to appreciate the value of the app and understand how to use the app?

*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **planning** week. Read data description and browse data. 
2. [wk1] Each team is strongly recommended to demonstrate project progress by posting a project plan with task assignments as issues on GitHub by Feburary 10th. 
3. [wk1] As a team, read the example blog posts, projects from [Spring 2016](http://tzstatsads.github.io//2016/09/21/Spr2016Project2-summary.html) and [Fall 2016](http://tzstatsads.github.io//2016/11/09/Fal-l2016-Project2-Summary.html) on NYC open data, or other interesting analyses found online together (not necessarily face-to-face). During the discussion, study a number of analyses carefully on the techniques and computational packages used.
	 * "What information is of value or interesting?"
     * "Which analysis/visualization is particularly informative?" 
     * Good visualizations do not just look cool. They should be easy to understand and give the correct impression about data. 
4. [wk1] As a team, brainstorm about possible topics 
5. [wk2] Based on outcomes from week 1 brainstorm sessions, identify the dataset(s) to download and start data cleaning (start early on this one!)
6. [wk2] Week 2 is the **design and development** week. Start learning and using the shiny library to do simple things. Some team members may know more about shiny than others. Share and learn together. 
7. [wk2] It is ok to have 2-3 leads to explore  at the beginning of week 2 but it is better to converge on a single topic by the end of week 2 (2/17). 
8. [wk2] Construction of shiny platform can start early using fake/simulated data. 
9. [wk3] Week 3 is the shiny app **implementation/production/testing** week. By 2/17 (the beginning of week 3), you should have a cleaned set of data and a project idea. 
10. [wk3] By 2/17, You should layout a to-do list (as a 2nd set of GitHub issues) for the app production and divide up tasks. At the session on 2/17, team members should work together and resolve any ambiguity about which team member should be doing what for the final stage of production of the app. 

### Working together
- Setup a GitHub project folder from joining the GitHub classroom link with everyone listed as contributors. Everyone clones the project locally via your GitHub desktop and create a local branch. 
- The team can work in subgroups of 2-3, which might meet more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.
- Learn to work together is an important learning goal of this course.   

### Resources
Here the examples are for inspiration. The order is abitrary. I do not endorse any of these analyses to be a model analysis for you to follow. The tools included are those I think might be useful. Please feel free to send me *stories* and/or *tools* that you would like to contribute to this list. 

#### Stories

- [50 years of crimes in US](https://public.tableau.com/en-us/s/gallery/50-years-crime-us) an interactive visualization of crime trends. 
- [200 Years of U.S. Immigration](http://insightfulinteraction.com/immigration200years.html) a visualization that clearly demonstrated the effects of the 1924 immigration act. 
- [311 sanitation complaints](http://www.spatialinformationdesignlab.org/projects/civic-data-management-311-sanitation-complaints)
- [250 years of buildings from Manhattan](http://www.gislounge.com/mapping-almost-250-years-buildings-manhattan/)
- [spatial.ly](http://spatial.ly/blog/) Website of Dr. James Cheshire, a geographer on spatial visualizations that tell stories.
- [NYC taxi data](http://www.andresmh.com/nyctaxitrips/), some [exploration](http://hafen.github.io/taxi/#initial-exploration), a cool [visualization](http://nyctaxi.herokuapp.com/).
- [Winners of New York City Tree Counts DataJam](http://treescountdatajam.devpost.com/updates/5503-and-the-winners-are)

#### A small set of potential tools 

*These are not fully tested and more tools can be found.

- [Dashboards using R, Shiny and GoogleVis](http://www.r-bloggers.com/dashboards-in-r-with-shiny-and-googlevis/) This simple example shows how you can have multiple tabs in your shiny app, each corresponding to a different analysis/visulization.
- [Hierarchical clustering with R, D3.js and Shiny](http://www.r-bloggers.com/hierarchical-clustering-with-r-feat-d3-js-and-shiny/)
- [Combining th power of d3.js and R](http://blog.ae.be/combining-the-power-of-r-and-d3-js/) d3.js is a powerful javascript library with a rich [gallery](https://github.com/mbostock/d3/wiki/Gallery) of examples. In my research, my student followed the 3rd example in this blogpost and adapted new json data using [`RJSONIO`](https://cran.r-project.org/web/packages/RJSONIO/index.html) using the exsiting d3.js codes in that visualization. 
- [plot.ly for shiny](https://plot.ly/r/shiny-tutorial/) plot.ly has a nice library of interactive visualization that can be incorporated with shiny.
- [RGoogleMaps](https://cran.r-project.org/web/packages/RgoogleMaps/)
- [Geocoding in R](http://www.rpubs.com/cengel248/177198)
- [postGIS](http://rpubs.com/dgolicher/6373) process and visualize spatial data
- [Geo Visualization using ggplot and ggmap](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf)
- [Build your own Shiny server on AWS](https://www.r-bloggers.com/installing-rstudio-shiny-server-on-aws/), [[Amazon Machine Image](http://www.louisaslett.com/RStudio_AMI/)]
