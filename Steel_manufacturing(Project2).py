# -*- coding: utf-8 -*-
"""
Created on Tue Aug 27 17:26:59 2024

@author: Manisha
"""

import pandas as pd
import numpy as np

df = pd.read_csv(r'C:/Users/Manisha/Desktop/Project2_dataset.csv')


############## First/ Second/ Third/ Fourth  Moment Business Decision ############
df['Inj1'].mean()
df['Inj1'].median()
df['Inj1'].mode()
df['Inj1'].std()
df['Inj1'].var()
df['Inj1'].max() - df['Inj1'].min()
df['Inj1'].skew()
df['Inj1'].kurt()

################ GRAPHICAL REPRESENTATION ################

import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Inj1'],bins = 20 )
plt.title("Inj1")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates (keep = 'first')
print(df)

########### MISSING VALUES ###########

missing_values = df['Inj1'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.Inj1)
IQR = df['Inj1'].quantile(0.75) - df['Inj1'].quantile(0.25)
lower_limit = df['Inj1'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Inj1'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Inj1'] > upper_limit, upper_limit, np.where(df['Inj1'] < lower_limit, lower_limit, df['Inj1'])))
sns.boxplot(replace_val)

###################### ZERO AND NON-ZERO VARIANCE ###############

# Select only numeric columns
numeric_df = df.select_dtypes(include=[float, int])

# Calculate variance for numeric columns
variance = numeric_df.var()

# Identify near-zero variance features
near_zero_var_features = variance[variance < 0.01]

# Print the names of the near-zero variance features
print(near_zero_var_features)


#############################

df['Inj2'].mean()
df['Inj2'].median()
df['Inj2'].mode()
df['Inj2'].std()
df['Inj2'].var()
df['Inj2'].max() - df['Inj2'].min()
df['Inj2'].skew()
df['Inj2'].kurt()


################ GRAPHICAL REPRESENTATION ################
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Inj2'],bins = 20 )
plt.title("Inj2")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)

########### MISSING VALUES ###########

missing_values = df['Inj2'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.Inj2)
IQR = df['Inj2'].quantile(0.75) - df['Inj2'].quantile(0.25)
lower_limit = df['Inj2'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Inj2'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Inj2'] > upper_limit, upper_limit, np.where(df['Inj2'] < lower_limit, lower_limit, df['Inj2'])))
sns.boxplot(replace_val)


############################
df['HOT_METAL (HOT Metal from MBF)'].mean()
df['HOT_METAL (HOT Metal from MBF)'].median()
df['HOT_METAL (HOT Metal from MBF)'].mode()
df['HOT_METAL (HOT Metal from MBF)'].std()
df['HOT_METAL (HOT Metal from MBF)'].var()
df['HOT_METAL (HOT Metal from MBF)'].max() - df['HOT_METAL (HOT Metal from MBF)'].min()
df['HOT_METAL (HOT Metal from MBF)'].skew()
df['HOT_METAL (HOT Metal from MBF)'].kurt()

################ GRAPHICAL REPRESENTATION ################
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['HOT_METAL (HOT Metal from MBF)'],bins = 20 )
plt.title("HOT_METAL (HOT Metal from MBF)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)

########### MISSING VALUES ###########

missing_values = df['HOT_METAL (HOT Metal from MBF)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df['HOT_METAL (HOT Metal from MBF)'])
IQR = df['HOT_METAL (HOT Metal from MBF)'].quantile(0.75) - df['HOT_METAL (HOT Metal from MBF)'].quantile(0.25)
lower_limit = df['HOT_METAL (HOT Metal from MBF)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['HOT_METAL (HOT Metal from MBF)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['HOT_METAL (HOT Metal from MBF)'] > upper_limit, upper_limit, np.where(df['HOT_METAL (HOT Metal from MBF)'] < lower_limit, lower_limit, df['HOT_METAL (HOT Metal from MBF)'])))
sns.boxplot(replace_val)


#############################
df['Total Charge'].mean()
df['Total Charge'].median()
df['Total Charge'].mode()
df['Total Charge'].std()
df['Total Charge'].var()
df['Total Charge'].max() - df['Total Charge'].min()
df['Total Charge'].skew()
df['Total Charge'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Total Charge'],bins = 20 )
plt.title("Total Charge")
plt.tight_layout()
plt.show()


############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)

########### MISSING VALUES ###########

missing_values = df['Total Charge'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df['Total Charge'])
IQR = df['Total Charge'].quantile(0.75) - df['Total Charge'].quantile(0.25)
lower_limit = df['Total Charge'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Total Charge'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Total Charge'] > upper_limit, upper_limit, np.where(df['Total Charge'] < lower_limit, lower_limit, df['Total Charge'])))
sns.boxplot(replace_val)


