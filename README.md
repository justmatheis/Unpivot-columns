# Unpivot columns

You can transform columns into attribute-value pairs, where columns become rows.

For example, given a table like the following, where country rows and date columns create a matrix of values, it's difficult to analyze the data in a scalable way.

Instead, you can transform the table into a table with unpivoted columns, as shown in the following image. In the transformed table, it's easier to use the date as an attribute to filter on.

The key in this transformation is that you have a set of dates in the table that should all be part of a single column. The respective value for each date and country should be in a different column, effectively creating an attribute-value pair.
