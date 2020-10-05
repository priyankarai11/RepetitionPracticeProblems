            Repetition Practice Problems with the loop          Priyanka M
            -------------------------------------------         Mail:priyankakumbra@gmail.com



1)Write a program that takes a command-line argument n and prints a table of the  powers of 2 that are less than or equal to 2^n.
  Answer:
  ------
touch po.sh
nano po.sh
************
#!/bin/bash
echo "Enter n"
read n
nn=$(($n-1))
echo "Powers of 2 are:"
p=1;
for i in  $(seq $nn):
do
        if [[ $n -eq 0 ]]
        then
                $p=1;
        else
                p=$(($p*2));

echo $p
fi
done
******************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./po.sh
Enter n
6
Powers of 2 are:
2
4
8
16
32
64

2)Write a program that takes a command-line argument n and prints the nth harmonic number.
Answer:
------
touch mo.sh
nano mo.sh
***********
#!/bin/bash
echo "Enter the number of terms : "
read nn
n=$(($nn+1))
for i in  $(seq $n)
do
        if [[ $i -lt $nn ]]
        then
        echo "1/$i  +" | tr '\n' '\t'
        fi
        if [[ $i -eq  $nn ]]
        then
        echo "1/$i"
        fi
done
************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./mo.sh
Enter the number of terms :
5
1/1  +  1/2  +  1/3  +  1/4  +  1/5

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./mo.sh
Enter the number of terms :
10
1/1  +  1/2  +  1/3  +  1/4  +  1/5  +  1/6  +  1/7  +  1/8  +  1/9  +  1/10

3)Write a program that takes a input and determines if the number is a prime.
Answer:
------
touch o.sh
nano o.sh
***************
echo "enter number"
read num
function prime
{
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
}
r=`prime $number`
echo "$r"
*******************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./o.sh
enter number
4
4 is not a prime number.

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./o.sh
enter number
7
7 is a prime number.

4)Extend the program to take a range of number as input and output the Prime Numbers in that range.
Answer:
------
touch prime.sh
nano prime.sh
*************
echo 'Enter number till where you want prime number to display say range'
read x
n=2
while [ $n -le $x ]
do
i=2
count=1

while [ $i -lt $n ]
do
if [ `expr $n % $i` -eq 0 ]
then
count=0
break
fi
i=`expr $i + 1`
done

if [ $count -eq 1 ]
then
echo "$n is Prime"
fi

n=`expr $n + 1`
done
***********
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./prime.sh
Enter number till where you want prime number to display say range
10
2 is Prime
3 is Prime
5 is Prime
7 is Prime

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./prime.sh
Enter number till where you want prime number to display say range
20
2 is Prime
3 is Prime
5 is Prime
7 is Prime
11 is Prime
13 is Prime
17 is Prime
19 is Prime

5)Write a program that computes a factorial of a number taken as input.
  5 Factorial – 5! = 1 * 2 * 3 * 4 * 5
  Answer:
  ------
touch p.sh
nano p.sh
******************
echo "Enter a number"
read num

fact=1

while [ $num -gt 1 ]
do
  fact=$((fact * num)) 
  num=$((num - 1))      
done

echo $fact
******************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./p.sh
Enter a number
5
120

6)Write a program to compute Factors of a number N using prime factorization method.
Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
O/P -> Print the prime factors of number N.
Answer:
-------
touch pl.sh
nano pl.sh
************
echo "enter number"
read num
function prime
{
for((i=2; i*i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
}
r=`prime $number`
echo "$r"
*************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./pl.sh
enter number
199
199 is a prime number.

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./pl.sh
enter number
200
200 is not a prime number.

---------------------------------------------------------------------------------------------------
                                Repetition Practice Problems-2
                                ----------------------------

1)Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached..
Answer:
-----
touch po.sh
nano po.sh
*************
#!/bin/bash
echo "Enter n"
read n
nn=$(($n-1));
echo "Powers of 2 are:"
p=1;
for i in $(seq $nn) 
do
        if [[ $n -lt 9 ]]
        then
                if [[ $n -eq 0 ]]
                then
                        $p=1;
                else
                        p=$(($p*2));

                echo $p
                fi
        fi
done
echo "Display power of 2 limits to only 256 "
***********************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./po.sh
Enter n
8
Powers of 2 are:
2
4
8
16
32
64
128
256
Display power of 2 limits to only 256

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./po.sh
Enter n
9
Powers of 2 are:
Display power of 2 limits to only 256

2)Find the Magic Number
a. Ask the user to think of a number n between 1 to 100
b. Then check with the user if the number is less then n/2 or greater
c. Repeat till the Magic Number is reached..
Answer:
------
touch magic.sh
nano magic.sh
**************
echo "Think of a number it must be lie between 1 to 100"
read n
mid=50;
if [[ $n -gt 0 && $n -lt 101 ]]
then
        if [ $n -lt $mid ]
        then
                echo " $n comes in the range of 1-49"
                for i in $(seq 50)
                do
                        if [ $i -eq $n ]
                        then
                                echo " Magic Number is reached "
                        fi
                done

        elif [[ $n -gt $mid ]]
        then
                echo " $n comes in the range of 51-100"
                for i in $(seq 100)
                do
                        if [ $i -eq $n ]
                        then
                                echo " Magic Number is reached"
                        fi
                done
        elif [ $n -eq $mid ]
        then
                echo "$n exact equal to 50"
                for i in $(seq 100)
                do
                        if [ $i -eq $n ]
                        then
                                echo " Magic Number is reached"
                        fi
                done
        else
                echo "Beyond number"
        fi
