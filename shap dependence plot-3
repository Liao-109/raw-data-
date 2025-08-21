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

target_class_index = list(injury_mapping.values()).index('Fatal')

model = LGBMClassifier(random_state=2024)
model.fit(X, y)

explainer = shap.TreeExplainer(model)

shap_values = explainer.shap_values(X)

plt.rcParams['figure.dpi'] = 300

plt.rcParams['font.sans-serif'] = ['WenQuanYi Zen Hei']
plt.rcParams['axes.unicode_minus'] = False

shap.dependence_plot('Road Alignment', shap_values[target_class_index], X, show=False)
plt.title('SHAP Dependence Plot of Road Alignment on Pedestrian Injury Condition (Fatal)')
plt.show()

shap.dependence_plot('Pavement Material', shap_values[target_class_index], X, show=False)
plt.title('SHAP Dependence Plot of Pavement Material on Pedestrian Injury Condition (Fatal)')
plt.show()
