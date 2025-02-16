# **Exploratory Data Analysis (EDA)**

### What is EDA?
Exploratory Data Analysis (EDA) is an approach to analyzing data sets to summarize their main characteristics, often with visual methods. It is a crucial step in the data analysis process, helping to understand the data, uncover patterns, spot anomalies, and test hypotheses.

### Key Steps in EDA
1. **Data Collection**: Gathering data from various sources.
2. **Data Cleaning**: Handling missing values, removing duplicates, and correcting errors.
3. **Data Transformation**: Converting data into a suitable format for analysis.
4. **Data Visualization**: Using plots and charts to visualize data distributions and relationships.
5. **Summary Statistics**: Calculating measures like mean, median, mode, variance, and standard deviation.

### Common Techniques
- **Univariate Analysis**: Examining each variable individually.
  - **Histograms**: Show the distribution of a single variable.
  - **Box Plots**: Highlight the spread and outliers in the data.
- **Bivariate Analysis**: Analyzing the relationship between two variables.
  - **Scatter Plots**: Show correlations between two continuous variables.
  - **Bar Charts**: Compare categorical data.
- **Multivariate Analysis**: Exploring interactions between multiple variables.
  - **Heatmaps**: Visualize correlations between several variables.
  - **Pair Plots**: Display relationships between pairs of variables.

### Tools for EDA
- **Python Libraries**: Pandas, NumPy, Matplotlib, Seaborn.
- **R Packages**: ggplot2, dplyr, tidyr.

### Best Practices
- **Understand the Context**: Know the domain and the data's source.
- **Iterative Process**: EDA is not a one-time task; iterate as you uncover new insights.
- **Document Findings**: Keep a record of your observations and insights.
- **Use Visualizations**: They are powerful tools for understanding and communicating data insights.

### Example Workflow
1. **Load Data**: Import data using Pandas.
   ```python
   import pandas as pd
   data = pd.read_csv('data.csv')
   ```
2. **Inspect Data**: Check the first few rows.
   ```python
   data.head()
   ```
3. **Summary Statistics**: Get a summary of the data.
   ```python
   data.describe()
   ```
4. **Visualize Data**: Create a histogram.
   ```python
   import matplotlib.pyplot as plt
   data['column_name'].hist()
   plt.show()
   ```

EDA is a powerful step in the data analysis process, providing a solid foundation for further analysis and modeling.
In Python, several libraries are commonly used for EDA, including Pandas, NumPy, Matplotlib, and Seaborn. Here's how each of these libraries contributes to EDA:

### Pandas
**Pandas** is a powerful library for data manipulation and analysis. It provides data structures like DataFrames and Series, which are essential for handling and analyzing structured data. With Pandas, you can:
- **Load and clean data**: Import data from various file formats (CSV, Excel, SQL, etc.) and handle missing values.
- **Manipulate data**: Filter, sort, and group data to prepare it for analysis.
- **Summarize data**: Generate descriptive statistics and aggregate data to understand its distribution and central tendencies.

### NumPy
**NumPy** is the fundamental package for numerical computing in Python. It provides support for arrays, matrices, and a wide range of mathematical functions. In the context of EDA, NumPy is used to:
- **Perform numerical operations**: Efficiently handle large datasets and perform element-wise operations.
- **Generate random data**: Create random samples for simulations and statistical analysis.
- **Compute statistical measures**: Calculate mean, median, standard deviation, and other statistical metrics.

### Matplotlib
**Matplotlib** is a versatile plotting library for creating static, animated, and interactive visualizations. It is often used in EDA to:
- **Visualize data distributions**: Create histograms, box plots, and scatter plots to explore the distribution and relationships within the data.
- **Customize plots**: Adjust plot aesthetics, add labels, titles, and legends to make the visualizations more informative.
- **Save and share plots**: Export visualizations in various formats (PNG, PDF, SVG) for reporting and presentation purposes.

### Seaborn
**Seaborn** is built on top of Matplotlib and provides a high-level interface for drawing attractive and informative statistical graphics. It simplifies the process of creating complex visualizations and is particularly useful for:
- **Statistical plots**: Generate heatmaps, pair plots, and violin plots to explore correlations and patterns in the data.
- **Enhanced aesthetics**: Apply themes and color palettes to make the visualizations more appealing and easier to interpret.
- **Integration with Pandas**: Seamlessly work with Pandas DataFrames to create plots directly from the data structures.

### Example Workflow
Here's a simple example of how these libraries can be used together in an EDA workflow:

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# Load data
data = pd.read_csv('data.csv')

# Data cleaning and manipulation
data.dropna(inplace=True)
data['new_column'] = data['existing_column'] * 2

# Summary statistics
print(data.describe())

