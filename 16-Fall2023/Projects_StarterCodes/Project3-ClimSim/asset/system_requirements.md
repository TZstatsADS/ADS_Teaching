# **System Requirements and Troubleshooting for ClimSim Project**
## **TL;DR**
**Minimum System Requirements:** <br>
- RAM: At least 16GB (32GB Recommended for the )
- Processor: Multicore with good processing speed
- Python: Version 3.9 or later
- Storage: SSD with ample space for large datasets

## **Introduction** <br>
This document complies the experiences of various students with different system setups while working on the CLimSim projects. 
It includes the challegenges they faced and the solution they have tried. 

## **Challenges**
1. **Error in importing data_utils**
   - **Issue:** climsim_utils.data_utils not found, when import data_utils. Encountered while running locally on Mac and Google Colab.
   - **Resolution:** Cloned the ClimSim Github Repository and installed necessary packages.
2. **Memory limitation on Microsoft PCs and Google Colab**
   - **Issue:** Out of memory error during processing.
   - **Resolution:** Resampling the data to a smaller size; building a VM with specified RAM on Google Cloud Platform for Colab
3. **Hardware and Software Constraints**
   - **Issue:** Recurring system crashes due to hardware limitations.
   - **Resolution:** Using cloud platforms with scalable resources and recommended hardware upgrades.
4. **Loading data into Google Colab**
   - **Issue:** Inability to load data using provided code.
   - **Resolution:** Using Git LFS for large file storage and mounting the necessary files from Google Drive.
5. **Data upload inefficiency**
   - **Issue:** Long upload times for data to Google Drive.
   - **Resolution:** Subsetted the data before upload to reduce size and time.
6. **Data Processing and Sampling**
   - **Issue:** Dimensionality errors during data split operations
   - **Resolution:** Adjusted data sampling to ensure compatibility with model requirements.
   - **Potential resolution for subsetting:** Subset size needed to be proportional to the grid size, which is 384.
7. **Python version incompability on Google Could Platform**
   - **Issue:** Default Python version3.5 too old
   - **Resolution:** Upgraded to Python3.10 using Anaconda and configured the environment.
8. **Python and TensorFlow Compatibility**
   - **Issue:** Version incompatibility leading to execution failures.
   - **Resolution:** Upgraded and downgraded to compatible versions of Python and TensorFlow. (Python3.11 might work)
9. **Insufficient RAM for HuggingFace Datasets in Jupyter Notebook**
   - **Issue:** Jupyter Notebook through GCP couldn't handle large datasets.
   - **Resolution:** Switched to running locally.
10. **Memory Limitations on Google Colab**
    - **Issue:** Insufficient RAM on Colab to process data.
    - **Resolution:** Upgraded Google Colab to expand memory and resampled data for processing. 
11. **Environment Setup and Package Installation Issues**
    - **Issue:** Kernel crash due to failed ClimSim package installation issue
    - **Resolution:** Installed packages directly from the GitHub root directory.
12. **File Path Configuration**
    - **Issue:** Incorrect file paths in local settings
    - **Resolution:** Verified and corrected file paths to match the GitHub repository structure.
13. **Pathway and Dependency Management**
    - **Issue:** Absolute pathways and missing dependencies causing errors.
    - **Resolution:** Switched to relative pathways and created a virtual environment for dependency management.
14. **Collaboration and Data Consistency**
    - **Issue:** Inconsistent file access and paths among team members.
    - **Resolution:** Established a centralized directory on Google Drive for uniform access. 
  
   
