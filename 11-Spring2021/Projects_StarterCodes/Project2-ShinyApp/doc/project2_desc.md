### GR5243/GU4243 Spring 2021 Applied Data Science
### Project 2 Shiny App Development
### --- App Development for under-explored topic on COVID-19 data

In this project, working in teams, you will create a `R` shiny app for exploring and visualizing a previously *under-explored* topic about COVID-19 in New York City or United States using [NYC Coronavirus Disease 2019 Data](https://github.com/nychealth/coronavirus-data) or [JHU CSSE Covid-19 Data](https://github.com/CSSEGISandData/COVID-19). 

### Challenge

For this project, we invite you to explore COVID-19 data sets from [JHU CSSE Covid-19 Data](https://github.com/CSSEGISandData/COVID-19) or NYC Health open data released on the [NYC Coronavirus Disease 2019 Data](https://github.com/nychealth/coronavirus-data) website. Your team should choose a topic that interests you. Your **challenge** is develop a shiny app for a previously under-explored topic. 

For presentation, the team should present their **shiny app** as a *product demo*, supported by interesting findings that are visualized by this app. Teams can also share technical challenges and their creative solutions. All shiny apps are required to be deployed (either on <http://www.shinyapps.io/> or your own Shiny server).

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
+ Implementation of the app 
	+ are the data processed/integrated properly?
	+ are necessary measures taken into account for data 	collection issues such as biases, missing values, etc?
+ Visualization
	+ Is the information visualized clearly?
	+ Is the visualization easy to understand?
+ Presentation and organization
	+ Is the presentation convincing about the business value of the apps?
	+ Is the GitHub organized and prepared in a way that makes it easier for readers to appreciate the value of the app and understand how to use the app?
	
*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **studying & planning** week. Study previous apps done by ADS students, read project description, data description, browse data and brainstorm for ideas.
2. [wk1] Each team is strongly recommended to demonstrate project progress by posting a project plan with task assignments, either in piazza or as issues on GitHub before week 2. 
3. [wk1] As a team, study interesting data sets and previous ADS apps together (not necessarily face-to-face). During the discussion, discuss a number of key analyses/functionalities carefully and discuss possible design ideas.
     * "What information is of value or interesting?"
     * "Which analysis/visualization is particularly informative?" 
     * Good visualizations do not just look cool. They should be easy to understand and give the correct impression about data. 
4. [wk2] Based on outcomes from week 1 brainstorm sessions, identify additional data processing and modeling needed (start early on this one!)
6. [wk2] Week 2 is the **design and development** week. Start learning and using the shiny library to do simple things. Some team members may know more about shiny than others. Share and learn together. 
7. [wk2] It is ok to have 2-3 leads to explore at the beginning of week 2 but it is better to converge on a single direction by the end of week 2.
8. [wk2] Construction of shiny platform can start early using fake/simulated data. 
9. [wk3] Week 3 is the shiny app **implementation/production/testing** week. By the beginning of week 3, you should have all necessary data processing done and a project idea. 
10. [wk3] By the beginning of week 3, You should layout a to-do list (as a 2nd set of GitHub issues) for the app production and divide up tasks. At the class session on week 3, team members should work together and resolve any ambiguity about which team member should be doing what for the final stage of production of the app. 

### Working together
- Setup a GitHub project folder from joining the GitHub classroom link with everyone listed as contributors. Everyone clones the project locally via your GitHub desktop and create a local branch. 
- The team can work in subgroups of 2-3, which might meet more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.
- Learn to work together is an important learning goal of this course.   

### Resources
Here the examples are for inspiration. The order is abitrary. We do not endorse any of these analyses to be a model analysis for you to follow. The tools included are those We think might be useful. Please feel free to send me *stories* and/or *tools* that you would like to contribute to this list. 

#### Stories

Blogs

- [50 years of crimes in US](https://public.tableau.com/en-us/s/gallery/50-years-crime-us) an interactive visualization of crime trends. 
- [The fallen of World War II](http://www.fallen.io/ww2/) a visualization to put the impact of World War II in numbers.
- [200 Years of U.S. Immigration](http://insightfulinteraction.com/immigration200years.html) a visualization that clearly demonstrated the effects of the 1924 immigration act. 
- [250 years of buildings from Manhattan](http://www.gislounge.com/mapping-almost-250-years-buildings-manhattan/)
- [spatial.ly](https://spatial.ly/category/r-spatial-data-hints/) Website of Dr. James Cheshire, a geographer on spatial visualizations that tell stories.
- [NYC taxi data](http://www.andresmh.com/nyctaxitrips/), some [exploration](http://hafen.github.io/taxi/#initial-exploration), a cool [visualization](http://nyc-taxi-trips.herokuapp.com/index).
- [Winners of New York City Tree Counts DataJam](http://treescountdatajam.devpost.com/updates/5503-and-the-winners-are)

News articles:
<ul>
<li>Reuters graphics - <a href="http://fingfx.thomsonreuters.com/gfx/rngs/CHINA-DEBT-GRAPHIC/0100315H2LG/index.html" target="_blank">China's debt problem</a></li>
<li>NYT: <a href="http://www.nytimes.com/interactive/2012/10/15/us/politics/swing-history.html?_r=0" target="_blank">over the decades, how states have shifted</a> (sankey diagram similar to this can be made using the <a href="https://christophergandrud.github.io/networkD3/" target="_blank">networkD3</a> package, or <a href="https://sites.dartmouth.edu/learninganalytics/2016/08/22/analyzing-content-access-to-inform-content-design/" target="_blank">givsSankey</a> package)</li>
<li>Medium: <a href="https://medium.com/@dqn/what-i-use-for-data-driven-journalism-4333364db944#.12xqj44g8" target="_blank">What I use for data-driven journalism</a></li>
</ul><a href="https://medium.com/@dqn/what-i-use-for-data-driven-journalism-4333364db944#.12xqj44g8" target="_blank"></a>

Examples
- [Interactive graphics](https://www.r-graph-gallery.com/interactive-charts.html) from [R Graph Gallery](http://www.r-graph-gallery.com/)
- [Plotly: 15 interactive charts with sliders, dropdowns, and buttons](http://moderndata.plot.ly/15-python-and-r-charts-with-interactive-controls-buttons-dropdowns-and-sliders)
- [Vision Zero Interactive Map](http://www.nycvzv.info/)
- [Wind Map](http://hint.fm/wind/)
- [Top 100 R resources on COVID-19](https://towardsdatascience.com/top-5-r-resources-on-covid-19-coronavirus-1d4c8df6d85f)
- [COVID-19 Tracker](https://shiny.rstudio.com/gallery/covid19-tracker.html)


#### A small set of potential tools 

*These are not fully tested and more tools can be found.

- [Dashboards using R, Shiny and GoogleVis](http://www.r-bloggers.com/dashboards-in-r-with-shiny-and-googlevis/) This simple example shows how you can have multiple tabs in your shiny app, each corresponding to a different analysis/visualization.
- [Hierarchical clustering with R, D3.js and Shiny](http://www.r-bloggers.com/hierarchical-clustering-with-r-feat-d3-js-and-shiny/)
- [Combining th power of d3.js and R](http://blog.ae.be/combining-the-power-of-r-and-d3-js/) d3.js is a powerful javascript library with a rich [gallery](https://github.com/mbostock/d3/wiki/Gallery) of examples. In my research, my student followed the 3rd example in this blogpost and adapted new json data using [`RJSONIO`](https://cran.r-project.org/web/packages/RJSONIO/index.html) using the exsiting d3.js codes in that visualization. 
- [plot.ly for shiny](https://plot.ly/r/shiny-tutorial/) plot.ly has a nice library of interactive visualization that can be incorporated with shiny.
- [RGoogleMaps](https://cran.r-project.org/web/packages/RgoogleMaps/)
- [Geocoding in R](http://www.rpubs.com/cengel248/177198)
- [postGIS](http://rpubs.com/dgolicher/6373) process and visualize spatial data
- [leaflet](https://rstudio.github.io/leaflet/shiny.html) interactive spatial visualization.
- [Geo Visualization using ggplot and ggmap](https://journal.r-project.org/archive/2013-1/kahle-wickham.pdf)
- [Build your own Shiny server on AWS](https://www.r-bloggers.com/installing-rstudio-shiny-server-on-aws/)
- [Amazon Machine Image](http://www.louisaslett.com/RStudio_AMI/)]
- [Geocomputation with R](https://bookdown.org/robinlovelace/geocompr/)

#### Paper to read
<ul>
<li><a href="http://www.stat.columbia.edu/~gelman/research/published/vis14.pdf" target="_blank">Infovis and Statistical Graphics</a> (Gelman and Unwin)</li>
</ul>

