## Part 1 - Merging Data

### Procedure:

1.  Loaded up all the train and test variables and labels
2.  Concatenated Feature and Labels
    1.  *X_train* and *X_test* becomes *features*
    2.  *Y_train* and *Y_test* become *data_labels*
3.  Changing the variable names
4.  Column Binding *features* and *data_labels* to create *data*

## Part 2 - Mean and Standard Deviation

### Procedure:

1.  Turned *data* into a subset of itself with only the column that contain *"*mean()*" and "*std()*"*

## Part 3 - Renaming

### Procedure:

1.  Created a *lookup_table* to map all the numerical labels to the associated activity
2.  Left merged *data* and *lookup_table* to have the proper activity labels
3.  Dropped the old numerical activity labels column

## Part 4 - Column Naming

Convention Used:

-    all lowercase

-   different words separated by period

-   no abbreviations

### Procedure:

1.  Replaced all old column names following new convention

## Part 5 - Grouping by Activity

### Procedure:

1.  Group by activity column
2.  Find mean of each variable and store in the dataframe *averages*
