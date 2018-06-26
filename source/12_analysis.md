# Analysis

## The ABIDE Dataset

Before the ABIDE data can be used, it is necessary as with any machine learning problem, to understand the dataset and its limitations. The dataset which will be used in this project is the preprocessed ABIDE I dataset [@abide_dataset; @neuro_preprocessing] made available by the Preprocessed Connectomes Project (PCP) and the Autism Brain Imaging Data Exchange (ABIDE)^[The PCP ABIDE I dataset is available at http://preprocessed-connectomes-project.org/abide/].

The ABIDE I dataset includes structural, rs-fMRI and phenotypic data for 1112 subjects collected across 17 separate sites. The 1112 subjects consist of 539 individuals suffering from ASD and 573 typical controls. Although this dataset includes a fairly large number of subjects by traditional neuroimaging dataset standards across multiple sites, the heterogeneous nature of ASD and confounding factors introduced by differences across test sites pose problems for robust automated classification.

The extensive accompanying documentation for the dataset is reviewed and analysed before a practical 'exploratory data analysis' is performed in order to verify the claims in the documentation and discover key data statistics pertinent to the task of classification which are not documented.

Although the ABIDE dataset is one of the largest open multi-site fMRI datasets, the number of samples is still small for training a deep neural network. A number of steps can be taken in order to mitigate this. Data can be synthesised using software such as Neurosynth in order to increase the number of training samples. K-fold cross-validation can be employed in order to make the best use of the available training data while attempting to keep bias and overfitting to a minimum.

### Phenotypic Data

A range of phenotypic attributes are collected for each subject in the dataset. These include: the subject ID, the diagnostic group (autism or control), the DSM-IV-TR diagnostic category (control, autism, Asperger etc.), gender and the ADI-R, ADOS and SRS scores. This data is available as a standard CSV file. The phenotypic data legend for ABIDE I, explaining the purpose of each column, is available at the following URL:

<div latex-fontsize="small">
[http://fcon_1000.projects.nitrc.org/indi/abide/ABIDE_LEGEND_V1.02.pdf](http://fcon_1000.projects.nitrc.org/indi/abide/ABIDE_LEGEND_V1.02.pdf).
</div>

The PCP also employed automated and manual quality assessment of the data^[[Link to the PCP's quality assessment protocol: http://preprocessed-connectomes-project.org/quality-assessment-protocol/](http://preprocessed-connectomes-project.org/quality-assessment-protocol/)] which was added to the phenotypes file for the preprocessed data. The source code for nilearn's data download method by default, only downloads data which has passed the manual functional and anatomical ratings (columns `qc_rater_1`, `qc_anat_rater_2`, `qc_func_rater_2`, `qc_anat_rater_3`, `qc_func_rater_3`) with a rating of `maybe` or `OK` ^[[Link to relevant nilearn source code: https://github.com/nilearn/nilearn/blob/\newline1c5fe0ac030464b2dd0472eaf81b90d3f10bf71a/nilearn/datasets/func.py#L1231](https://github.com/nilearn/nilearn/blob/1c5fe0ac030464b2dd0472eaf81b90d3f10bf71a/nilearn/datasets/func.py#L1231)]. Only using quality assured data of a high standard could lead to better classification results, however, filtering the data in this way does reduce the amount of training samples and the expert's opinion is subjective. Other research papers also do not seem to filter by these QA metrics but it is worth noting this for validation testing.

Another notable QA attribute is the mean framewise displacement (FD) [@POWER20122142; @JENKINSON2002825], stored in the `func_mean_fd` phenotype attribute. The mean FD measures how much each subject moved their head during the fMRI scan. "This is calculated by summing the absolute value of displacement changes in the x, y and z directions and rotational changes about those three axes. The rotational changes are given distance values based on the changes across the surface of a 50mm radius sphere" [@abide_preprocessed_qa_site]. The recommended threshold is 0.2, however, previous research has shown that state-of-the-art results can be achieved without using this threshold [@HEINSFELD201816].

### RS-FMRI Neuroimaging Data

The dataset contains both structural and resting state functional MRI data to accompany the phenotypic data. This project is primarily concerned with the functional MRI data. There are many ways to pre-process fMRI data and there is no consensus on the best way. Therefore, the dataset includes data which has been processed with a variety of programs and preprocessing **pipelines**^[Full information on the pipelines is available at [http://preprocessed-connectomes-project.org/abide/Pipelines.html](http://preprocessed-connectomes-project.org/abide/Pipelines.html)]. The available pipelines are: Connectome Computation System (CCS), Configurable Pipeline for the Analysis of Connectomes (C-PAC), Data Processing Assistant for Resting-State fMRI (DPARSF) and Neuroimaging Analysis Kit (NIAK). Each pipeline includes a number of preprocessing steps such as slice time correction, motion realignment and removal of various nuisance signals.

Each pipeline was then used to calculate four different preprocessing **strategies** (shown in table \ref{tbl:processing_strat}). The band-pass filtering variants applied BP filtering between the frequencies 0.01-0.1 Hz. The global signal regression/correction variants have the global mean signal included in the nuisance variable regression which causes the data to be globally normalised. It should be noted that both techniques are considered controversial in the neuroimaging community.

| Strategy        | Band-Pass Filtering | Global Signal Regression |
|-----------------|---------------------|--------------------------|
| filt_global     | Yes                 | Yes                      |
| filt_noglobal   | Yes                 | No                       |
| nofilt_global   | No                  | Yes                      |
| nofilt_noglobal | No                  | No                       |

: The available preprocessing strategies [@abide_preprocessed_pipelines_site].\label{tbl:processing_strat}

A number of statistical **derivatives** are included for each processing pipeline. These include functional preprocessed images without any other modifications, functional means, eigenvectors, binarized images and mean time-series data extracted for seven ROI atlases. This neuroimaging data comes in two formats: 4-dimensional NIfTI binary images with the extension `.nii.gz`, and the ROI data which are tab delimited text files with the extension `.1D`. Both the 4D images and extracted mean time-series data can be used for classification, however, there are a number of points to consider when choosing which format to use:

#. The 4D data has a lot more data-points than the already extracted ROI data. This could lead to better classification. However, these 4D images also take up a comparatively large amount of storage space and thus would also increase the training and inference times. Each 4D gzipped^[Gzip is an open-source compression utility.] NIfTI file (`*.nii.gz`) in the `func_preproc` derivatives is approximately 30-200 MB compared to the extracted time series files which are about 0.5-1 MB in size [@abide_preprocessed_download_site].
#. Mean time-series would have to be extracted from the 4D data anyway using either an atlas or a technique such as ICA. Doing this takes time and may not result in data of better quality than the ROI data which the PCP has already extracted.


## Exploratory Data Analysis

The purpose of an exploratory data analysis (EDA) is to summarise the main statistics and characteristics of a dataset. Visual tools are often employed to aid understanding of the data. The results of an EDA can help to inform what preprocessing steps are necessary before the data can be fed into the machine learning algorithm. The distributions of features and labels can also help to form hypotheses about the data, and/or approaches to feature selection and feature engineering. The EDA for the ABIDE dataset was conducted using the Jupyter Notebook software with an Anaconda Python kernel, however, the results are summarised and presented in this section as well.

### ROI Atlases

There are seven atlases which are used to compute ROI derivatives. The Craddock 200 atlas has been used recently to create a classify with state-of-the-art results, therefore there will be a focus on this atlas. Figure \ref{fig:cc200_ortho} shows an orthographic plot of the Craddock 200 (CC200) atlas.

![An orthographic plot of the Craddock 200 (CC200) brain atlas which is used to extract ROI mean time-series data.\label{fig:cc200_ortho}](source/figures/cc200_atlas_rois_plot_ortho.png "An orthographic plot of the Craddock 200 (CC200) brain atlas.")

In order to visually compare the atlases against each other, a plot of each atlas was produced (see figure \ref{fig:atlases_compare}).

![All seven functional atlases.\label{fig:atlases_compare}](source/figures/atlases_compare.png){width=100%}

Each atlas has accompanying labels with various attributes. The Craddock atlas labels have the most complete set of attributes including the volume of the region, centre of mass coordinates and label names which are generated from the overlap with regions defined by the AAL, EZ, TT and HO atlases. Table \ref{tbl:cc200_labels} shows a snippet of the label data for the CC200 atlas.

<div latex-fontsize="scriptsize">
```{.table caption="The first 5 rows from the CC200 atlas labels CSV file (only the HO labels are included in order to save space). \label{tbl:cc200_labels}" source="source/csvs/cc200_labels.csv"}
```
</div>

The centre of mass coordinates may be useful for plotting connectomes once the functional connections estimation algorithm is implemented. However, the centre of mass column needs to be parsed to separate the coordinates.

### Phenotypic Data

The phenotypes CSV has many attributes, not all of which will be useful to classification. Table \ref{tbl:pheno} shows the first five rows of the phenotype table. It should be noted that subject 50002 has no file ID. This effectively renders the individual useless for classification as there is no associated brain imaging data.

<div latex-fontsize="footnotesize">
```{.table caption="The first 5 rows of the phenotypic data CSV file (only showing a subset of columns). \label{tbl:pheno}" source="source/csvs/phenotypic_data.csv"}
```
</div>

There are 1112 rows of phenotypic data in the downloaded file relating to subjects. Removing rows without corresponding neuroimaging files leaves 1035 subjects.

The unique site IDs were also found. The ABIDE I website explains that the data was collected accross 17 different sites, however there are 20 distinct site IDs. This is due to the fact that some sites have multiple entries, presumably because the data was collected at different times or in different labs at the same institution. These site IDs are `UM_1`, `UM_2`, `LEUVEN_1`, `LEUVEN_2`, `UCLA_1` and `UCLA_2`. It would make logical sense to merge these pairs of sites as was done in @HEINSFELD201816.

The mean framewise displacement (FD) is another important attribute. The current guidance in the neuroimaging community is to only use data with mean FD <= 0.2. It is therefore important to look at the distribution of mean FD in the dataset (see figure \ref{fig:mean_fds}).

![Plots showing the distribution of mean framewise displacement.\label{fig:mean_fds}](source/figures/mean_fds.png)

It was found during the process of plotting that the subject with ID 50610 does have a corresponding neuroimaging file but the mean FD is null. This subject should therefore be removed from the dataset if the mean FD is needed.

Nilearn's strategy of quality checked data was tested on the dataset. Only keeping data which passes the manual quality checks reduces the data by approximately 16%.

Figure \ref{fig:dx_by_site} shows the breakdown of ASD and TD subjects grouped by each site. Note that the sites are the normalised versions (without suffixes e.g. '_1'). This is useful information as it helps to inform the training strategy and how best to keep the data balanced.

![A stacked bar chart displaying the number of ASD and TD patients belonging to each site.\label{fig:dx_by_site}](source/figures/dx_by_site.png)

### ROI Mean Time-Series Data

For each patient, there is associated mean time-series data which represents the fluctuations in brain activations over time in different ROIs. It is a good practice to scale data which will be used as feature vectors somewhere in the pipeline, therefore the time-series data was scaled. Figure \ref{fig:rois_time} shows how BOLD signals change over time in the first 3 ROIs for an individual.

![A plot of a subject's first 3 ROI signals (normalised) over time from the CC200 ROI derivative.\label{fig:rois_time}](source/figures/eda_roi_graph.png)

### Four Dimensional NIfTI Files

Although this project is primarily concerned with using the extracted ROI time-series data, it is useful to appreciate where this preprocessed data originated from. In the case of the ROI time-series data, it is computed from the original 4-dimensional fMRI scans. There are 3 spatial dimensions and one time dimension. The 4D images show the BOLD fluctuations through time at the resolution of the voxels rather than ROIs. Figure \ref{fig:4D_time_slices} displays a subset of the brain volumes through time at each scan for a subject.

![A subject's fMRI BOLD signals over time.\label{fig:4D_time_slices}](source/figures/4D-time-slices.png)

## Computing Connectivity

The mean connectivity of each diagnostic group was studied. This involved splitting the data by diagnosis, computing the connectivities with either correlation or partial correlation and using appropriate plotting methods to visualise these. Figure \ref{fig:conn_matrices}

![Plots of the mean connectivity matrices calculated for the ASD and TD patients. Note that the diagonals of the partial correlation matrices have been set to 0 to ease visualisation as the partial correlation values are sparse and small.\label{fig:conn_matrices}](source/figures/conn_matrices.png)

The mean connectomes can also be visualised (see figure \ref{fig:connectomes}). The colour of the connections illustrates the magnitude of the correlation/anti-correlation. The connectome calculated with partial correlations should appear slightly sparser as it only represents direct regional connections.

![The mean connectomes for the TD and ASD groups calculated with correlations and partial correlations.\label{fig:connectomes}](source/figures/connectomes.png)

## Evaluation Method

As a general rule of thumb, stratified k-fold cross validation was used to evaluate the classifiers. The folds are stratified by the concatenation of the site ID and diagnosis label. This ensures that the results are not biased due to skewed/disproportionately represented data within folds.

The reported metrics are: accuracy, precision, recall and f1-score.

For experiments where hyperparameters were tuned, stratified 3-fold cross-validation was used. The best classifier from a group of tuning models was deemed to be the one with the highest accuracy.

10-fold cross validation was then used to evaluate the tuned classifier on the whole dataset. It is important to use a cross-validation strategy to evaluate tuned models rather than a simple classification in order to prevent information leakage and biased results [@Cawley:2010:OMS:1756006.1859921]. This methodology is called nested cross-validation.

## Risk Analysis

Running out of time - As a general approach, the Minimum Viable Product rule will be used in order to fail fast and partially mitigate the risk of incomplete results. Downloading large files can also take a lot of time.
