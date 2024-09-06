# Misc notes
when learning MySQL and other database things.

## To get length of a string in row:

```@MySQL
select tweet_id from Tweets where length(content) > 15;
```

## Many
DISTINT - removes duplicates
AS - renames return column
ORDER BY - orders in ascending order

```@MySQL
SELECT DISTINCT author_id AS id
FROM Views v
WHERE v.author_id=v.viewer_id
ORDER BY id;
```

## Comparison operators

```@MySQL
SELECT name, population, area
FROM World w
WHERE w.population >= 25000000 OR w.area >= 3000000;
```