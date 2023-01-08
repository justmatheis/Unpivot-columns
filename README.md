# Unpivot columns

You can transform columns into attribute-value pairs, where columns become rows.

![image](https://user-images.githubusercontent.com/70301117/211180188-1b41bc07-f55f-42d5-b8ad-7633b520c26b.png)

For example, given a table like the following, where country rows and date columns create a matrix of values, it's difficult to analyze the data in a scalable way.

![image](https://user-images.githubusercontent.com/70301117/211180196-33255215-3322-401f-8715-8aae9a765f94.png)

Instead, you can transform the table into a table with unpivoted columns, as shown in the following image. In the transformed table, it's easier to use the date as an attribute to filter on.

![image](https://user-images.githubusercontent.com/70301117/211180201-6355479c-dff6-4368-a29f-54dfe41c4ced.png)

The key in this transformation is that you have a set of dates in the table that should all be part of a single column. The respective value for each date and country should be in a different column, effectively creating an attribute-value pair.
