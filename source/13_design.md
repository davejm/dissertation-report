# Design

## Data Pre-Processing

Based on the analysis, the following pre-processing steps were taken:

1. Subjects with no corresponding time-series data file are removed.
2. Subjects are optionally filtered by quality assessment criteria.
3. Site ID's are normalised by removing the underscore suffixes (e.g. UCLA_1 -> UCLA, UCLA_2 -> UCLA).
4. The classification label (the boolean diagnosis) was transformed minus 1 so that the binary values are the standard '0' and '1' rather than '1' and '2'.
5. A new column is created for the purposes of stratification. When training, stratified k-fold cross-validation was employed, which requires a group index. A combination of the site ID and the classification label was chosen to ensure that classifiers were not skewed by unevenly distributed subjects.

## Model Choice

The SVM classifier was used in order to provide a comparative baseline to the neural network classifier. An untuned SVM and an SVM tuned via grid-search provided baseline scores. For the neural network, a single layer network was used to provide a baseline and check that everything was working correctly. The main network of interest was the 'complex' neural network which comprised 1 hidden layer of 500 neurons, dropout layers, random weight initialisation and was trained with the RMSProp optimiser. Figures \ref{fig:simple_nn} and \ref{fig:complex_nn} show diagrams of the simple and complex neural network architectures.

![The simple single-layer neural network architecture.\label{fig:simple_nn}](source/figures/nn_simple.png)

![The complex and configurable multi-layer neural network architecture.\label{fig:complex_nn}](source/figures/nn_complex.png)
