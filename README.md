**Overview**

This README file provides a brief description of the data analysis code and related files uploaded for the study titled “State-wise Variation and Inequalities in Cesarean Delivery Rates in India: Analysis of the National Family Health Survey-5 (2019-2021) Data.” These files are essential for understanding and replicating the analyses performed in this study.

Getting Started

1. Prerequisites
a.  R and RStudio: Ensure you have R and RStudio installed. You can download them from: [R](https://cran.r-project.org/mirrors.html) , [RStudio](https://posit.co/download/rstudio-desktop/)
b. SPSS: You can download it from: [SPSS](https://www.ibm.com/products/spss-statistics)
c. NFHS-5 Dataset : To conduct the analysis related to cesarean delivery rates, ensure that you download the relevant NFHS-5 data files. Follow these steps:
   i. Visit the [DHS Program website](https://dhsprogram.com/data/dataset/India_Standard-DHS_2020.cfm?flag=1) to download the necessary data files for analysis.
   
   ii. Download the Children’s Recode SPSS file named IAKR7ESV.ZIP
   
   iii. Extract the downloaded .zip file into a directory within your project folder, such as Data_raw.

**File Descriptions**

**_1. Analysis_Code.xlsx_**

_Description:_ This Excel file contains the detailed analysis plan for Figure 1, 3, both the supplementary tables, and their corresponding code snippets used during the data analysis.

_Contents:_
1. Tabs outlining the analysis workflow.
2. Code segments and explanatory notes for data manipulation and statistical calculations.

_Purpose:_ To guide users through the full analysis process, including variable transformations and key statistical operations.

**2. Box1.csv**

_Description:_ A CSV file containing data for Figure 4 Box and Whisker plot used in R code.

_Contents:_

1. Data columns relevant to the state wise wealth quintile breakdown, sector, and cesarean delivery rates. 

_Purpose:_ Used as input for R code.

**3. BoxPlot_RCode.R**

_Description:_ An R script file containing the code for generating box plots illustrating cesarean delivery rates across wealth quintiles and healthcare facilities.

_Contents:_
1. R code to create visual box-and-whisker plots.
2. Custom functions and commands using the ggplot2 package for data visualization.

_Purpose:_ To reproduce the graphical analysis of cesarean delivery distributions.

**4. Table_Syntax.sps**

_Description:_ An SPSS syntax file used for generating tables that summarize cesarean delivery rates and their variations by state and wealth quintiles.

_Contents:_
1. SPSS commands for data aggregation and table formatting.
2. Procedures for calculating relative inequality and confidence intervals.

_Purpose:_ To facilitate the generation of tables directly from the raw dataset for reporting and publication.

**Instructions for Use**

_Data Requirements:_ Ensure access to the NFHS-5 dataset and load it into statistical softwares (R and SPSS).

_R Script Execution:_
1. Open BoxPlot_RCode.R in RStudio or another R environment.
2. Install and load required packages such as ggplot2 if not already installed.
3. Run the script to produce the box plots.

_SPSS Syntax:_
1. Open Table_Syntax.sps in SPSS.
2. Ensure the dataset is loaded, then run the syntax to generate tables summarizing the data.

_Excel Reference:_
1. Use Analysis_Code.xlsx as a supplementary guide for understanding the overall analysis structure and specific code snippets.

**Expected Outputs**

1. Box Plots: Visual representations of CD rate distributions.

2. Tables: Summarized data tables showing CD rates by state and wealth quintile.

3. Session Info: Details of the packages and environment used for the analysis.

**Notes**

1. Ensure that all data paths and file directories are correctly set before running the code.
2. The R script and SPSS syntax are prepared with the RStudio and SPSS version 22.0 (SPSS Inc., Chicago, IL, USA) for Windows, respectively.

**Contact**
For any questions or issues with the code or data files, please contact Priti Patil at priti.rpatil@gmail.com and Priyansh Nathani at priyanshnathani@gmail.com.
