[DataSet1] A:\RnD\NFHS\Cesarean\IAIR7AFL.SAV


*Summary table state wise
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 M17 DISPLAY=LABEL
  /TABLE V024 BY M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.


*Supplementary Table-1 Raw Data Calcualated from SPSS and Processed in Excel
*State wise Breakup of values
*calculation of % CD rates were done based on this raw data

WEIGHT BY Wt.

* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 V190 M17 DISPLAY=LABEL
  /TABLE V024 BY V190 [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 V190 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.
*Overall India  - Country Values (Irrespective of states).
WEIGHT BY Wt.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V190 M17 DISPLAY=LABEL
  /TABLE BY V190 [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V190 M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.


*Supplementary Table-2 Raw Data Calcualated from SPSS and Processed in Excel

WEIGHT BY Wt.
* Custom Tables.
CTABLES
  /VLABELS VARIABLES=V024 V190 delivery_place M17 DISPLAY=LABEL
  /TABLE V024 [C] BY V190 > delivery_place [C] > M17 [C][COUNT F40.0]
  /CATEGORIES VARIABLES=V024 V190 delivery_place M17 ORDER=A KEY=VALUE EMPTY=INCLUDE.




