# Descriptive statistics

## Samples and populations

When dealing with statistics, we have to deal with an important distinction between *samples* and *populations*. When we talk about a population, we did not necessarily mean the population of a country. In statistics, population refers to a distinct group of, e.g. people, animals or even generally things. This could be all individuals with autism, all woman taller then 1.90m or in the world of inanimate objects the population of android smart phones or all helium atoms in the universe.

There is a very technical distinction in the wording used for both cases. If we talk about a sample, we use *statistics* (for instance, the mean of a sample is a statistical value) and if we look at populations, we talk about *parameters* (the mean of the hole population is a parameter).

In most relevant cases, we are not able analyse a hole population. Typically, we use a smaller *sample* and statistic tools to estimate the parameters of a population. Specifically, we use *descriptive statistics* to describe our samples and apply *inferential statistics* to generalise the findings to the wider population.

## Measures of central tendency

A measure of central tendency gives us an indication of the *typical* value in our data set. We will start with the most prominent example, which you probably already know as the average.

### Mean

We can calculated the *mean* easily by hand. Just summing up (adding) all scores (values) in the sample and divide them by the number of scores. Lets start with a small sample of five scores, 5, 7, 8, 10, 6, so we have:

$$
\frac{5 + 7 + 8 + 10 + 6}{5} = \frac{36}{5} = 7.2
$$

Assume now a slightly larger data set: 3, 11, 7, 20, 20, 20, 13, 12, 6, 6, 4, 9 consisting of 12 scores. They sum up to 131, so the mean becomes:

$$
\frac{131}{12} = 10.917
$$

The mean value is also acsessible directly from *R* with the command (surprise!)  `mean()`.

As a short reminder to the *R* basics, we first create a vector with our data set, called $x$:

```R
x <- c(3, 11, 7, 20, 20, 20, 13, 12, 6, 6, 4, 9) 
```

Then, we calculate the mean of this vector with:

```R
mean(x)
[1] 10.91667
```

Note that we had to create a vector with our data first, we can not directly run

```R
mean(3, 11, 7, 20, 20, 20, 13, 12, 6, 6, 4, 9)
[1] 3
```

This would only calculate the mean of the first entry (the mean of 3 is 3 for sure in our example) and not for all values.

Two additional commands in *R* can be useful if you want to handle and explore your data: `sum()` yields the sum of the value(s) provided to it and `length()` gives us the number of elements in the vector. With that, we could build our own calculation for the mean as:

```R
sum(x)
[1] 131
length(x)
[1] 12
sum(x)/length(x)
[1] 10.91667
```

We recommend to play a little around with the commands and explore how they behave. We can, for example, provide multiple inputs to sum, so

```R
sum(x, 3)
[1] 134
```

gives us the sum of all elements in $x$ and 3 together. Try out what happens, if you provide the same input to `length()`(typing: `length(x, 3)`, what would you expect beforehand?) or what you will yield if you do something 'stupid', e.g. providing text instead of numbers to `sum()`.

### Median

A second option to characterize typical values of your sample is the median. To determine the median, we have to bring the values in ascending order, or to *rank* them. For our first example from above we would get then: 5, 6, 7, 8, 10. The median is now simply the middle score, in the example: 7, very close to the mean of 7.2.

Ranks | Scores
:---: | ---:
1 | 5
2 | 6
3 | 7
4 | 8
5 | 10

In some cases, things become a little more complicated. What did we do, if we have a data set with an even number of scores, as in our second example? The median will then be between the two middle scores:

Ranks | Scores
:---: | ---:
1 | 3
2 | 4
3 | 6
4 | 6
5 | 7
6 | 9
7 | 11
8 | 12
9 | 13
10 | 20
11 | 20
12 | 20

Here between the sixth and seventh position $(9+11)/2 = 10$.

In *R* we can calculate the median with `median()`:

```R
median(x)
[1] 10
