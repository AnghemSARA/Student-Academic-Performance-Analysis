# Python Machine Learning Model

This folder contains the Python notebooks used to build machine learning models for student pass/fail prediction.

### Version 1: Performance Prediction Model

The first notebook contains a pass/fail prediction model using previous academic grades `G1` and `G2`, along with other student-related features. This version is useful for predicting final academic performance when previous grades are already available.

### Version 2: Early Risk Prediction Model

The second notebook contains an early-risk prediction model. This model excludes `G1` and `G2` to make the prediction more realistic and challenging. It focuses on early academic risk detection using non-grade features such as study time, absences, previous failures, school support, internet access, and family background.

## Model Comparison and Interpretation

Two prediction scenarios were tested in this project.

### Model 1: Grade-Based Prediction

The first model used previous grades `G1` and `G2` together with other student-related features. This model achieved the highest accuracy because previous grades are strongly related to the final grade `G3`.

Best algorithm: Decision Tree  
Accuracy: 89.87%

### Model 2: Early Risk Prediction

The second model excluded previous grades `G1` and `G2`. This made the prediction task more difficult because the model could not use direct academic performance indicators. Instead, it used demographic, behavioral, family, and support-related features such as study time, absences, previous failures, school support, internet access, and family background.

Best algorithm: Random Forest  
Accuracy: 69.62%

The lower accuracy of the second model is expected. It shows that `G1` and `G2` are strong predictors of final academic performance. However, the early-risk model remains useful because it can help identify students who may need support before previous grade information is available.
