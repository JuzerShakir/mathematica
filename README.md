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



Ruby provides a funtion _'Math.gamma'_ which returns the factorial of n-1 for any n greater than 0. I have also used this function in the program to compare the results with the logic code I created.

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

Should return the factorial for any integer input which is greater than 0.

#### ⌨️ Example input:
```bash

```

#### 💻 Expected output:
```bash

```


### ✔️ Solution Details

<h4><img src="https://img.icons8.com/color/12/000000/idea.png"/> Logic</h4>

1. Check user input, `n`, exit program for negative input.
2. Initiate a variable, `total`, which will hold the factorial of n with value `1` as 0! is equal to 1.
3. Initiate a loop which will initiate from integer `1` to `n` where for each iteration the varaible `total` will be updated with the product of the number its iterating at, `i`, and `total`, where `total` holds the value of previous iteration.

Ruby provides a funtion _'Math.gamma'_ which returns the factorial of n-1 for any n greater than 0. I have also used this function in the program to compare the results with the logic code I created.

The solution of this problem can be found in `factorial/program.rb` file.


#### 📋 Local Execution

Clone this repo, navigate to the `factors/` directory and run the following commands in Terminal:

```bash
ruby program.rb
```

This will run the given code file. Enter appropraite input to get desired output.

----



![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.mathematica&color=000000&lcolor=000000&style=for-the-badge&logo=Github)