#############################
df['Hot_Heel (Left Over Liquid metal in EAF)'].mean()
df['Hot_Heel (Left Over Liquid metal in EAF)'].median()
df['Hot_Heel (Left Over Liquid metal in EAF)'].mode()
df['Hot_Heel (Left Over Liquid metal in EAF)'].std()
df['Hot_Heel (Left Over Liquid metal in EAF)'].var()
df['Hot_Heel (Left Over Liquid metal in EAF)'].max() - df['Hot_Heel (Left Over Liquid metal in EAF)'].min()
df['Hot_Heel (Left Over Liquid metal in EAF)'].skew()
df['Hot_Heel (Left Over Liquid metal in EAF)'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Hot_Heel (Left Over Liquid metal in EAF)'],bins = 20 )
plt.title("Hot_Heel (Left Over Liquid metal in EAF)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)

########### MISSING VALUES ###########

missing_values = df['Hot_Heel (Left Over Liquid metal in EAF)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df['Hot_Heel (Left Over Liquid metal in EAF)'])
IQR = df['Hot_Heel (Left Over Liquid metal in EAF)'].quantile(0.75) - df['Hot_Heel (Left Over Liquid metal in EAF)'].quantile(0.25)
lower_limit = df['Hot_Heel (Left Over Liquid metal in EAF)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Hot_Heel (Left Over Liquid metal in EAF)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Hot_Heel (Left Over Liquid metal in EAF)'] > upper_limit, upper_limit, np.where(df['Hot_Heel (Left Over Liquid metal in EAF)'] < lower_limit, lower_limit, df['Hot_Heel (Left Over Liquid metal in EAF)'])))
sns.boxplot(replace_val)


#############################
df['DOLO'].mean()
df['DOLO'].median()
df['DOLO'].mode()
df['DOLO'].std()
df['DOLO'].var()
df['DOLO'].max() - df['DOLO'].min()
df['DOLO'].skew()
df['DOLO'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['DOLO'],bins = 20 )
plt.title("DOLO")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)

########### MISSING VALUES ###########

missing_values = df['DOLO'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.DOLO)
IQR = df['DOLO'].quantile(0.75) - df['DOLO'].quantile(0.25)
lower_limit = df['DOLO'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['DOLO'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['DOLO'] > upper_limit, upper_limit, np.where(df['DOLO'] < lower_limit, lower_limit, df['DOLO'])))
sns.boxplot(replace_val)


#############################
df['DOLO1_EMPTY'].mean()
df['DOLO1_EMPTY'].median()
df['DOLO1_EMPTY'].mode()
df['DOLO1_EMPTY'].std()
df['DOLO1_EMPTY'].var()
df['DOLO1_EMPTY'].max() - df['DOLO1_EMPTY'].min()
df['DOLO1_EMPTY'].skew()
df['DOLO1_EMPTY'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['DOLO1_EMPTY '],bins = 20 )
plt.title("DOLO1_EMPTY ")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['DOLO1_EMPTY '].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['(DOLO1_EMPTY)'] )
IQR = df['DOLO1_EMPTY '].quantile(0.75) - df['DOLO1_EMPTY '].quantile(0.25)
lower_limit = df['DOLO1_EMPTY '].quantile(0.25) - (IQR * 1.5)
upper_limit = df['DOLO1_EMPTY '].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['DOLO1_EMPTY '] > upper_limit, upper_limit, np.where(df['DOLO1_EMPTY '] < lower_limit, lower_limit, df['DOLO1_EMPTY '])))
sns.boxplot(replace_val)


#############################
df['TOT_LIME_QTY'].mean()
df['TOT_LIME_QTY'].median()
df['TOT_LIME_QTY'].mode()
df['TOT_LIME_QTY'].std()
df['TOT_LIME_QTY'].var()
df['TOT_LIME_QTY'].max() - df['TOT_LIME_QTY'].min()
df['TOT_LIME_QTY'].skew()
df['TOT_LIME_QTY'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TOT_LIME_QTY'],bins = 20 )
plt.title("TOT_LIME_QTY")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TOT_LIME_QTY'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.TOT_LIME_QTY)
IQR = df['TOT_LIME_QTY'].quantile(0.75) - df['TOT_LIME_QTY'].quantile(0.25)
lower_limit = df['TOT_LIME_QTY'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TOT_LIME_QTY'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TOT_LIME_QTY'] > upper_limit, upper_limit, np.where(df['TOT_LIME_QTY'] < lower_limit, lower_limit, df['TOT_LIME_QTY'])))
sns.boxplot(replace_val)


