# Implementation

## Workflow

First, the environment must be initialised. The code for this project was tested on Sheffield's HPC 'ShARC' computer which runs CentOS Linux. To use this system, one must either be on the Sheffield VPN or the Sheffield network. A more lightweight approach was devised, where the author made use of his Department of Computer Science SSH access to proxy the SSH connection through to ShARC. This meant that there was no need for a full VPN redirecting arbitrary network requests.

Using the modulus modules system, Anaconda can be loaded with the command `module load apps/python/anaconda3-4.2.0`. The packages for this project can then be installed by creating a new conda environment from the environment.yml file. This is done by running `conda env create -f environment.yml` (note that this file is `environment-cpu.yml` if running on a PC without GPU support). Once the Python environment is set up, the required libraries including Nvidia Cuda and CudNN can be loaded by running `source env-setup.sh` from the project's root directory.

Before any machine learning classifiers can be trained, the ABIDE dataset must be downloaded. It is deliberately not included with this project's repository as it is very large. The data can be downloaded by running `./download_data.sh` which will execute the `download_abide_preproc.py` script with the necessary parameters. Note that this script downloads files asynchronously to increase the speed.

Next the training data must be prepared. This is done so that functional connectivities do not have to be recomputed at the beginning of every experiment. To do this, run `python prepare_data.py --connectivity=tangent` to prepare patient training data using the robust group estimator (tangent) method of connectivity measurement.

To queue a training job on the ShARC HPC, run `qsub jobs/<job>` from the project root directory where `<job>` is your chosen job. These job scripts run the necessary python scripts with the correct parameters and ensure that the environment is correctly set up. The job scripts also request that a GPU be allocated to the job so that the neural network training can make use of GPU hardware acceleration.

## Software Tools

Python was chosen for this project as it has a large scientific ecosystem including many machine learning packages.
Specifically, the Anaconda distribution of Python 3.6 was used as this distribution includes many useful packages by default and also includes the conda package manager which simplifies replicable environmental setups.

TensorFlow and Keras were used for the neural network processes. Keras provides a simple API to create neural networks and uses TensorFlow as a backend for computation. Scikit-learn was also used for machine learning utilities such as evaluation metrics and cross validation helpers. Nilearn was also heavily used to visualise fMRI data and compute the connectivities from ROI mean time-series data.

Jupyter notebooks were used extensively for prototyping algorithms. A number of Jupyter notebooks are included with this project's code. While they are not intended to be as stable as the actual python scripts, they do show evidence of experimentation and the author's thought process.

## Parallel Computation

Whenever possible, significant computations are executed in parallel. For example, the data download process can take a long time and provides a barrier even before training has commenced. Nilearn provides data downloading methods, one of which includes the ABIDE dataset. However, each file is downloaded sequentially which can be cumbersome on slow internet connections. To combat this, python's multiprocessing Pool class was used along with TQDM to provide parallel computations with a progress bar. Cross validation folds are also executed in parallel by setting the `n_jobs=-1` parameter wherever possible. This does not seem to work when using a Keras classifier but worked well with SVM k-fold cross-validation.

## Hyperparameter Tuning

Hyperparameter tuning of classifiers is accomplished by using scikit-learn's grid search cross-validation method (`GridSearchCV`). A search grid of possible hyperparameter values was specified in order to provide the grid search process with permutations to evaluate.

The KerasClassifier wrapper is used to wrap the Keras neural network models. This allows scikit-learn methods to be executed on the Keras model such as the `cross_validate` function.

## Tensorboard

The Tensorboard software was used to track the progress of neural network training in real-time as well as post-training. In order to log data for Tensorboard, a Keras classifier must have the Tensorboard callback passed to it. Unfortunately this is not readily compatible when using the scikit-learn wrapper KerasClassifier. Therefore, another wrapper class, 'KerasClassifierTB', was created which allows Tensorboard to be used along with scikit-learn functions and the Keras neural network classifier. Figure \ref{fig:tensorboard_ex} shows a screenshot of the Tensorboard page tracking the progress of a training task. Running the computations on the HPC remotely posed some challenges for running Tensorboard in real-time. The SSH session to ShARC was started with X-Window forwarding so that Firefox could be launched from the interactive session. This allowed access to the Tensorboard instance running on the HPC localhost. An SSH port forwarding approach was attempted but the HPC firewalls seemed to block this.

![The TensorBoard dashboard as a neural network is being trained.\label{fig:tensorboard_ex}](source/figures/tensorboard.png)
