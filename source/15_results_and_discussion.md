# Results and Discussion

## Diagnosis Findings

The experimental results are shown in the tables below.

### SVM

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="Results of 10-fold CV with simple SVM classifier and correlation connectivity. \label{tbl:svm_correlation_simple}" source="source/csvs/svm/correlation/svm_simple_cv10.csv"}
```
<!-- </div> -->

<div latex-fontsize="footnotesize">
```{.table caption="Results of 3-fold CV grid-search tuning with SVM classifier and correlation connectivity. \label{tbl:svm_correlation_tune}" source="source/csvs/svm/correlation/svm_clf_tuned_cv3_results.csv"}
```
</div>

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="10-fold CV results for the best CV grid-search tuned SVM classifier with correlation connectivity. \label{tbl:svm_correlation_tune_eval}" source="source/csvs/svm/correlation/svm_clf_tuned_evaluation_full_dataset.csv"}
```
<!-- </div> -->

<!-- asd -->

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="Results of 10-fold CV with simple SVM classifier and partial correlation connectivity. \label{tbl:svm_partial_correlation_simple}" source="source/csvs/svm/partial_correlation/svm_simple_cv10.csv"}
```
<!-- </div> -->

<div latex-fontsize="footnotesize">
```{.table caption="Results of 3-fold CV grid-search tuning with SVM classifier and partial correlation connectivity. \label{tbl:svm_partial_correlation_tune}" source="source/csvs/svm/partial_correlation/svm_clf_tuned_cv3_results.csv"}
```
</div>

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="10-fold CV results for the best CV grid-search tuned SVM classifier with partial correlation connectivity. \label{tbl:svm_partial_correlation_tune_eval}" source="source/csvs/svm/partial_correlation/svm_clf_tuned_evaluation_full_dataset.csv"}
```
<!-- </div> -->


<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="Results of 10-fold CV with simple SVM classifier and tangent robust group connectivity. \label{tbl:svm_tangent_simple}" source="source/csvs/svm/tangent/svm_simple_cv10.csv"}
```
<!-- </div> -->

<div latex-fontsize="footnotesize">
```{.table caption="Results of 3-fold CV grid-search tuning with SVM classifier and tangent robust group connectivity. \label{tbl:svm_tangent_tune}" source="source/csvs/svm/tangent/svm_clf_tuned_cv3_results.csv"}
```
</div>

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="10-fold CV results for the best CV grid-search tuned SVM classifier with tangent robust group connectivity. \label{tbl:svm_tangent_tune_eval}" source="source/csvs/svm/tangent/svm_clf_tuned_evaluation_full_dataset.csv"}
```
<!-- </div> -->

<!-- NN results -->
### Neural Network

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="Results of 10-fold CV with simple NN classifier and tangent connectivity. \label{tbl:nn_tangent_simple}" source="source/csvs/nn/nn_simple_cv10.csv"}
```
<!-- </div> -->

<div latex-fontsize="footnotesize">
```{.table caption="Results of 3-fold CV grid-search tuning with NN classifier and tangent robust group connectivity. Labels: Acc=Accuracy, f1=f1-score, Prec=Precision, Rec=Recall, batchS=batch_size, dropout=dropout_rate, init=init_method, LR=learning rate, neurons=Number of neurons in hidden layer. \label{tbl:nn_tangent_tune}" source="source/csvs/nn/nn_clf_tuned_cv3_results.csv"}
```
</div>

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="10-fold CV results for the best CV grid-search tuned NN classifier with tangent robust group connectivity. \label{tbl:nn_tangent_tune_eval}" source="source/csvs/nn/nn_clf_tuned_evaluation_full_dataset.csv"}
```
<!-- </div> -->

<!-- <div latex-fontsize="scriptsize"> -->
```{.table caption="Summary of results with mean values from k-fold cross validations. \label{tbl:summary_of_res}" source="source/csvs/results_summary.csv"}
```
<!-- </div> -->

### Interpretation

The results show that the tuned SVM performed better than the neural network classifier. The tuned SVM achieves an accuracy of 70% which is on par with the latest state-of-the-art ABIDE multi-site classification shown by Heinsfeld et al. [@HEINSFELD201816]. Heinsfeld et al. reported an SVM accuracy of 65% and their flagship neural network classifier which took approximately 24 hours to run achieved 70%. This is in contrast to the tuned SVM classifier seen in this project which takes a matter of minutes to train and produces state-of-the-art results. This is an achievement in itself and was somewhat unexpected. The SVM results reiterate the importance of tuning hyperparameters.

However, the SVM classifier was simply meant to be a baseline for the neural networks. Unfortunately, the neural networks proved troublesome to train. This is evidenced by the fact that the simple single-layer baseline neural network classifier, achieved a mean accuracy of 68% compared to the hidden layer network which achieved a mean accuracy of 51% - when, in theory, the hidden layer should afford the classifier more opportunity to learn latent features. Time was a serious constraint in this project, and as such, limited the scope of the neural network's hyperparameter tuning and training. Had more time been available, the multi-layer network may have performed better. The time involved with setting up the necessary software and frameworks for neural network training should not be underestimated.

Another observation, made pre-training, was that filtering the data by quality assessment attributes (`qc_rater` columns) and/or thresholding the mean framewise displacement led to poorer classification scores. This is probably due to two factors.

1. The fMRI dataset is already comparatively small for training a robust machine learning classifier. Removing training data samples, even if they aren't of the best quality, gives the classifier less information to learn.
2. Some of the quality assessment criteria are subjective. Machines may be better at 'teasing out' the correct representations despite humans judging the data to be of poor quality.

## Goals Achieved

The primary goal of this project was to produce a classifier which can classify a patient as having ASD or not based solely on fMRI data. In that respect, this goal was accomplished. The tuned SVM model produced a very high accuracy in terms of the literature, while the neural network did not perform so well.


## Further Work

More time should be spent on tuning the neural network hyperparameters. Ensembling and use of autoencoders with fine-tuning techniques could also be applied.