#############################
df['TAP_TEMP (Tappnig Temperature)'].mean()
df['TAP_TEMP (Tappnig Temperature)'].median()
df['TAP_TEMP (Tappnig Temperature)'].mode()
df['TAP_TEMP (Tappnig Temperature)'].std()
df['TAP_TEMP (Tappnig Temperature)'].var()
df['TAP_TEMP (Tappnig Temperature)'].max() - df['TAP_TEMP (Tappnig Temperature)'].min()
df['TAP_TEMP (Tappnig Temperature)'].skew()
df['TAP_TEMP (Tappnig Temperature)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TAP_TEMP (Tappnig Temperature)'],bins = 20 )
plt.title("TAP_TEMP (Tappnig Temperature)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TAP_TEMP (Tappnig Temperature)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['TAP_TEMP (Tappnig Temperature)'])
IQR = df['TAP_TEMP (Tappnig Temperature)'].quantile(0.75) - df['TAP_TEMP (Tappnig Temperature)'].quantile(0.25)
lower_limit = df['TAP_TEMP (Tappnig Temperature)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TAP_TEMP (Tappnig Temperature)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TAP_TEMP (Tappnig Temperature)'] > upper_limit, upper_limit, np.where(df['TAP_TEMP (Tappnig Temperature)'] < lower_limit, lower_limit, df['TAP_TEMP (Tappnig Temperature)'])))
sns.boxplot(replace_val)


#############################
df['O2ACT'].mean()
df['O2ACT'].median()
df['O2ACT'].mode()
df['O2ACT'].std()
df['O2ACT'].var()
df['O2ACT'].max() - df['O2ACT'].min()
df['O2ACT'].skew()
df['O2ACT'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['O2ACT'],bins = 20 )
plt.title("O2ACT")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['O2ACT'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.O2ACT)
IQR = df['O2ACT'].quantile(0.75) - df['O2ACT'].quantile(0.25)
lower_limit = df['O2ACT'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['O2ACT'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['O2ACT'] > upper_limit, upper_limit, np.where(df['O2ACT'] < lower_limit, lower_limit, df['O2ACT'])))
sns.boxplot(replace_val)


