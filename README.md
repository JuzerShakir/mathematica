# Mathematica
> Concepts of Mathematics programmed in Ruby.

<div align="center">
  <img src="assets/project_logo.png" />
</div>


<h3>Table Of Contents:</h3>

- [Valid Circle?](#valid-circle?)
- [Factorial](#factorial)<br>
- [Factors](#factors)<br>
- [Fibonacci](#fibonacci)<br>
- [Kaprekar](#kaprekar)<br>
- [Prime & Composite](#prime-and-composite)<br>
- [Ratio](#ratio)<br>

----

## Valid Circle?

### ❗ Problem Details

For given positive integer by user for circumference, `c`, and diameter, `d`, figure out if its a valid or fake circle. For valid circle, output its area. For fake circle, show its correct measurement of `c` or `d` which would then make a valid circle.

#### ⌨️ Example input:

**1st Input**
```
circumference = 31.42
diameter = 10
```

**2nd Input**
```
circumference = 456
diameter = 123
```

#### 💻 Expected output:

**Output for 1st input:**
```
Its a valid circle.
```

**Output for 2nd input:**
```
Its not a valid circle!
Either diameter or circumference measurement is worng.
Calculating ...

Assuming the measurement of circumference is wrong and diameter is right.
Circumference = 386.22.
Assuming the measurement of diameter is wrong and circumference is right.
Diameter = 145.22.
```

### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. First take measurement of cicumference, `c`, convert to float and round to nearest hundreth.
2. Then take measurement of diameter, `d` convert to float and round to nearest hundreth.
3. Check if user has entered a valid input. Exit program if any of the input is `0` or negative numbers.
4. We now initialize `PI` constant which will hold the value of PI and we can get that value from Rubys' Math library, round to the nearest hundreth.
5. For a circle to be valid, the ratio of `c` & `d` should be equal to `PI`. So we calculate its ratio and save the value in a constant `RATIO` rounding answer to nearest hundreth.
6. If `PI == RATIO` then circle is valid and also calculate its area.
7. If `PI != RATIO` then circle isn't valid. So either user has entered wrong meausurement of `c` or `d`.
8. We will calculate correct measurements of both `c` and `d`. If measurement of `c` is correct then we will calculate `d` and if `d` is correct then will calculate `c`. Since we dont know which measurement is right or wrong and since for any `d` and `c` there can be a circle, we will output correct measurements of both `d` and `c`.


The solution of this problem can be found in `valid_circle/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `valid_circle/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----


## Factorial

### ❗ Problem Details
> [What is factorial?](https://www.cuemath.com/numbers/factorial/)

> [Why 0! = 1](https://www.youtube.com/watch?v=X32dce7_D48&ab_channel=EddieWoo)

Should return the factorial for any integer input which is greater than 0.

#### ⌨️ Example input:

```bash
19
```

#### 💻 Expected output:

```bash
121645100408832000
```


### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Check user input, `n`, exit program for negative input.
2. Initiate a variable, `total`, which will hold the factorial of n with value `1` as 0! is equal to 1.
3. Initiate a loop which will initiate from integer `1` to `n` where for each iteration the varaible `total` will be updated with the product of the number its iterating at, `i`, and `total`, where `total` holds the value of previous iteration.


Ruby provides a funtion `Math.gamma` which returns the approximation factorial of n-1 for any n greater than 0. I have also used this function in the program to compare the results with the logic code I created. The answer of this method changes slightly compared to my logic as we give high input numbers as `gamma` is an approximation.


The solution of this problem can be found in `factorial/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `factorial/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----

## Factors

### ❗ Problem Details
> [What are factors?](https://www.britannica.com/science/factor-mathematics)

Should return list of factors in ascending order for any integer input which is greater than equal to 1.

#### ⌨️ Example input:
```bash
100
```

#### 💻 Expected output:
```ruby
[1, 2, 4, 5, 10, 20, 25, 50, 100]
```


### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Check user input, `n`, exit program for negative input.
2. If user input is `1` then end the program with the output `1`.
3. If user input is greater than 1 then initiate an array `factors` which will hold all the numbers that are factors of `n`. We know for any number `n`,  `1` and `n` itself are common factors, hence we initiate array with these 2 factors.
4. Since we know that prime numbers have no factors other than `1` and `n` itself, we check for it with the help of `prime` library and end the program.
5. Now, for composite numbers we initiate a loop which will initiate from integer `2` (since we know `1` is a factor for any `n` where `n > 0`) to `n-1` (with same logic) where for each iteration it will check the following:
    1. Stop the loop if the loop variable `factor` is already in our `factors` array. This means its calculation is already been done and also for the numbers till `n`.<br>
    2. If number isn't in `factors` then we check if `n` is fully divisible by `factor`. If it is fully divisible it will return remainder `0`. And then we append the `factor` in `factors`. After that we would also like to append another factor `second_factor` to `factors` list for which `factor` was fully divisible. To find `second_factor`, we do `n / factor`. Before adding `second_factor` to list we check if its equal to `factor`, because for many integers `n` such as 36 where its square root is 6, it has both `factor` and `second_factor` as equal to 6. If both factors are equal we dont add `second_factor` to `factors` to avoid duplicate factor and this also means that no new factors of `n` will be found after, so we stop the loop. If both factors aren't equal then we append to `factors`.<br>
    3. If `factor` isn't fully divisible then we move on to next iteratiom.<br>
6. Finally, we have our `factors` array of `n`. We show the list to the user by arranging numbers in ascending order with `.sort` method.


The solution of this problem can be found in `factors/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `factors/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----


## Fibonacci

### ❗ Problem Details
> [What is fibonacci?](https://www.mathsisfun.com/numbers/fibonacci-sequence.html)

Should return whether given positive integer by user, `n`, is fibonacci number or not. If its a Fibonacci number then show its index number in the fiobancci series. And if its not a fibonacci number then show the nearest fibonacci numbers both before and after the number `n`.

The program will calculate fibonacci numbers for positive integers only and not negative.

#### ⌨️ Example input:
```bash
23
```

```bash
3
```

#### 💻 Expected output:
**Output for `23`**
```
Number entered is not a fibonacci number.
Its previous nearest fibonacci number is 21.
And next nearest fibonacci number is 34.
```

**Output for `3`**
```
Success! Number you entered is a fibonacci number.
Its index in fibonacci sequence is 4.
```

### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Perform calculation only for integer input where `n` > 0.
2. Initialize an array, `fibonacci_seq`, which will hold the fibonacci numbers and initiate it with values of `0` & `1` so we can calculate next fibonacci numbers.
3. Initiate a loop where in each iteration it performs addition of last 2 fibonacci numbers in `fibonacci_seq` array to find next fiobanacci number. Break the loop if the fibonacci number calculated in this iteration is greater than the input number `n`. However if its less than `n` then append the fibonacci number to `fibonacci_seq`. Break the loop if the fibonacci number is equal to `n`.
4. Will continue iteration (Step 3) until output of each iteration is equal to or greater than `n`.
5. If user entered a fibonacci number then show output of its index in the `fibonacci_seq`. Otherwise show the nearest fibonacci numbers both before and after `n`.


The solution of this problem can be found in `fibonacci/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `fibonacci/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----

## Kaprekar

### ❗ Problem Details
> [What are Kaprekar numbers?](https://www.geeksforgeeks.org/kaprekar-number/)

> [List of Kaprekar Numbers](http://oeis.org/A053816)

Should return whether given positive integer by user, `n`, is kaprekar number or not.

#### ⌨️ Example input:
```bash
9
```

```bash
113
```

#### 💻 Expected output:
**Output for `9`**
```
9 is a Kaprekar number.
```

**Output for `113`**
```
113 is not a Kaprekar number.
```

### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Perform calculation only for integer input where `n` > 0.
2. Take Square of `n` and save in a variable `n_sqr`.
3. Convert `n_sqr` to an array, `arr`.
4. We want our length of elements in `arr` to be an even number so it can be easily grouped into 2 where each group will be of equal lengths. So for odd length we input `0` before the number so it doesn't change its value and we have even length. So for `n_sqr` whose value is `121` whose length is 3 and after adding `0` we have `0121` which is equal to `121`.
5. Count the number of elements in `arr` or in other words count the number of digits of `n_sqr` and save in `arr_count`.
6. Initialize a variable, `total` which will calculate the sum of groups with `0`.
7. Now we calculate the number of elements of `arr` we need to group for addition. We know that we want 2 groups and since `arr_count` is even it will easily divide into 2 and give us the number of members we will have for each group. Store this number in `members` var.
8. Now we slice the list where each group has `members` number of elements of `arr` with the help of `.each_slice` method. Each iteration of this loop will take a `group` (iteration var) of these members, join the elements and add them to out `total` var.
9. If `total == n` then its kaprekar else it isn't.


The solution of this problem can be found in `kaprekar/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `kaprekar/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

-----

## Prime and Composite

### ❗ Problem Details
> [What are Prime numbers?](https://thirdspacelearning.com/blog/what-is-a-prime-number/)

> [What are Composite Numbers?](https://www.mathsisfun.com/definitions/composite-number.html)

Should return whether given positive integer by user, `n`, is prime or composite number.

#### ⌨️ Example input:
```bash
12
```

```bash
7
```

#### 💻 Expected output:
**Output for `12`**
```
12 is a composite number.
```

**Output for `7`**
```
7 is a prime number.
```

### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Perform calculation only for integer input where `n` >= 0.
2. End program for negative integer input.
3. 0 & 1 are 2 numbers are neither prime nor composite so for input `n` with value of `0` or `1`, end program.
4. We also know that any number which is fully divisble by 2 or in other words if its even, then it wont be a prime number but composite. But 2 is the only even number that is prime so for `n == 2` its prime number.
5. Now to check if a odd number is prime or not we need to run loop from `3` to `n-1` because we know `n` is a factor of itself and we dont start from `2` because no odd number is fully divisible by `2`.
6. We can loop through each number from `3` to `n` but what if `n` was a very large odd number? Looping through each number and checking if its fully divisible would be take time and put load on memory. To avoid this we only loop from `3` to `n * 0.5` because we know that factors can be found if there are halfway through only, so looping through all the way to `n` isn't practical.
7. For any `n` greater than `5`, loop from `3` to `n * 0.5`. And for any `n` less than `5` loop from `3` to `n - 1`.
8. Now in each loop we see if `n` is divisible by `factor` (loop var). If it is then its a composite number and we exit the program.
9. It will continue to loop until it finds a factor that fully divides `n`.
10. If it can't find factors then `n` is a Prime number.


The solution of this problem can be found in `prime_composite/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `prime_composite/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----

## Ratio

### ❗ Problem Details

Should return simplest form of rational number for any integers input by user, in the form of `n1/n2` where `n1` can be any integer whereas `n2` can also be any integer except `0`.

#### ⌨️ Example input:
```bash
-91/-73
```

```bash
-21/98
```

#### 💻 Expected output:
**Output for `-91/-73`**
```
The greatest common divisor is 1 of -91/-73.
And it is already in its simplest form.
```

**Output for `-21/98`**
```
The greatest common divisor is 7 of -21/98.
And its simplest form is -3/14.
```

### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Take input from user in a rational form.
2. Check if `n2` is not `0`. If it is then exit the program since dividing any integer by `0` will lead to infinity.
3. To convert the fraction input to simplest form we need to first find `n1` & `n2` Greatest Common Divisor (GCD). Ruby provides `.gcd` method to find out.
4. GCD calculation will raise error for unexpected string input. We will wrap `begin-rescue` to GCD calculation and gently infrom user and exit the program.
5. After finding GCD of `n1/n2`, we will check if `gcd == 1`. If it is, it means that input fraction is already in its simplest form. We give output to the user and stop the program.
5. For `gcd` other than `1`, divide both `n1` & `n2` by `gcd` to find other factor that which multiplied by `gcd` returns `n1` or `n2`.
Store the value in new variable called `simple_n1` & `simple_n2` respectively.
6. Convert `simple_n1` & `simple_n2` variables to rational numbers and store them in new var `simplest_form`.
7. Show results to user.

The solution of this problem can be found in `ratio/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `ratio/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----

![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.mathematica&color=000000&lcolor=000000&style=for-the-badge&logo=Github)


