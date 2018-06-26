# Introduction

## Motivation

Autism Spectrum Disorder (ASD) describes a range of neurodevelopmental disorders characterised by impaired social abilities and repetitive behaviour [@what_is_autism_like]. The word 'spectrum' is used to convey the heterogeneous nature of ASD conditions. Even though approximately 1 in 68 children in the United States were diagnosed with ASD in 2012, an objective biomarker has not been discovered.

Diagnosis is usually accomplished using a range of behavioural tests and standardised rating scales. Efforts have been made to more objectively classify ASD, including the use of neuroimaging techniques. While it is difficult for humans to interpret the high-dimensional data resulting from these brain scans, recent studies have show that Artificial Intelligence techniques such as Deep Learning could help with the automated classification of neurological conditions such as ASD.

Functional magnetic resonance imaging (fMRI) measures blood-oxygen-level dependent (BOLD) changes in the brain. FMRI can be used to detect different brain states as well as changes in functional connectivity. It is hypothesised that ASD individuals exhibit atypical functional connectivity in particular functional networks. Therefore, fMRI has the potential to offer insights which could lead to more objective ASD diagnosis.

Although fMRI studies for neurological disease diagnosis are gaining traction, there are a number of improvements which can be made. Most of the recent fMRI studies use small subsets of the available data, resulting in classifiers which can not generalise well to unseen data. Another issue is that different 'sites' where the fMRI scans are collected, produce large variations in the data; yet most of the literature which quotes high accuracies focuses on single-site and single-subject classifiers. There are also a number of recent discoveries in the fields of neuroimaging, connectivity analysis and deep learning which so far have not been employed. An example of a factor which has not been tuned in previous research is the algorithm used to calculate connectivities from BOLD signals.

The state-of-the-art for multi-site ASD classification with fMRI data is probably Heinsfeld et al.'s recent work (2018) [@HEINSFELD201816]. Heinsfeld et al. quote an accuracy of 70% for their deep neural network model and 65% for the baseline SVM classifier.

## Objectives

- Classify ASD and typical controls based on functional connectivity using the rs-fMRI data from the ABIDE I dataset and deep learning techniques. The classifier should be generalisable across heterogeneous phenotypes.

- Use the trained classifier to interpret the regional functional connections which best differentiate ASD from controls and contributed most to the classification.

## Challenges

- **Time**: Understanding the dataset, researching and understanding the field of neuroimaging, and the iterative cycle of 'creating a hypothesis - implementation - validation - testing', are all supremely time-consuming activities especially when working with deep neural networks. Deep learning models take a lot of time to train due to the large amount of free parameters and non-linearity. This means that care must be taken to use the available time allocated to this project wisely, in order to maximise experimental breadth and depth.

- **Hardware**: Deep Learning techniques require vast amounts of compute power, rely heavily on expensive GPUs and large amounts of RAM for training and require fast CPUs for almost everything but particularly the task of inference. The University of Sheffield's High Performance Computer (HPC), 'ShARC', has been made available for this project. However, waiting periods may be encountered as the resources are shared across faculties. Therefore, algorithms will be prototyped on a desktop PC first with a small subset of data to verify that the code is error and bug-free before submitting training jobs to the scheduler.

- **Space**: The ABIDE dataset includes some very large files. There may not be enough available disk-space to store all of it on a desktop PC or the HPC.

## Report Structure

**Chapter 2** is an overview of background information, required theory and academic literature either related to this project or necessary in order to understand concepts outlined in the design, implementation and testing chapters.

**Chapter 3** is a list of project requirements.

**Chapter 4** is a deep analysis of possible solutions, exploration/visualisation of the available data and proposed evaluation strategies.

**Chapter 5** covers an explanation of the chosen system design based on factors covered in the analysis.

**Chapter 6** highlights novel aspects of the implementation and shows the testing that was performed throughout implementing the system.

**Chapter 7** shows the results and interpretations of testing and evaluating the experiments.

**Chapter 8** summarises the previous chapters and the most notable results.


## Relationship to Degree

This project focusses on applying cutting-edge Deep Learning techniques to a real-world dataset with the intention of gaining valuable results and insight into ASD. This naturally relates to the degree of 'Artificial Intelligence and Computer Science', due to the focus on A.I. techniques and the necessary computer science skills required in order to facilitate the implementation of experimental hypotheses.

The degree of A.I. and Computer Science at The University of Sheffield provides plenty of opportunity for self-directed learning. Familiarity with this form of learning and independence is of paramount importance to the proposed project due to the amount of new and complex materials required in order to accomplish the objectives set out above.

This degree does cover Machine Learning, Data-Driven Computing and basic Neural Networks. However, no degree could possibly keep up with the rate of progress that is being made in the fields of A.I. and, more specifically, Deep Learning.