#############################
df['ENERGY (Energy Consumption)'].mean()
df['ENERGY (Energy Consumption)'].median()
df['ENERGY (Energy Consumption)'].mode()
df['ENERGY (Energy Consumption)'].std()
df['ENERGY (Energy Consumption)'].var()
df['ENERGY (Energy Consumption)'].max() - df['ENERGY (Energy Consumption)'].min()
df['ENERGY (Energy Consumption)'].skew()
df['ENERGY (Energy Consumption)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['ENERGY (Energy Consumption)'],bins = 20 )
plt.title("ENERGY (Energy Consumption)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['ENERGY (Energy Consumption)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER #################

import seaborn as sns

sns.boxplot(df['ENERGY (Energy Consumption)'])
IQR = df['ENERGY (Energy Consumption)'].quantile(0.75) - df['ENERGY (Energy Consumption)'].quantile(0.25)
lower_limit = df['ENERGY (Energy Consumption)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['ENERGY (Energy Consumption)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['ENERGY (Energy Consumption)'] > upper_limit, upper_limit, np.where(df['ENERGY (Energy Consumption)'] < lower_limit, lower_limit, df['ENERGY (Energy Consumption)'])))
sns.boxplot(replace_val)


#############################
df['KWH_PER_TON (Energy Consumption Per Ton)'].mean()
df['KWH_PER_TON (Energy Consumption Per Ton)'].median()
df['KWH_PER_TON (Energy Consumption Per Ton)'].mode()
df['KWH_PER_TON (Energy Consumption Per Ton)'].std()
df['KWH_PER_TON (Energy Consumption Per Ton)'].var()
df['KWH_PER_TON (Energy Consumption Per Ton)'].max() - df['KWH_PER_TON (Energy Consumption Per Ton)'].min()
df['KWH_PER_TON (Energy Consumption Per Ton)'].skew()
df['KWH_PER_TON (Energy Consumption Per Ton)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['KWH_PER_TON (Energy Consumption Per Ton)'],bins = 20 )
plt.title("KWH_PER_TON (Energy Consumption Per Ton)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['KWH_PER_TON (Energy Consumption Per Ton)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['KWH_PER_TON (Energy Consumption Per Ton)'])
IQR = df['KWH_PER_TON (Energy Consumption Per Ton)'].quantile(0.75) - df['KWH_PER_TON (Energy Consumption Per Ton)'].quantile(0.25)
lower_limit = df['KWH_PER_TON (Energy Consumption Per Ton)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['KWH_PER_TON (Energy Consumption Per Ton)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['KWH_PER_TON (Energy Consumption Per Ton)'] > upper_limit, upper_limit, np.where(df['KWH_PER_TON (Energy Consumption Per Ton)'] < lower_limit, lower_limit, df['KWH_PER_TON (Energy Consumption Per Ton)'])))
sns.boxplot(replace_val)

#############################
df['KWH_PER_MIN'].mean()
df['KWH_PER_MIN'].median()
df['KWH_PER_MIN'].mode()
df['KWH_PER_MIN'].std()
df['KWH_PER_MIN'].var()
df['KWH_PER_MIN'].max() - df['KWH_PER_MIN'].min()
df['KWH_PER_MIN'].skew()
df['KWH_PER_MIN'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['KWH_PER_MIN'],bins = 20 )
plt.title("KWH_PER_MIN")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['KWH_PER_MIN'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.KWH_PER_MIN)
IQR = df['KWH_PER_MIN'].quantile(0.75) - df['KWH_PER_MIN'].quantile(0.25)
lower_limit = df['KWH_PER_MIN'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['KWH_PER_MIN'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['KWH_PER_MIN'] > upper_limit, upper_limit, np.where(df['KWH_PER_MIN'] < lower_limit, lower_limit, df['KWH_PER_MIN'])))
sns.boxplot(replace_val)

#############################
df['MELT_TIME (Melting Time)'].mean()
df['MELT_TIME (Melting Time)'].median()
df['MELT_TIME (Melting Time)'].mode()
df['MELT_TIME (Melting Time)'].std()
df['MELT_TIME (Melting Time)'].var()
df['MELT_TIME (Melting Time)'].max() - df['MELT_TIME (Melting Time)'].min()
df['MELT_TIME (Melting Time)'].skew()
df['MELT_TIME (Melting Time)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['MELT_TIME (Melting Time)'],bins = 20 )
plt.title("MELT_TIME (Melting Time)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['MELT_TIME (Melting Time)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df['MELT_TIME (Melting Time)'])
IQR = df['MELT_TIME (Melting Time)'].quantile(0.75) - df['MELT_TIME (Melting Time)'].quantile(0.25)
lower_limit = df['MELT_TIME (Melting Time)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['MELT_TIME (Melting Time)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['MELT_TIME (Melting Time)'] > upper_limit, upper_limit, np.where(df['MELT_TIME (Melting Time)'] < lower_limit, lower_limit, df['MELT_TIME (Melting Time)'])))
sns.boxplot(replace_val)

#############################
df['TA_TIME (Turn Around Time)'].mean()
df['TA_TIME (Turn Around Time)'].median()
df['TA_TIME (Turn Around Time)'].mode()
df['TA_TIME (Turn Around Time)'].std()
df['TA_TIME (Turn Around Time)'].var()
df['TA_TIME (Turn Around Time)'].max() - df['TA_TIME (Turn Around Time)'].min()
df['TA_TIME (Turn Around Time)'].skew()
df['TA_TIME (Turn Around Time)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TA_TIME (Turn Around Time)'],bins = 20 )
plt.title("TA_TIME (Turn Around Time)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TA_TIME (Turn Around Time)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['TA_TIME (Turn Around Time)'])
IQR = df['TA_TIME (Turn Around Time)'].quantile(0.75) - df['TA_TIME (Turn Around Time)'].quantile(0.25)
lower_limit = df['TA_TIME (Turn Around Time)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TA_TIME (Turn Around Time)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TA_TIME (Turn Around Time)'] > upper_limit, upper_limit, np.where(df['TA_TIME (Turn Around Time)'] < lower_limit, lower_limit, df['TA_TIME (Turn Around Time)'])))
sns.boxplot(replace_val)

#############################
df['TT_TIME (Total Cycle Time Including Breakdown)'].mean()
df['TT_TIME (Total Cycle Time Including Breakdown)'].median()
df['TT_TIME (Total Cycle Time Including Breakdown)'].mode()
df['TT_TIME (Total Cycle Time Including Breakdown)'].std()
df['TT_TIME (Total Cycle Time Including Breakdown)'].var()
df['TT_TIME (Total Cycle Time Including Breakdown)'].max() - df['TT_TIME (Total Cycle Time Including Breakdown)'].min()
df['TT_TIME (Total Cycle Time Including Breakdown)'].skew()
df['TT_TIME (Total Cycle Time Including Breakdown)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TT_TIME (Total Cycle Time Including Breakdown)'],bins = 20 )
plt.title("TT_TIME (Total Cycle Time Including Breakdown)")
plt.tight_layout()
plt.show()


