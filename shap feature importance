import pandas as pd
import shap
from lightgbm import LGBMClassifier
import matplotlib.pyplot as plt

excel_file = pd.ExcelFile('/mnt/raw data.xlsx')

df = excel_file.parse('Sheet1')

col_name_mapping = {
    'Accident Time': 'Accident Time Period',
    'Road Section Information': 'Road Section Information',
    'Weather': 'Weather',
    'Road Alignment': 'Road Alignment',
    'Maximum Allowed Speed (km/h)': 'Maximum Permitted Speed (km/h)',
    'Pavement Material': 'Pavement Material',
    'Road Surface Pollution': 'Road Surface Contamination',
    'Road surface humidity': 'Road Surface Moisture',
    'Pavement Condition': 'Pavement Condition',
    'Driving Experience': 'Driving Experience',
    'Pedestrian Movement': 'Pedestrian Movement State',
    'Vehicle Age': 'Vehicle Age',
    'Driver Age': 'Driver Age',
    'Driver Gender': 'Driver Gender',
    'Pedestrian Age': 'Pedestrian Age',
    'Pedestrian Gender': 'Pedestrian Gender',
    'Speeding': 'Speeding',
    'Pedestrian Injury Situation': 'Pedestrian Injury Condition'
}

df = df.rename(columns=col_name_mapping)

X = df.drop(columns='Pedestrian Injury Condition')
y = df['Pedestrian Injury Condition']

injury_mapping = {1: 'Possible/Uninjured', 2: 'Emergency/Inpatient', 3: 'Fatal'}
y = y.map(injury_mapping)

model = LGBMClassifier(random_state=2024)
model.fit(X, y)

explainer = shap.TreeExplainer(model)

shap_values = explainer.shap_values(X)

plt.rcParams['figure.dpi'] = 300

plt.rcParams['font.sans-serif'] = ['WenQuanYi Zen Hei']
plt.rcParams['axes.unicode_minus'] = False

class_names = ['Possible/Uninjured', 'Emergency/Inpatient', 'Fatal']

plt.figure(layout='tight')
shap.summary_plot(shap_values, X, class_names=class_names, plot_type='bar', feature_names=X.columns, show=False)

plt.title('SHAP Feature Importance for Injury Severity')
plt.show()