else
        echo " Exceeds 1 to 100 range "
fi

**************************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./magic.sh
Think of a number it must be lie between 1 to 100
24
 24 comes in the range of 1-49
 Magic Number is reached

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./magic.sh
Think of a number it must be lie between 1 to 100
67
 67 comes in the range of 51-100
 Magic Number is reached

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./magic.sh
Think of a number it must be lie between 1 to 100
50
50 exact equal to 50
Magic Number is reached


3)Extend the Flip Coin problem till either Heads or Tails wins 11 times.
Answer:
------
touch flip.sh
nano flip.sh
***********
#!/bin/bash
echo "Enter number"
read n
head=1;
tail=1;
for i in $(seq 17)
do
arr=$((RANDOM%2))
if [[ $n -eq $arr ]]
then
        head=$(($head+1))
        if [[ $head -eq 11 ]]
        then
                echo " head wins $head times"
		break
                else 
                continue
        fi
else
        tail=$(($tail+1))
        if [[ $tail -eq 11 ]]
        then
                echo " tail wins $tail times"
		break
                else 
                continue
        fi
fi
done
echo "head=$head"
echo "tail=$tail"

**************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./flip.sh
Enter number
1
head wins 11 times
head=11
tail=9

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./flip.sh
Enter number
0
tail wins 11 times
head=8
tail=11

4)Write a Program where a gambler starts with Rs 100 and places Re 1 bet until he/she goes broke i.e. no more money to gamble or reaches the goal of Rs 200. Keeps track of number of times won and number of bet made.
Answer:
------
touch bet.sh
nano bet.sh
***************
#!/bin/bash
amt=100;
for i in $(seq 500)
do
arr=$((RANDOM%2))
if [[ 0 -eq $arr ]]
then
        amt=$(($amt+10))
        if [[ $amt -eq 200 ]]
        then
                echo  "Bet won $amt times"
                break;
        else
                continue
        fi
else
        amt=$(($amt-10))
        continue
fi
done
************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./bet.sh
Bet won 200 times

----------------------------------------------------------------------------------------------
                                Repetition Practice Problems-2
                                ----------------------------

1)Help user find degF or degC based on their Conversion Selection. Use Case Statement and ensure that the inputs are within the Freezing Point (0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
a. degF = (degC * 9/5) + 32
b. degC = (degF – 32) * 5/9
Answer:
------
touch fr.sh
nano fr.sh
***********
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice
v=1.8;
y=0.555555;
z=32;
if [ $choice -eq 1 ]
then
echo -n "Enter temperature (C) : "
read tc
tf=$(awk 'BEGIN {print '$v' * '$tc'}')
t=$(awk 'BEGIN {print '$tf' + '$z'}')
echo "$tc C = $t F"
elif [ $choice -eq 2 ]
then
echo -n "Enter temperature (F) : "
read tf
c=$(awk 'BEGIN {print '$tf' - '$z'}')
tc=$(awk 'BEGIN {print '$y' * '$c'}')
echo "$tf F = $tc C"
else
echo "Please select 1 or 2 only"
fi
**************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fr.sh
1. Convert Celsius temperature into Fahrenheit
2. Convert Fahrenheit temperatures into Celsius
Select your choice (1-2) : 2
Enter temperature (F) : 80
80 F= 26.6666 C

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fr.sh
1. Convert Celsius temperature into Fahrenheit
2. Convert Fahrenheit temperatures into Celsius
Select your choice (1-2) : 1
Enter temperature (C) : 34
34 C = 93.2 F

2)Write a function to check if the two numbers are Palindromes.
Answer:
------
touch y.sh
nano y.sh
*************
echo "Enter the number"
read n
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
*********************
output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./y.sh
Enter the number
121
121
Number is palindrome

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./y.sh
Enter the number
234
432
Number is not palindrome

3)Take a number from user and check if the number is a Prime then show that its palindrome is also prime
a. Write function check if number is Prime
b. Write function to get the Palindrome.
c. Check if the Palindrome number is also prime
Answer:
------
echo "Enter number"
read n
function prime
{
for((i=2; i<=n/2; i++))
do                                                                      
  if [ $((n%i)) -eq 0 ]
  then
    echo "$n is not a prime number."
    exit
  fi
done
echo "$n is a prime number."
}
r=`prime $number`
echo "$r"
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
        echo "Number is not palindrome"
fi

Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./mn.sh
Enter number
121
121 is not a prime number.
121
Number is palindrome

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./mn.sh
Enter number
313
313 is a prime number.
313
Number is palindrome
-----------------------------------------------END--------------------------------