############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TT_TIME (Total Cycle Time Including Breakdown)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['TT_TIME (Total Cycle Time Including Breakdown)'])
IQR = df['TT_TIME (Total Cycle Time Including Breakdown)'].quantile(0.75) - df['TT_TIME (Total Cycle Time Including Breakdown)'].quantile(0.25)
lower_limit = df['TT_TIME (Total Cycle Time Including Breakdown)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TT_TIME (Total Cycle Time Including Breakdown)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TT_TIME (Total Cycle Time Including Breakdown)'] > upper_limit, upper_limit, np.where(df['TT_TIME (Total Cycle Time Including Breakdown)'] < lower_limit, lower_limit, df['TT_TIME (Total Cycle Time Including Breakdown)'])))
sns.boxplot(replace_val)

#############################
df['E1_CUR (Electrode 1 Current)'].mean()
df['E1_CUR (Electrode 1 Current)'].median()
df['E1_CUR (Electrode 1 Current)'].mode()
df['E1_CUR (Electrode 1 Current)'].std()
df['E1_CUR (Electrode 1 Current)'].var()
df['E1_CUR (Electrode 1 Current)'].max() - df['E1_CUR (Electrode 1 Current)'].min()
df['E1_CUR (Electrode 1 Current)'].skew()
df['E1_CUR (Electrode 1 Current)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['E1_CUR (Electrode 1 Current)'],bins = 20 )
plt.title("E1_CUR (Electrode 1 Current)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['E1_CUR (Electrode 1 Current)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['E1_CUR (Electrode 1 Current)'])
IQR = df['E1_CUR (Electrode 1 Current)'].quantile(0.75) - df['E1_CUR (Electrode 1 Current)'].quantile(0.25)
lower_limit = df['E1_CUR (Electrode 1 Current)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['E1_CUR (Electrode 1 Current)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['E1_CUR (Electrode 1 Current)'] > upper_limit, upper_limit, np.where(df['E1_CUR (Electrode 1 Current)'] < lower_limit, lower_limit, df['E1_CUR (Electrode 1 Current)'])))
sns.boxplot(replace_val)

#############################
df['E2_CUR (Electrode 2 Current)'].mean()
df['E2_CUR (Electrode 2 Current)'].median()
df['E2_CUR (Electrode 2 Current)'].mode()
df['E2_CUR (Electrode 2 Current)'].std()
df['E2_CUR (Electrode 2 Current)'].var()
df['E2_CUR (Electrode 2 Current)'].max() - df['E2_CUR (Electrode 2 Current)'].min()
df['E2_CUR (Electrode 2 Current)'].skew()
df['E2_CUR (Electrode 2 Current)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['E2_CUR (Electrode 2 Current)'],bins = 20 )
plt.title("E2_CUR (Electrode 2 Current)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['E2_CUR (Electrode 2 Current)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df['E2_CUR (Electrode 2 Current)'])
IQR = df['E2_CUR (Electrode 2 Current)'].quantile(0.75) - df['E2_CUR (Electrode 2 Current)'].quantile(0.25)
lower_limit = df['E2_CUR (Electrode 2 Current)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['E2_CUR (Electrode 2 Current)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['E2_CUR (Electrode 2 Current)'] > upper_limit, upper_limit, np.where(df['E2_CUR (Electrode 2 Current)'] < lower_limit, lower_limit, df['E2_CUR (Electrode 2 Current)'])))
sns.boxplot(replace_val)

#############################
df['E3_CUR (Electrode 3 Current)'].mean()
df['E3_CUR (Electrode 3 Current)'].median()
df['E3_CUR (Electrode 3 Current)'].mode()
df['E3_CUR (Electrode 3 Current)'].std()
df['E3_CUR (Electrode 3 Current)'].var()
df['E3_CUR (Electrode 3 Current)'].max() - df['E3_CUR (Electrode 3 Current)'].min()
df['E3_CUR (Electrode 3 Current)'].skew()
df['E3_CUR (Electrode 3 Current)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['E3_CUR (Electrode 3 Current)'],bins = 20 )
plt.title("E3_CUR (Electrode 3 Current)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

missing_values = df.isnull().sum()
print(missing_values)

missing_values = df['E3_CUR (Electrode 3 Current)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['E3_CUR (Electrode 3 Current)'])
IQR = df['E3_CUR (Electrode 3 Current)'].quantile(0.75) - df['E3_CUR (Electrode 3 Current)'].quantile(0.25)
lower_limit = df['E3_CUR (Electrode 3 Current)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['E3_CUR (Electrode 3 Current)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['E3_CUR (Electrode 3 Current)'] > upper_limit, upper_limit, np.where(df['E3_CUR (Electrode 3 Current)'] < lower_limit, lower_limit, df['E3_CUR (Electrode 3 Current)'])))
sns.boxplot(replace_val)

#############################
df['SPOUT (Bottom Refractory Temperature)'].mean()
df['SPOUT (Bottom Refractory Temperature)'].median()
df['SPOUT (Bottom Refractory Temperature)'].mode()
df['SPOUT (Bottom Refractory Temperature)'].std()
df['SPOUT (Bottom Refractory Temperature)'].var()
df['SPOUT (Bottom Refractory Temperature)'].max() - df['SPOUT (Bottom Refractory Temperature)'].min()
df['SPOUT (Bottom Refractory Temperature)'].skew()
df['SPOUT (Bottom Refractory Temperature)'].kurt()


################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['SPOUT (Bottom Refractory Temperature)'],bins = 20 )
plt.title("SPOUT (Bottom Refractory Temperature)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['SPOUT (Bottom Refractory Temperature)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df['SPOUT (Bottom Refractory Temperature)'])
IQR = df['SPOUT (Bottom Refractory Temperature)'].quantile(0.75) - df['SPOUT (Bottom Refractory Temperature)'].quantile(0.25)
lower_limit = df['SPOUT (Bottom Refractory Temperature)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['SPOUT (Bottom Refractory Temperature)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['SPOUT (Bottom Refractory Temperature)'] > upper_limit, upper_limit, np.where(df['SPOUT (Bottom Refractory Temperature)'] < lower_limit, lower_limit, df['SPOUT (Bottom Refractory Temperature)'])))
sns.boxplot(replace_val)


#############################

df['OPEN_C'].mean()
df['OPEN_C'].median()
df['OPEN_C'].mode()
df['OPEN_C'].std()
df['OPEN_C'].var()
df['OPEN_C'].max() - df['OPEN_C'].min()
df['OPEN_C'].skew()
df['OPEN_C'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['OPEN_C'],bins = 20 )
plt.title("OPEN_C")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['OPEN_C'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.OPEN_C)
IQR = df['OPEN_C'].quantile(0.75) - df['OPEN_C'].quantile(0.25)
lower_limit = df['OPEN_C'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['OPEN_C'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['OPEN_C'] > upper_limit, upper_limit, np.where(df['OPEN_C'] < lower_limit, lower_limit, df['OPEN_C'])))
sns.boxplot(replace_val)

#############################

df['TAP_C'].mean()
df['TAP_C'].median()
df['TAP_C'].mode()
df['TAP_C'].std()
df['TAP_C'].var()
df['TAP_C'].max() - df['TAP_C'].min()
df['TAP_C'].skew()
df['TAP_C'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TAP_C'],bins = 20 )
plt.title("TAP_C")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TAP_C'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.TAP_C)
IQR = df['TAP_C'].quantile(0.75) - df['TAP_C'].quantile(0.25)
lower_limit = df['TAP_C'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TAP_C'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TAP_C'] > upper_limit, upper_limit, np.where(df['TAP_C'] < lower_limit, lower_limit, df['TAP_C'])))
sns.boxplot(replace_val)

#############################

df['BUCKET_NO'].mean()
df['BUCKET_NO'].median()
df['BUCKET_NO'].mode()
df['BUCKET_NO'].std()
df['BUCKET_NO'].var()
df['BUCKET_NO'].max() - df['BUCKET_NO'].min()
df['BUCKET_NO'].skew()
df['BUCKET_NO'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['BUCKET_NO'],bins = 20 )
plt.title("BUCKET_NO")
plt.tight_layout()
plt.show()


############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['BUCKET_NO'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER #################

import seaborn as sns

sns.boxplot(df.BUCKET_NO)
IQR = df['BUCKET_NO'].quantile(0.75) - df['BUCKET_NO'].quantile(0.25)
lower_limit = df['BUCKET_NO'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['BUCKET_NO'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['BUCKET_NO'] > upper_limit, upper_limit, np.where(df['BUCKET_NO'] < lower_limit, lower_limit, df['BUCKET_NO'])))
sns.boxplot(replace_val)

#############################

df['STATIC_WT'].mean()
df['STATIC_WT'].median()
df['STATIC_WT'].mode()
df['STATIC_WT'].std()
df['STATIC_WT'].var()
df['STATIC_WT'].max() - df['STATIC_WT'].min()
df['STATIC_WT'].skew()
df['STATIC_WT'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['STATIC_WT'],bins = 20 )
plt.title("STATIC_WT")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['STATIC_WT'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.STATIC_WT)
IQR = df['STATIC_WT'].quantile(0.75) - df['STATIC_WT'].quantile(0.25)
lower_limit = df['STATIC_WT'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['STATIC_WT'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['STATIC_WT'] > upper_limit, upper_limit, np.where(df['STATIC_WT'] < lower_limit, lower_limit, df['STATIC_WT'])))
sns.boxplot(replace_val)
#############################

df['LIME'].mean()
df['LIME'].median()
df['LIME'].mode()
df['LIME'].std()
df['LIME'].var()
df['LIME'].max() - df['LIME'].min()
df['LIME'].skew()
df['LIME'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['LIME'],bins = 20 )
plt.title("LIME")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['LIME'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.LIME)
IQR = df['LIME'].quantile(0.75) - df['LIME'].quantile(0.25)
lower_limit = df['LIME'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['LIME'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['LIME'] > upper_limit, upper_limit, np.where(df['LIME'] < lower_limit, lower_limit, df['LIME'])))
sns.boxplot(replace_val)

#############################

df['O2SIDE1'].mean()
df['O2SIDE1'].median()
df['O2SIDE1'].mode()
df['O2SIDE1'].std()
df['O2SIDE1'].var()
df['O2SIDE1'].max() - df['O2SIDE1'].min()
df['O2SIDE1'].skew()
df['O2SIDE1'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['O2SIDE1'],bins = 20 )
plt.title("O2SIDE1")
plt.tight_layout()
plt.show()


############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['O2SIDE1'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER #################

import seaborn as sns

sns.boxplot(df.O2SIDE1)
IQR = df['O2SIDE1'].quantile(0.75) - df['O2SIDE1'].quantile(0.25)
lower_limit = df['O2SIDE1'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['O2SIDE1'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['O2SIDE1'] > upper_limit, upper_limit, np.where(df['O2SIDE1'] < lower_limit, lower_limit, df['O2SIDE1'])))
sns.boxplot(replace_val)

#############################

df['O2SIDE2'].mean()
df['O2SIDE2'].median()
df['O2SIDE2'].mode()
df['O2SIDE2'].std()
df['O2SIDE2'].var()
df['O2SIDE2'].max() - df['O2SIDE2'].min()
df['O2SIDE2'].skew()
df['O2SIDE2'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['O2SIDE2'],bins = 20 )
plt.title("O2SIDE2")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['O2SIDE2'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER #################

import seaborn as sns

sns.boxplot(df.O2SIDE2)
IQR = df['O2SIDE2'].quantile(0.75) - df['O2SIDE2'].quantile(0.25)
lower_limit = df['O2SIDE2'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['O2SIDE2'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['O2SIDE2'] > upper_limit, upper_limit, np.where(df['O2SIDE2'] < lower_limit, lower_limit, df['O2SIDE2'])))
sns.boxplot(replace_val)

#############################

df['O2SIDE3'].mean()
df['O2SIDE3'].median()
df['O2SIDE3'].mode()
df['O2SIDE3'].std()
df['O2SIDE3'].var()
df['O2SIDE3'].max() - df['O2SIDE3'].min()
df['O2SIDE3'].skew()
df['O2SIDE3'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['O2SIDE3'],bins = 20 )
plt.title("O2SIDE3")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['O2SIDE3'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.O2SIDE3)
IQR = df['O2SIDE3'].quantile(0.75) - df['O2SIDE3'].quantile(0.25)
lower_limit = df['O2SIDE3'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['O2SIDE3'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['O2SIDE3'] > upper_limit, upper_limit, np.where(df['O2SIDE3'] < lower_limit, lower_limit, df['O2SIDE3'])))
sns.boxplot(replace_val)

#############################

df['TAP_DURATION'].mean()
df['TAP_DURATION'].median()
df['TAP_DURATION'].mode()
df['TAP_DURATION'].std()
df['TAP_DURATION'].var()
df['TAP_DURATION'].max() - df['TAP_DURATION'].min()
df['TAP_DURATION'].skew()
df['TAP_DURATION'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['TAP_DURATION'],bins = 20 )
plt.title("TAP_DURATION")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['TAP_DURATION'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.TAP_DURATION)
IQR = df['TAP_DURATION'].quantile(0.75) - df['TAP_DURATION'].quantile(0.25)
lower_limit = df['TAP_DURATION'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['TAP_DURATION'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['TAP_DURATION'] > upper_limit, upper_limit, np.where(df['TAP_DURATION'] < lower_limit, lower_limit, df['TAP_DURATION'])))
sns.boxplot(replace_val)


#############################

df['Pour_Back_Metal'].mean()
df['Pour_Back_Metal'].median()
df['Pour_Back_Metal'].mode()
df['Pour_Back_Metal'].std()
df['Pour_Back_Metal'].var()
df['Pour_Back_Metal'].max() - df['Pour_Back_Metal'].min()
df['Pour_Back_Metal'].skew()
df['Pour_Back_Metal'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Pour_Back_Metal'],bins = 20 )
plt.title("Pour_Back_Metal")
plt.tight_layout()
plt.show()


############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['Pour_Back_Metal'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################
import seaborn as sns

sns.boxplot(df.Pour_Back_Metal)
IQR = df['Pour_Back_Metal'].quantile(0.75) - df['Pour_Back_Metal'].quantile(0.25)
lower_limit = df['Pour_Back_Metal'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Pour_Back_Metal'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Pour_Back_Metal'] > upper_limit, upper_limit, np.where(df['Pour_Back_Metal'] < lower_limit, lower_limit, df['Pour_Back_Metal'])))
sns.boxplot(replace_val)

#############################

df['LM_WT'].mean()
df['LM_WT'].median()
df['LM_WT'].mode()
df['LM_WT'].std()
df['LM_WT'].var()
df['LM_WT'].max() - df['LM_WT'].min()
df['LM_WT'].skew()
df['LM_WT'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['LM_WT'],bins = 20 )
plt.title("LM_WT")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['LM_WT'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER ##################

import seaborn as sns

sns.boxplot(df.LM_WT)
IQR = df['LM_WT'].quantile(0.75) - df['LM_WT'].quantile(0.25)
lower_limit = df['LM_WT'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['LM_WT'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['LM_WT'] > upper_limit, upper_limit, np.where(df['LM_WT'] < lower_limit, lower_limit, df['LM_WT'])))
sns.boxplot(replace_val)

#############################

df['Production (MT)'].mean()
df['Production (MT)'].median()
df['Production (MT)'].mode()
df['Production (MT)'].std()
df['Production (MT)'].var()
df['Production (MT)'].max() - df['Production (MT)'].min()
df['Production (MT)'].skew()
df['Production (MT)'].kurt()

################ GRAPHICAL REPRESENTATION ################
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10,6))
plt.hist(df['Production (MT)'],bins = 20 )
plt.title("Production (MT)")
plt.tight_layout()
plt.show()

############## DUPLICATES ##############

df.drop_duplicates(inplace = True)
print(df)
########### MISSING VALUES ###########

df.dropna(inplace = True)
print(df)

missing_values = df['Production (MT)'].isnull().any()
print("missing values present in:", missing_values)

################# OUTLIER #################

Q1 = df['Production (MT)'].quantile(0.25)
Q3 = df['Production (MT)'].quantile(0.75)
IQR = Q3 - Q1
df = df[(df['Production (MT)'] >= Q1 - 1.5 *IQR) & (df['Production (MT)'] <= Q3 + 1.5 *IQR)]
print(df)

import seaborn as sns

sns.boxplot(df['Production (MT)'])
IQR = df['Production (MT)'].quantile(0.75) - df['Production (MT)'].quantile(0.25)
lower_limit = df['Production (MT)'].quantile(0.25) - (IQR * 1.5)
upper_limit = df['Production (MT)'].quantile(0.75) + (IQR * 1.5)

#Replace the outliers by the maximum and minimum limit
replace_val = pd.DataFrame(np.where(df['Production (MT)'] > upper_limit, upper_limit, np.where(df['Production (MT)'] < lower_limit, lower_limit, df['Production (MT)'])))
sns.boxplot(replace_val)

####################### FORWARD FILL IMPUTATION ########################

df['Production (MT)'].fillna(method='ffill', inplace=True)


######################### DUMMY VARIABLES ###################

dummy_vars = pd.get_dummies(df['SECTION_IC'])
data = pd.concat([df, dummy_vars], axis=1)
print(data)


