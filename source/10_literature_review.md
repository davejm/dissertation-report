# Background and Related Work

## Autism Spectrum Disorder

Autistic Spectrum Disorder (ASD) comprises several neurodevelopmental disorders including classic autistic disorder, Asperger syndrome and 'pervasive developmental disorder-not otherwise specified' (PDD-NOS). This modern definition of ASD was defined in the publication of the fifth edition of the Diagnostic Statistical Manual of Mental Disorders (DSM-5) in May 2013 [@american2013diagnostic]. ASD is defined in terms of two categories of symptoms: "persistent impairment in reciprocal social communication and social interaction" and "restricted, repetitive patterns of behaviour." These two broad categories along with several more specific subcategories cover the disorders encompassed by the Spectrum.

A range of functional limitations are caused by ASD, including but not limited to creating and keeping relationships, performing daily tasks and maintaining a job [@abnormalPsychology]. It should be noted that there is still debate over where to draw the boundaries between ASDs [@doi:10.1056/NEJMp1306380]. Because of ASD's heterogeneous nature, it can often be difficult for clinicians to accurately diagnose.

ASD has a prevalence of about 1 in 68 children as reported by the Autism and Developmental Disabilities Monitoring (ADDM) Network in 2012. This is an increase from 1 in 150, 1 in 123 and 1 in 110 in 2000, 2004 and 2006 respectively. However, there is great disparity between the number of girls and boys diagnosed with ASD. A boy is approximately 4.5 times more likely to be diagnosed with ASD than a girl, despite ASD being reported to occur in all racial, ethnic and socio-economic groups. Specific causes of ASD have not yet been found, however, numerous risk factors including genetics, prenatal factors and neuroanatomical abnormalities have been identified that *may* contribute to their development [@TAGERFLUSBERG20101072].


### Cognitive and Psychological Theories

Cognitive theories provide conceptual models which help to explain the causes and the nature of ASD. These theories abstract away from the neurological underpinnings of the brain, however, they play an important role in informing experiments and explaining results.

The three most prominent cognitive theories of ASD are Theory of Mind (ToM), executive dysfunction and weak central coherence. ToM [@premack_woodruff_1978] is probably among the most highly regarded cognitive theories of autism. ToM describes the ability to ascribe mental states (such as desires, complex emotions and knowledge) of oneself or others. It is hypothesised that children with autism exhibit a deficit in the Theory of Mind compared to typically developing (TD) children [@baron-cohen_ring_moriarty_schmitz_costa_ell_1994].

The 'mirror neuron system' (MNS) [@mirrorneuronsystem] theory of autism has also been proposed. A so-called 'mirror neuron' fires when an animal performs a particular action themselves, and also when the same action is performed by another. Figure \ref{fig:mns} shows an illustration of this. It has been suggested that mirror neurons contribute to an individual's theory of mind, thus autism could be characterised by dysfunction of the MNS.

![Illustration of the Mirror Neuron System. *By Jan Brascamp (CC BY-SA 3.0, via Wikimedia Commons)*\label{fig:mns}](source/figures/MNS.jpg){width=70%}

The executive dysfunction hypothesis suggests poor executive function including inhibition, working memory and mental flexibility could be the cause of deficits observed in ASDs [@doi:10.1111/j.1469-7610.1991.tb00351.x]. The executive function hypothesis and ToM are often paired together as executive functions and ToM are considered necessary for successful communication [@joseph_tager-flusberg_2004].

The weak central coherence theory proposes that individuals with ASD lack an ability to "see the big picture". This inability is part of a broader perceptual-cognitive style which helps to explain why individuals with ASD suffer from weak performance on perceptual tasks and have trouble with language skills, yet some ASD individuals show remarkable mathematical and engineering capabilities. This is because mathematics and engineering tasks generally benefit from an ability to focus on individual parts, rather than the whole problem.

### Neurobiological Findings

Experiments using fMRI neuroimaging have shown that atypical functional connectivity (synchronous brain activity) of brain regions may contribute to ASD. Of particular interest is the default mode network (DMN). The DMN is a network of interacting brain regions associated with cognitive processes which contribute to the Theory of Mind. Figure \ref{fig:fMRI_DMN} shows an fMRI scan highlighting the DMN. Results have shown that autistic patients have decreased functional connectivity between core areas of the DMN. Furthermore, the severity of patients' communication and social deficits inversely correlated with the magnitude of functional connectivity in these regions of the brain [@ASSAF2010247].

