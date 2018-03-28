### GR5243 Spring 2018 Applied Data Science
### Project 4 Collaborative Filtering Algorithms Evaluation

In this project, working in teams, you will evaluate and **compare** algorithms for **Collaborative Filtering**.

### Challenge
*Collaborative filtering* refers to the process of making automatic predictions (filtering) about the interests of a user by collecting preferences or taste information from many users (collaborating).

For this project, each team is assigned **specific algorithms** from the *Collaborative filtering* literature. You will study the algorithms carefully and implement them, from scratch. **Algorithm assignments will be posted to a piazza post specific to individual groups**.

For submission, you will submit the GitHub repo of your codes, a *testing* report (must be a **reproducible** R notebook or a similar format) on the algorithms in terms of a *side-by-side* comparison of their performance and computational efficiency. For presentation, each team should briefly explain what each algorithm does, how the evaluation was carried out, and what are the main results. 

All developments need to be carried out in group-shared private repo on [https://www.github.com/TZstatsADS/] with clear project management log, taking advantage of GitHub issues. 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1 [3/28]: Introduction and project description.
- week 2 [4/4]:  An overview of collaborative filtering. Q&A.

#### Evaluation criteria 

- (7pts) Readabiity and reproducibility of codes
- (7pts) Validity of evaluation (well-defined measures of performance; experiment set up)
- (6pts) Presentation (report, github and in-class presentation)

*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **reading and coding** week. Read the papers, understand the algorithms assigned to you and start coding up the algorithms; Also load the data and understand its structure. 
2. [wk1] Each team is strongly recommended to demonstrate project progress by posting a project plan with task assignments as issues on GitHub by Mar 31. 
4. [wk1] As a team, brainstorm about your evaluation plan.  
5. [wk2] Based on the outcomes from week 1's reading and brainstorm sessions, continue coding and start evaluation. 
6. [wk2] Week 2 is the **evaluation** week. 
7. [wk2] It is ok to separate into two sub-teams, one working on one algorithm, as long as the two teams have the same criteria for evaluating the algorithms. The two sub-teams can also serve as others' validators. 
8. By using R Notebook to carry out coding and evaluation, your final report can just be adding explanation and comments to your Notebook. 

### Working together
- Setup a GitHub project folder from joining the GitHub classroom link with everyone listed as contributors. Everyone clones the project locally via your GitHub desktop and create a local branch. 
- The team can work in subgroups of 2-3, which might meet more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.
- Learn to work together is an important learning goal of this course.   

### Resources

#### Papers

1. Breese, J. S., Heckerman, D., & Kadie, C. (1998, July). Empirical analysis of predictive algorithms for collaborative filtering. In Proceedings of the Fourteenth conference on Uncertainty in artificial intelligence (pp. 43-52). Morgan Kaufmann Publishers Inc..
   * From Microsoft Research. It is an introduction to collaborative filtering, and evaluated the data set we use.

2. Herlocker, J. L., Konstan, J. A., Borchers, A., & Riedl, J. (1999, August). An algorithmic framework for performing collaborative filtering. In Proceedings of the 22nd annual international ACM SIGIR conference on Research and development in information retrieval (pp. 230-237). ACM.
   * Proposes a framework for collaborative filtering. We will implement specific algorithms following this framework.

3. Jeh, G., & Widom, J. (2002, July). SimRank: a measure of structural-context similarity. In Proceedings of the eighth ACM SIGKDD international conference on Knowledge discovery and data mining (pp. 538-543). ACM.
   * Proposes a specific similarity measure.

4. Schein, A. I., Popescul, A., Ungar, L. H., & Pennock, D. M. (2002, August). Methods and metrics for cold-start recommendations. In Proceedings of the 25th annual international ACM SIGIR conference on Research and development in information retrieval(pp. 253-260). ACM.
   * FYI on cold-start problems.

5. Su, X., & Khoshgoftaar, T. M. (2009). A survey of collaborative filtering techniques. Advances in artificial intelligence, 2009, 4.
   * A review paper of collaborative filtering.

#### Existing R/Python functions that can be part of your implementation.

Unless otherwise instructed, you can use existing R/Python functions as part of your implementation.
