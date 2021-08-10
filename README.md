# OpenWIT

#### Problem statements

Universities everywhere have a financially and ethnically diverse student population which shares the common goal of wanting to succeed in their studies. There exists both mutable and immutable factors that inhibit student achievement that will be measured in this study. Features pertaining to the individual as well as the institute to attempt to gather insights into this matter.

#### Proposed solution
We will survey all University students and store, clean, analyze, and visualize the results. This study will generate a model to predict a student’s GPA, as well as the Institute rating by utilizing machine learning algorithms. General statistical analysis will be performed as well to gather insights on the student population. This will all be anonymous data collection.

#### Novelty
This study is based on a similar dataset from Paulo Cortez at the University of Minho, Portugal.(https://archive.ics.uci.edu/ml/datasets/Student+Performance)  This data was collected on two secondary education Portugese schools and the student’s grades in Math and Portugese classes. Where this study differs is the scope as well as the audience. The set of questions are more targeted towards the individual and focuses less on the family status. Also, it asks about institutional ratings and the students' thoughts on the services provided.

## Usage

#### Installation

<ol>
  <li> Create new Google Form with the questions being asked. </li>
  <li> Copy code from INetResponses.gs to script editor of the form sheet.</li>
  <li> Create new Microsoft SQL 2019 Server</li>
  <li> Use redditTableCreate.sql script to create database needed for this. </li>
  <li> Update code from INetResponses.gs to reflect your server/form settings.</li>
  <li> Run form then run INetResponses.gs to confirm data is sending to database.</li>
  <li> Create new Google Colab Pyspark instance </li>
  <li> Use OpenWIT.ipynb file to create Pyspark instance. </li>
  <li> Update pyodbc information and dataframe information with your data. </li>
</ol>

## Explanation on each file

<b>Database Scripts</b><br>
<ol><li>dbsetup.sql</li>
<li>tableCreate.sql</li>
<li>redditTableCreate.sql</li></ol> 
<p>Are the three files necessary to create the database and tables necessary for this process.</p>

<b>Google JDBC Pipeline Connection Scripts</b><br>
<ol><li>sendData.gs</li>
<li>INetResponses.gs</li></ol>
<p>Are the two files used in Google Sheets script editor in order to send data from the Google Form responses to the MS SQL Database.</p>

## Demo Video
https://www.youtube.com/watch?v=o8LtLGMh0FI