![Magnetic resonance imaging of areas of the brain in the default mode network. *By John Graner, Neuroimaging Department, National Intrepid Center of Excellence, Walter Reed National Military Medical Center, 8901 Wisconsin Avenue, Bethesda, MD 20889, USA. (Public domain, via Wikimedia)*\label{fig:fMRI_DMN}](source/figures/dmn_mri.jpg){width=100%}

Competing theories of ASD exist regarding functional connectivity in the brain. Researchers have found that ASD brains show evidence of under-connectivity (UC, also called hypoconnectivity) or, conversely, over-connectivity (OC, also called hyperconnectivity). The latest research suggests that individuals with ASD exhibit instances of both UC and OC. UC and OC are not rigorously defined terms, however, it is generally accepted that UC refers to a statistically significant decrease in functional connectivity relative to a standard comparison value, while OC is the opposite notion. In terms of fMRI, functional connectivity is usually measured by the correlation between the timing and strength of the BOLD signal in different voxels or regions of interest (ROIs). As well as referring to whole brains as OC and/or UC, individual brain regions can also be simultaneously described as being OC to non-traditional areas and UC to brain regions which are typically associated.

### Diagnosis

Despite the significance of ASD, an effective biomarker has not yet been developed [@Yahata2016; @cognitive_neuroscience_ward]. The current procedures for diagnosing ASD are behavioural-based. These involve narrative interactions between clinical professionals and individuals. Risks associated with using non-biological evidence derived from these methods include generating high variance during diagnosis [@Mandell2007] and delaying the detection of abnormalities [@Nylander2013].

The most commonly used diagnostic systems for ASD are the Autism Diagnostic Interview-Revised (ADI-R) [@Lord1994] and the Autism Diagnostic Observation Schedule (ADOS) [@Lord2000]. The ADI-R is a structured interview conducted with parents of the referred child, and the ADOS involves social interaction between the examiner and the subject. Both diagnostics' outputs can be broken down into subcategories. These methods result in quantitative scores, however, other biologically grounded techniques are being explored to either supplement or replace these techniques.


## FMRI

The central technological achievement of neuroimaging is Magnetic Resonance Imaging (MRI). MRI scans produce a static anatomical view of brain matter. This is achieved by using magnetic fields to align the nuclei in the region of the brain being studied. A radio-frequency is then played to raise the nuclei to higher magnetization levels, before switching off the RF signal and measuring the energy emissions of the nuclei as they return to their original energy states. Using a coil, the positions of the nuclei can be located based on the energy emissions of the nuclei.

Functional MRI is an extension of the traditional MRI technology which measures brain activity. It is enabled by the discovery that neuronal activation causes changes in  blood oxygenation levels (hemodynamic response) which in turn can be detected by a magnetic field [@Ogawa9868]. FMRI signals reflect the changes in blood-oxygen-level dependent (BOLD) contrast in the brain and can be used to show which neurons are active at a time. It is also possible to use this information to indirectly estimate connection strengths between functional regions of the brain. While traditional MRI produces high resolution structural differences between tissue types with respect to space, fMRI allows us to view the tissue differences with respect to time. FMRI is still primarily used in research rather than in clinical diagnostic/prognostic scenarios unlike the well established MRI technology [@Matthews2006], however, fMRI is the subject of active research and clinically approved applications are on the horizon.

FMRI was originally used to observe functional variations in brain activity during the performance of a set of tasks. These task-based, goal-directed fMRI studies revealed expected increases in regional brain activity when performing the task, compared with the control state which is designed to place uniquely different demands on the individual unrelated to the task state. In 2001, Marcus Raichle's lab published the results of an experiment which led to the discovery that intrinsic functional and metabolic variations occur in the brain even 'at rest' [@Raichle676]. Because of this, the term 'resting-state' is in some ways misleading. In this context the resting state simply means the state in which an individual is not overtly engaged in performing a task or stimulation. This discovery led to the development of resting-state functional connectivity research in neurodevelopmental diseases such as ASD. Fox and Greicius present a number of advantages for using rs-fMRI in clinical applications [@10.3389/fnsys.2010.00019].

