# Mathematica
> Concepts of Mathematics programmed in Ruby.

<div align="center">
  <img src="assets/project_logo.png" />
</div>


<h3>Table Of Contents:</h3>

- [Factorial](#factorial)<br>
- [Factors](#factors)<br>
- [Fibonacci](#fibonacci)<br>
- [Kaprekar](#kaprekar)<br>
- [Prime](#prime)<br>
- [Ratio](#ratio)<br>

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
> [What is factors?](https://www.britannica.com/science/factor-mathematics)

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

Should return whether given positive integer by user, `n`, is fibonacci number or not. If its a Fibonacci number then show its sequence in the fiobancci series. And if its not a fibonacci number then show the nearest fibonacci numbers both before and after the number `n`.

The program will calculate fibonacci numbers for positive integers only and not negative.

#### ⌨️ Example input:
```bash
23
```

```bash
3
```

#### 💻 Expected output:
```bash
Number entered is not a fibonacci number.
Its previous nearest fibonacci number is 21.
And next nearest fibonacci number is 34.
```

```bash
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


![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.mathematica&color=000000&lcolor=000000&style=for-the-badge&logo=Github)