# Visualizations
plt.figure(figsize=(10, 6))
sns.histplot(data['column_of_interest'], kde=True)
plt.title('Distribution of Column of Interest')
plt.show()
```

In this example, Pandas is used for data loading and cleaning, NumPy for numerical operations, Matplotlib for basic plotting, and Seaborn for enhanced visualizations. Together, these libraries provide a comprehensive toolkit for performing effective EDA.

Do you have a specific dataset or analysis in mind that you'd like to explore further

# Why is EDA important?
Exploratory Data Analysis (EDA) is crucial for several reasons:

### 1. Understanding Data
EDA helps you get a comprehensive understanding of your data. By summarizing the main characteristics, you can identify patterns, trends, and relationships that might not be immediately obvious.

### 2. Identifying Anomalies
Through EDA, you can spot anomalies or outliers in the data. These could be errors or unusual observations that need further investigation.

### 3. Data Cleaning
EDA is an essential step in data cleaning. It helps you identify and handle missing values, duplicates, and errors, ensuring the data is accurate and reliable for analysis.

### 4. Hypothesis Testing
EDA allows you to test initial hypotheses and assumptions about the data. This can guide the direction of further analysis and help refine your research questions.

### 5. Informing Modeling
By understanding the data's structure and relationships, EDA informs the choice of modeling techniques. It helps in selecting appropriate algorithms and features for predictive modeling.

### 6. Visual Communication
EDA often involves visualizations, which are powerful tools for communicating insights. Visual representations like histograms, scatter plots, and box plots make it easier to understand and explain the data.

### 7. Reducing Complexity
EDA simplifies complex data sets, making them more manageable. It breaks down the data into understandable parts, making it easier to draw meaningful conclusions.

### 8. Enhancing Decision-Making
With a clear understanding of the data, you can make more informed decisions. EDA provides the insights needed to guide strategic planning and operational improvements.

### 9. Iterative Process
EDA is iterative, meaning you continuously refine your analysis as you uncover new insights. This iterative nature ensures a thorough examination of the data.

### 10. Building a Solid Foundation
EDA lays the groundwork for all subsequent data analysis steps. It ensures that the data is well-understood and prepared, leading to more accurate and reliable results.


# What is Dataframe?

A DataFrame is a versatile data structure used in data analysis and manipulation. It's like a table with rows and columns, similar to a spreadsheet. Here are some key points:

- **2-Dimensional**: DataFrames organize data into a 2-dimensional table of rows and columns¹(https://www.w3schools.com/python/pandas/pandas_dataframes.asp)²(https://www.databricks.com/glossary/what-are-dataframes).
- **Flexible**: They can handle various data types and are used in many programming languages, including Python (with pandas), R, and Scala²(https://www.databricks.com/glossary/what-are-dataframes).
- **Intuitive**: DataFrames are easy to understand and work with, making them popular for data analysis²(https://www.databricks.com/glossary/what-are-dataframes).

For example, in Python using the pandas library, you can create a DataFrame like this:

```python
import pandas as pd

data = {
    "calories": [420, 380, 390],
    "duration": [50, 40, 45]
}

df = pd.DataFrame(data)
print(df)
```

This will output:

```
   calories  duration
0       420        50
1       380        40
2       390        45
```

Source: Conversation with Copilot, 14/2/2025
(1) Pandas DataFrames - W3Schools. https://www.w3schools.com/python/pandas/pandas_dataframes.asp.
(2) What are DataFrames? - Databricks. https://www.databricks.com/glossary/what-are-dataframes.


# What is NumPy?
NumPy is a powerful Python library used for numerical computing. It provides support for large, multi-dimensional arrays and matrices, along with a collection of mathematical functions to operate on these arrays efficiently¹(https://www.w3schools.com/python/numpy/numpy_intro.asp)²(https://numpy.org/doc/stable/user/whatisnumpy.html).

### Key Features of NumPy
1. **ndarray Object**: The core of NumPy is the `ndarray` object, which is a fast and space-efficient multidimensional array.
2. **Mathematical Functions**: NumPy includes a wide range of mathematical functions for operations such as linear algebra, Fourier transforms, and random number generation²(https://numpy.org/doc/stable/user/whatisnumpy.html).
3. **Broadcasting**: This feature allows NumPy to perform arithmetic operations on arrays of different shapes in a very efficient manner²(https://numpy.org/doc/stable/user/whatisnumpy.html).
4. **Vectorization**: NumPy's operations are optimized to run much faster than traditional Python loops by using vectorized operations²(https://numpy.org/doc/stable/user/whatisnumpy.html).

### Advantages of Using NumPy
- **Performance**: NumPy arrays are more efficient than Python lists because they are stored in contiguous memory locations, which allows for faster access and manipulation¹(https://www.w3schools.com/python/numpy/numpy_intro.asp).
- **Ease of Use**: NumPy provides a high-level syntax that makes it easy to perform complex mathematical operations with minimal code²(https://numpy.org/doc/stable/user/whatisnumpy.html).
- **Integration**: It is compatible with many other scientific and engineering libraries, making it a cornerstone of the scientific Python ecosystem³(https://en.wikipedia.org/wiki/NumPy).

### Common Uses of NumPy
- **Data Analysis**: NumPy is widely used in data science for data manipulation and analysis.
- **Scientific Computing**: It is essential for tasks that require high-performance numerical computations.
- **Machine Learning**: Many machine learning algorithms rely on NumPy for data preprocessing and numerical operations.


# Methods of data collection 
- Surveys
- Observation
- Transactional Data
- Web Scraping
- Sensor Data