The raw BOLD signal time-series data produced by fMRI scans is not particularly useful until it has been pre-processed. There are many programs for processing fMRI data, including AFNI, FSL and C-PAC. Each program includes a range of configuration parameters for customising the pre-processing pipeline. Pre-processing options include skull stripping, volume realignment, slice timing correction and nuisance signal correction.

### Processing and Analysing FMRI Data

There are two main methods used for the analysis of fMRI data. They are independent component analysis (ICA) and seed-based/region-of-interest (ROI) analysis.

ICA is a statistical technique which can be used to separate multivariate signals into additive subcomponents. It can be used in the context of rs-fMRI analysis to reliably extract resting-state functional networks from a dataset. ICA requires use of whole-brain data, it is highly data-driven and is very good at noise removal.

The seed-based or region of interest approach involves calculating the functional connectivity correlations between each discrete voxel (seed) or cluster of voxels (ROI). Seed-based data is generated by defining the size of an individual voxel, whereas ROIs are represented by a list of normalised 3D coordinates and possibly labels, which correspond to each region.

There exist many different methods of generating ROIs [@VAROQUAUX2013405]. The consequences of poorly choosing ROIs when estimating connectomes can be significant [@VAROQUAUX2013405]. Traditional brain 'atlases' define full-brain parcellations based on large anatomical structures. Examples of this type of atlas include the well-known Harvard-Oxford atlas and AAL atlas. An advantage of using traditional atlases for ROIs is that they have been well studied, and as such have out-of-the-box support in many neuroimaging analysis packages. However, these traditional atlases suffer from some major drawbacks. The regions are segmented based on fairly arbitrary and often aesthetic anatomical criteria, whereas functional connections may not be correlated at all with anatomical structures. Data-driven approaches to ROIs help to mitigate this problem. Atlases are also usually defined as a 'hard selection' of voxels based on single-subjects. This is somewhat mitigated by a 'soft selection' of voxels based on multiple subjects which creates a probabilistic atlas [@SMITH2004S208].

ROIs can be defined by the fMRI data itself. This has many benefits over anatomically defined ROIs including the capture of subject-specific information, adaptation to the limitations of the data and the fact that the resulting ROIs more closely represent the 'true' homogeneous functional regions present at the voxel level. ROI approaches in general also have the advantage of lower memory requirements compared to seed-based voxel approaches due to the fact that time-series data is only stored per ROI rather than for each individual voxel (assuming that the ROIs are larger than the voxels which is the case for all practical purposes).


### Estimating Functional Connectivity from Time-Series Signals

FMRI produces signals based on the hemodynamic BOLD signals in the brain. The regional blood flow is known to correlate with neuronal activations. Therefore, the mean time-series for BOLD fluctuations in regions of interest (ROIs) can be used to estimate functional connectivity. There are a range of mathematical techniques available to recover these connectivities from the time-series data, each with its own set of advantages and disadvantages.

The simplest and most commonly used way to estimate connectivity is by calculating the Pearson product-moment correlation coefficients (PPMCC). The elements in this bivariate **correlation matrix** are in the range -1 to +1 where -1 is anti-correlation, 0 is no linear correlation and +1 is total positive linear correlation. The correlation connectivity models the full connectivity between ROIs including transient ROIs between nodes. This can be a problem as typically, the *direct* connections between functional ROIs are of more interest than full connections which include intermediate ROIs.

The **partial correlation** connectivity measure solves this issue. Partial correlation allows the study of the **direct connections** between ROIs. This can often lead to better classifier results and better visualisations of the connectomes. The partial correlation matrix can be obtained from the inverse of the correlation matrix (as long as an appropriate estimator has been used which produces accurate eigenvalues).

A third and more recent approach is called **tangent connectivity** [@tangent_connectivity]. It uses both the correlations and partial correlations to produce a robust group connectivity matrix which lies somewhere in between the sparseness of the correlation and partial correlation matrices. It has been demonstrated that for groups of time-series, the tangent connectivity produces better classification results [@tangent_connectivity; @nilearn_conn_comparison].

