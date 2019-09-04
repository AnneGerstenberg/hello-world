* Tutorial 1*

help summarize // comment

*to only run one command, select it (windows: press control D)

*Stata Basics: 
*Syntax: order of the commands
*Semantic: meaning of the commands

*operators: 
*addition
display 7+7 
*substraction
display 7-3
*product
display 3*3
*quotient
display 12/3

*relational operators: assess relation between two different values: 
*greater than
display 9>3 // 1= true ; 0= false
*lower than
display 3<9
*equal  
display 9==9
*greater or equal than
display 9>=3
*lower or equal than
display 3<=9

*logical operators:
*and
display 3<5 & 6>10
*or (true value if one of the statements is true)
display 3<5|6>10 // windows: alt gr + <> key
*not
display !5==7

* 1. open dataset: 
/*are all values clear? are all values correctly opened?
if data-set is not in .dta, use "import"*/
 import delimited "C:\Users\Anne.DESKTOP-NKAIQ8M\OneDrive\Master Maastricht\Introduction methods ans statistics\Tutorial\Sample2.csv"
 // windows: \ ; mac & linux slash to the other side -> /
 
browse //opens data in table

*2. Discuss the type of data set
*unit of observation: individual level data (gender & age), heads of a household, cross-sectional data (because no time dimension, no periods)

*other Types of data:
*timeseries: one unit across different periods of time, e.g. inflation rate, unemployment rate
*panel/longitudinal data: multiple units across different units of time, e.g. unemployment rate across different countries at different points of time

*3. Search for examples of continuous, categorical and binary variables in the data

*discrete variables are numbers that we count, whole/integral (number of children that we count, age)
*continous (income, time, temperature)
*categorical (gender) limited set of options/range of variations, few categories that are mutually exclusive
*ordinal: ranking, categorical variable with possibility to order (economic status, level of education, level of satisfaction)

*4. What is the poverty status (variable cpsc) of observation 27 in your data sample? Discuss with your peers.
display cpsc[27]

*5.Now let us generate a variable using the Stata commands generate. To familiarize with the command, type help generate in the command line and have a look at the Stata help file.
help generate

*e.g. 
*generate age2	 = 			age^2
*name of new var     content of new var

*Generate a new variable that subtracts education (hheduc) from age (hhhage) of the household head. Check the variable and values in the data browser. What is the minimum of your newly generated variable? Discuss the variable with your peers.
generate yedu = hhhage-hheduc //you cannot substract a categorical variable from a numeric variable

browse // red: string variable, blue: categorical variable, black: numerical or discrete variable

clear 
