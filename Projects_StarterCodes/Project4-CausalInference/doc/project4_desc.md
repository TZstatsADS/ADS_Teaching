### GR5243 Spring 2021 Applied Data Science
### Project 4 Causal Inference Algorithms Evaluation

In this project, working in teams, you will implement, evaluate and **compare** algorithms for **Causal Inference**.

### Challenge
*Causal inference* refers to the process of drawing a conclusion about a causal connection based on the conditions of the occurrence of an effect.

For this project, each team is assigned **specific algorithms** from the *Causal inference* literature. You will study the algorithms carefully and implement them, from scratch. **Algorithm assignments will be posted to a piazza post**.

For submission, you will submit the GitHub repo of your codes, a *testing* report (must be a **reproducible** R/Python notebook) on the algorithms in terms of a *side-by-side* comparison of their performance and computational efficiency. 

For presentation, each team should briefly explain 

+ what each algorithm does;
+ how the evaluation was carried out; 
+ and what are the main results. 

All developments need to be carried out in group-shared private repo on [https://www.github.com/TZstatsADS/] with clear project management log, taking advantage of GitHub issues. 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1 [Mar 17]: Introduction and project description.
- week 2 [Mar 24]: Introduction to Causal Inference; Q&A.
- week 3 [Mar 31]: Discussion of assigned algorithms.

#### Evaluation criteria 

- (7pts) Readabiity and reproducibility of codes
- (7pts) Validity of evaluation (well-defined measures of performance; experiment set up)
- (6pts) Presentation (report, github and in-class presentation)

*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **reading and coding** week. Read the papers, understand the algorithms assigned to you and start coding up the algorithms; Also load the data and understand its structure. 
2. [wk1] Each team is strongly recommended to demonstrate project progress by posting a project plan with task assignments as issues on GitHub. 
4. [wk1] As a team, brainstorm about your evaluation plan.  
5. [wk2] Based on the outcomes from week 1's reading and brainstorm sessions, continue coding and start evaluation. 
6. [wk2] Week 2 is the **evaluation** week. 
7. [wk2] It is ok to separate into two sub-teams, one working on one algorithm, as long as the two teams have the same criteria for evaluating the algorithms. The two sub-teams can also serve as each other's validators. 
8. [wk3] By using R/Python Notebook to carry out coding and evaluation, your final report can just be adding explanation and comments to your Notebook. 
9. [wk3] Week 3 is the **report writing** week. You want to create clear explanation and illustration of the algorithms by using diagrams (can be borrowed from the papers), case examples, summarizing statistcs, and visualizations of performance statistics.

### Working together
- Setup a GitHub project folder from joining the GitHub classroom link with everyone listed as contributors. Everyone clones the project locally via your GitHub desktop and create a local branch. 
- The team can work in subgroups of 2-3, which might meet more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.
- Learn to work together is an important learning goal of this course.   

### Resources

#### Papers

1. Evaluating Online Ad Campaigns in a Pipeline: Causal Models At Scale - defines the general framework of causal inference in the marketing context. Specifically, we want to evaluate three methods as mentioned in sections 4 and 5 (Propensity Matching, Inverse Propensity Weighting, and Doubly Robust Estimation). Also Section 7 discusses model selection and validation (evaluation).

2. Propensity score methods for bias reduction in the comparison of a treatment to a non-randomized control group - discusses stratification and regression (covariance) adjustment combined with propensity scores (see sections STRATIFICATION and REGRESSION (COVARIANCE) ADJUSTMENT).

3. Estimation of Causal Effects using Propensity ScoreWeighting: An Application to Data on Right HeartCatheterization - discusses the weighted logistic regression model (see section 2).

4. An Introduction to Propensity Score Methods for Reducing the Effects of Confounding in Observational Studies - discusses using propensity score as a covariate in the regression adjustment (see section Covariate Adjustment Using the Propensity Score).

5. Matching Methods for Causal Inference: A Review and a Look Forward - Section 3 introduces different matching methods for ATE and ATT (including full matching and inverse probability of treatment weighting). Section 5 talks about analysis after the matching.

6. Stratification and weighting via the propensity score in estimation of causal treatment effects: See Section 2 for stratification (or subclassification) using propensity score and doubly robust estimation, with the goal of estimating ATE.

#### Existing R/Python functions that can be part of your implementation.

Unless otherwise instructed, you can use existing R/Python functions as part of your implementation.