A common mistake is to treat the sample correlations as being equal to the population correlations. This leads to biased estimates and poor classifiers. Therefore, an unbiased estimate is necessary. The most common form of unbiased covariance estimate is the empirical covariance which uses a maximum-likelihood estimator. However, the maximum-likelihood-based estimator does not approximate the true eigenvalues of the covariance matrix very accurately. This is an issue when the precision matrix is calculated from the inverse correlation matrix. A concept called 'shrinkage' helps to solve this problem. A robust shrinkage estimator is the Leidoit-Wolf shrinkage [@LEDOIT2004365].


### Classification of ASD using FMRI {#classifying-asd-fmri}

Recent studies have used a variety of machine learning techniques on fMRI data for diagnosis, segmentation and clustering. Restricted Bolzmann Machines (RBMs), Deep Belief Networks (DBNs), Convolutional Neural Networks and transfer learning with fine tuning are amongst the best performing deep learning techniques.

Heinsfeld et al [@HEINSFELD201816] used a stacked denoising autoencoder to produce a robust classifier which produced good accuracies across multiple sites. Yahata et al (2016) showed how only a small number of features including brain connections, could be used to predict ASD [@Yahata2016]. Some studies have mixed phenotypic data with fMRI data, however, these are not very useful when trying to advance fMRI research.

## Machine Learning

Machine learning is defined as the field "concerned with the question of how to construct computer programs that automatically improve with experience". More formally, "A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E." [@Mitchell:1997:ML:541177].

Machine learning is an inherently multidisciplinary field, lying on the boundary of data-science, statistics, mathematics and computer science. It is a discipline that has its origins in the 1950s, around the time of the 'birth of A.I.'. In 1950, Alan Turing proposed a 'learning machine' that could become artificially intelligent [@Turing1950].

However, machine learning has undergone a significant transformation in recent years. Advances in 'Big Data' processing and computing power have unlocked unprecedented potential for efficient, large-scale, parallel machine learning. Machine learning is now ubiquitously found in most large technology companies such as Google, Facebook and Amazon; powering self-driving cars, search results, spam filtering, fraud detection, sentiment analysis, object detection, natural language translation, intrusion detection, drug discovery and medical diagnosis to name a few examples.

All forms of machine learning require some form of 'data' but distinctions are made depending broadly on how the data is used. Machine learning can be broadly categorised as *supervised*, *unsupervised*, *semi-supervised* and *reinforcement* learning.

- Supervised learning: Algorithms are trained using labelled examples.

- Unsupervised learning: The system is not told the 'ground truth' - it must figure out what it has been given. Clustering is a commonly used unsupervised technique.

- Semi-supervised learning: A more recent advancement, semi-supervised learning is usually used for similar applications as supervised learning. Both labelled and unlabelled data are fed into the training algorithm. It is useful when there is a large cost-factor involved with labelling the training data.

- Reinforcement learning: An *agent* takes *actions* in an *environment* in order to maximise a long-term *reward*. It is often used in the fields of robotics and gaming. Through trial and error, the actions which yield the greatest rewards are discovered.


### Ensembling

Also known as 'decision fusion', ensemble methods combine the output of multiple classifiers in order to try and improve the output. The earliest form of ensembling was Bayesian averaging. More recent algorithms such as bagging and boosting improve upon naive averaging and have made ensembling a very popular tool. Ensembling has been shown to be very useful when the number of samples in the training data is very small, as is the case with the SCA gait data used in this project. Therefore, ensemble methods may prove useful.

Dietterich outlines three main reasons why ensemble methods can significantly improve machine learning results in practice [@Dietterich2000]:

1. The statistical reason - Machine learning algorithms can be framed as a search problem in the space of hypotheses to find the best hypothesis in this space. When the amount of training data is small compared to the size of the hypothesis space, the learning algorithm may find many different hypotheses that all have the same or similar accuracy. By averaging the classification 'votes' of the models in an ensemble, the risk of choosing the 'wrong' classifier is reduced.

