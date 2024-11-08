*download the desired dataset (IAKR7EFL.SAV) from DFHS website.

[DataSet1] A:\RnD\NFHS\Cesarean\IAKR7EFL.SAV

*calculate weight.
COMPUTE Wt=V005 / 1000000.
VARIABLE LABELS  Wt 'Weight'.
EXECUTE.


WEIGHT BY Wt.

*Summary table state wise
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 M17 DISPLAY=LABEL
  /TABLE V024 BY M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.


*Supplementary Table-1 Raw Data Calcualated from SPSS and Processed in Excel
*State wise Breakup of values
*calculation of % CD rates were done based on this raw data

VARIABLE LEVEL V024 (NOMINAL).

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 V190 M17 DISPLAY=LABEL
  /TABLE V024 BY V190 [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 V190 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.

*Overall India  - Country Values (Irrespective of states).
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V190 M17 DISPLAY=LABEL
  /TABLE BY V190 [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V190 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.


*Supplementary Table-2 Raw Data Calcualated from SPSS and Processed in Excel

*compute variable for deivery place public & private.
COMPUTE delivery_place=M15.
VARIABLE LABELS  delivery_place 'Place of delivery'.
EXECUTE.

* Recode the original variable into the new categories.
RECODE M15
    (10 11 12 13  = 1) 
    (20 21 22 23 24 25 26 27 = 2) 
    (30 31 32 = 3)
    (33 96 = 4) INTO delivery_place.
EXECUTE.

* Optionally, assign value labels to the new variable.
VALUE LABELS delivery_place
    1 'Home'
    2 'Public'
    3 'Private'
    4 'NGO/Other'.
EXECUTE.


* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 V190 delivery_place M17 DISPLAY=LABEL
  /TABLE V024 [C] BY V190 > delivery_place [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 V190 delivery_place M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.

