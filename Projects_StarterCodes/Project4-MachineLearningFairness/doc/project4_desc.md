### GR5243 Fall 2021 Applied Data Science
### Project 4 Machine Learning Fairness Algorithms Evaluation

In this project, working in teams, you will implement, evaluate and **compare** algorithms for **Machine Learning Fairness**.

### Challenge
*Machine Learning Fairness* refers to correcting the unfairness for certain groups or individuals in machine learning algorithms' predictions.

For this project, each team is assigned **specific algorithms** from the *Machine Learning Fairness* literature. You will study the algorithms carefully and implement them, from scratch. **Algorithm assignments will be posted to a piazza post**.

For submission, you will submit the GitHub repo of your codes, a *testing* report (must be a **reproducible** R/Python notebook) on the algorithms in terms of a *side-by-side* comparison of their performance and computational efficiency. 

You can use [Google Colab notebook](https://colab.research.google.com/#) if you're working in Python. It has the following advantages:

+ Zero configuration required
+ Free access to GPUs
+ Easy sharing 

It's not mandatoy for you to use Google Colab notebook if you're writing a Python notebook.

For presentation, each team should briefly explain 

+ what each algorithm does;
+ how the evaluation was carried out; 
+ and what are the main results. 

All developments need to be carried out in group-shared private repo on [https://www.github.com/TZstatsADS/] with clear project management log, taking advantage of GitHub issues. 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1 [Nov 10]: Introduction and project description.
- week 2 [Nov 17]: Introduction to Machine Learning Fairness; Q&A.
- week 3 [Dec 1]: Discussion of assigned algorithms.

#### Evaluation criteria 

- (7pts) Readabiity and reproducibility of codes
- (7pts) Validity of evaluation (well-defined measures of performance; experiment set up)
- (6pts) Presentation (report, github and in-class presentation)

*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **reading and coding** week. Read the papers, understand the algorithms assigned to you and start coding up the algorithms; Also load the data and understand its structure. 
2. [wk1] As a team, brainstorm about your evaluation plan.  
3. [wk2] Based on the outcomes from week 1's reading and brainstorm sessions, continue coding and start evaluation. 
4. [wk2] Week 2 is the **evaluation** week. 
5. [wk2] It is ok to separate into two sub-teams, each one working on one algorithm, as long as the two teams have the same criteria for evaluating the algorithms. The two sub-teams can also serve as each other's validators. 
6. [wk3] By using R/Python Notebook to carry out coding and evaluation, your final report can just be adding explanation and comments to your Notebook. 
7. [wk3] Week 3 is the **report writing** week. You want to create clear explanation and illustration of the algorithms by using diagrams (can be borrowed from the papers), case examples, summarizing statistcs, and visualizations of performance statistics.

### Working together
- Setup a GitHub project folder from joining the GitHub classroom link with everyone listed as contributors. Everyone clones the project locally via your GitHub desktop and create a local branch. 
- The team can work in subgroups of 2-3, which might meet more frequently than the entire team. However, everyone should check in regularly on group discussion online and changes in the GitHub folder.
- Learn to work together is an important learning goal of this course.   

### Resources

#### Papers

1. [Information Theoretic Measures for Fairness-aware Feature selection](https://arxiv.org/abs/2106.00772)

2. [Learning Fair Representations](http://proceedings.mlr.press/v28/zemel13.html)

3. [Fairness Constraints: Mechanisms for Fair Classification](https://arxiv.org/abs/1507.05259)

4. [Fairness Beyond Disparate Treatment & Disparate Impact: Learning Classification without Disparate Mistreatment](https://arxiv.org/abs/1610.08452)


#### Existing R/Python functions that can be part of your implementation. 

Unless otherwise instructed, you can use existing R/Python functions as part of your implementation. But, you'll be expected to write the main algorithm by yourself.