2. The computational reason - Learning algorithms often employ common optimisation approaches such as gradient descent in order to find the values of parameters. Optimisation algorithms can get stuck in local optima. An ensemble comprised of classifiers beginning each search at different start points may provide a better approximation to the true target function.

3. The representational reason - The set of hypothesis functions, $H$, in a learning algorithm's search-space may not always include the true target function $f$ i.e. $f$ may not be representable by the learning algorithm. Dietterich suggests that "by forming weighted sums of hypotheses drawn from $H$, it may be possible to expand the space of representable functions."

**Voting and averaging** are two of the simplest ensemble methods and therefore lead to greater interpretability. Voting is used for classification and averaging is used for regression. The learning algorithms in the ensemble can be the same or different and the training data does not have to be split.

**Bagging**, short for 'Bootstrap Aggregating', uses the same learning algorithm to generate multiple models. These models are trained on random sub-samples of the dataset. Since the sub-samples are independent of each other, the models can be trained in parallel, making bagging a fast solution.

**Boosting** is a method used to describe algorithms which can convert so-called 'weak' models into strong models. A model is 'weak' if it has a substantial error rate, but the performance is not random. Boosting sequentially minimises the error rate of prediction by adjusting weighting factors of ensemble models based on the error of the last prediction. Since this is an iterative process, models cannot be trained in parallel. Adaboost is one of the most effective and popular methods of boosting.

**Stacking** typically uses models of different types and a 'supervisor' model that learns the optimal way to combine the predictions of the base models.


## Neural Networks

Neural networks are a form of machine learning classifier loosely inspired by the biological neuron. The atomic unit of the neural network is the artificial neuron. The perceptron is the simplest form of neural network and was proposed by Frank Rosenblatt in 1957, having been inspired by McCulloch and Pitts. The perceptron itself is a linear classifier and as such has limitations on what it can learn. A classic example was learning to mimic an XOR function which is impossible with a single layer perceptron.

Multi-Layer Perceptrons (MLPs) can classify data that is not necessarily linearly separable. This is done by the introduction of a 'hidden layer' in between the input and output layers. By far the most popular form of MLP is the fully-connected feedforward network. It is 'fully-connected' because each neuron is connected to every other neuron in the next layer and it is 'feedforward' because the features are propagated forward through the network (as opposed to recurrent neural networks which can feedback to other neurons and previous layers).

The key to training neural networks is the backpropagation algorithm. Backpropagation is used to efficiently calculate the gradient to inform how the weights should be changed. Somewhat related to backpropagation is gradient descent.

An optimisation function such as stochastic gradient descent or AdaGrad is used to optimise a loss function which improves the neural network. A robust loss function is cross entropy.

Deep learning is an extension of the field of artificial neural networks. It is primarily concerned with networks with many hidden layers. Deep learning has only recently become feasible due to the availability of big data and cheaper compute power.
Deep neural networks are extremely good at learning latent representations of data. In this way, neural networks are somewhat akin to unsupervised approaches in that features generally do not need to be manually selected or engineered.

## Neural Network Optimisation

Machine learning model parameters are the variables that a particular machine learning technique adjusts when it is trained on data. In contrast, the term 'hyperparameter' is used to distinguish from regular model parameters. They aren't directly related to the training data; instead they describe configuration values for the training process and are usually set before the commencement of the training process. Hyperparameters can be manually set based on known values of similar problems or they can be tuned using methods such as grid search.

"Many models have important parameters which cannot be directly estimated from the data. For example, in the K-nearest neighbour classification model... This type of model parameter is referred to as a tuning parameter because there is no analytical formula available to calculate an appropriate value" [@KuhnBook2013]. Examples of some hyperparameters include the learning rate for training a neural network, the number of hidden layers and neurons in a DNN, the $C$ and $\sigma$ hyperparameters for SVMs and the $k$ in k-nearest neighbours.

Depending on the complexity of a model, there can be significant additional cost attributed to tuning hyperparameters (permutations grow exponentially with more parameters). However, hyperparameters cannot be overlooked. A particular machine learning algorithm may become much more effective when configured correctly. Grid search cross-validation is a popular method of hyper-parameter tuning.

Other potential techniques for optimisation are regularisation, alternative weight initialization, alternative activation functions, learning rate tuning and dropout rates.
