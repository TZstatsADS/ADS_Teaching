### GU4243/GR5243 Spring 2017 Applied Data Science
### Project 4 Entity Resoultation Algorithms Evaluation

In this project, working in teams, you will evaluate and **compare** a pair of algorithms for **Entity Resolution**.

### Challenge
*Entity Resolution* refers to the process of identifying multiple references to the same object and distinguishing them from mentions of different objects. 
For example, *entity resolution* may operate on natural language text; A special case of entity resoulation, *author name disambiguation*, operates primarily on metadata about authors and articles.

For this project, each team is assigned **a pair of research papers** from the *Entity Resolution* literature. You will study the papers carefully and implement the algorithms, from scratch, in `R`. **Paper assignments will be posted to a piazza post specific to individual groups**.

For submission, you will submit the GitHub repo of your codes, a *testing* report (must be a **reproducible** R notebook or a similar format) on the algorithms in terms of a *side-by-side* comparison of their performance and computational efficiency. For presentation, each team should briefly explain what each algorithm does, how the evaluation was carried out, and what are the main results. 

All developments need to be carried out in group-shared private repo on [https://www.github.com/TZstatsADS/] with clear project management log, taking advantage of GitHub issues. 

Each week, we will give a tutorial in class and having live discussion and brainstorm sessions. The instruction team will join team discussions during class and online. 

- week 1 [3/31]: Introduction and project description. An overview of entity resolution.
- week 2 [4/7]:  Q&A.

#### Evaluation criteria 

- (7pts) Readabiity and reproducibility of codes
- (7pts) Validity of evaluation (well-defined measures of performance; experiment set up)
- (6pts) Presentation (report, github and in-class presentation)

*(More details will be posted as grading rubrics in courseoworks/canvas)*

### Suggested team workflow
1. [wk1] Week 1 is the **reading and coding** week. Read the papers assigned to you, understand the algorithms and start coding up the algorithms; Also load the data into `R` and understand its structure. 
2. [wk1] Each team is strongly recommended to demonstrate project progress by posting a project plan with task assignments as issues on GitHub by April 3rd. 
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

1. Kang, In-Su, et al. "On co-authorship for author disambiguation." Information Processing & Management 45.1 (2009): 84-97. [Link](http://www.sciencedirect.com/science/article/pii/S0306457308000721)
    * Coauthor disambiguation hypothesis: the identity of an author is characterized by his/her coauthors. 
    * Using single-link agglomerative clustering to group papers having the same name author appearances

2. Han, Hui, et al. "Two supervised learning approaches for name disambiguation in author citations." Digital Libraries, 2004. Proceedings of the 2004 joint ACM/IEEE conference on. IEEE, 2004. [Link](https://clgiles.ist.psu.edu/papers/JCDL-2004-author-disambiguation.pdf)
    * Two supervised methods are proposed based on Naïve Bayes and Support Vector Machines. The methods learn a specific model for each author name from the train data and use the model to predict whom a new citation is authored by.

3. Giles, C. Lee, Hongyuan Zha, and Hui Han. "Name disambiguation in author citations using a k-way spectral clustering method." Digital Libraries, 2005. JCDL'05. Proceedings of the 5th ACM/IEEE-CS Joint Conference on. IEEE, 2005.[Link](http://dl.acm.org/citation.cfm?id=1065462)
    * Propose an unsupervised learning approach using K-way spectral clustering method. They calculate a Gram matrix for each person name and apply K way spectral clustering algorithm to the Gram matrix to get the result.
    * Spectral clustering methods compute eigenvalues and eigenvectors of a Laplacian matrix (or singular values and singular vectors of certain matrix) related to the given graph, and construct data clusters based on such spectral information.
    * Another reference to better understand section 3.3: Zha, Hongyuan, et al. "Spectral relaxation for k-means clustering." NIPS. Vol. 1. 2001. [Link](https://papers.nips.cc/paper/1992-spectral-relaxation-for-k-means-clustering.pdf)
    
4. Song, Yang, et al. "Efficient topic-based unsupervised name disambiguation." Proceedings of the 7th ACM/IEEE-CS joint conference on Digital libraries. ACM, 2007. [Link](http://clgiles.ist.psu.edu/papers/JCDL2007-topic_based_name_disambiguation.pdf)
    * Two-stage approach
    * During the first stage, the paper presents two topic-based models inspired by two generative models for documents: Probabilistic Latent Semantic Analysis (PLSA) and Latent Dirichlet Allocation (LDA). 
    * At the second stage, person names are disambiguated by leveraging an unsupervised hierarchical agglomerative clustering method.
    
5. Culotta, Aron, et al. "Author disambiguation using error-driven machine learning with a ranking loss function." Sixth International Workshop on Information Integration on the Web (IIWeb-07), Vancouver, Canada. 2007. [Link](https://people.cs.umass.edu/~mccallum/papers/culotta07author.pdf)
    * The paper proposes a training algorithm that is (1) error-driven in that training examples are generated from incorrect predictions on the training data, and (2) rankbased in that the classifier induces a ranking over candidate predictions.
    * There are different detailed methods in each component of the algorithm: clusterwise scoring functions, error-driven example generation, and rank-based training, shown in Table 3. 

6. Zhang, Duo, et al. "A constraint-based probabilistic framework for name disambiguation." Proceedings of the sixteenth ACM conference on Conference on information and knowledge management. ACM, 2007. [Link](http://dl.acm.org/citation.cfm?id=1321600)
    * This paper first gives a constraint-based probabilistic model for semi-supervised name disambiguation.
    * Employing EM algorithm to learn the parameters of the distance measure.
    * The paper defines six types of constraints. You should clarify which constraint can be used according to the data provided.


#### Existing R functions that can be part of your implementation.

Unless otherwise instructed, you can use existing R functions for clustering, sementic analysis, topic modeling, etc, as part of your implementation. Examples include, but not limited to,

* `kmeans()`
* `hclust()`
* `lda()` from `lda` package