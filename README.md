**# DICE-game**

Description:

The game you will design, and implement is popularly known as Craps. The game involves two
dice, each of which can have a value between 1 and 6. Two pseudo-random counters are used
to simulate the roll of the dice. After the “roll” of the dice, the sum of the values in the two
counters will be in the range 2 through 12. 

The rules of the game are as follows:
1. After the first roll of the dice, the player wins if the sum is 7 or 11. The player loses if the sum
is 2, 3, or 12 (i.e. craps). Otherwise, the sum the player obtained on the first roll is referred to as
a point, and he/she must roll the dice again.

3. On the second or subsequent dice roll, the player wins if the sum equals the point, and
he/she loses if the sum is 7. Otherwise, the player must roll again until he/she finally wins or
loses.

Based on the game's rules, we can design the data path. The data path given below includes
an adder, which adds the two counter outputs, a register to store the point, and a comparator to
compare the values stored in the point register and the output from the adder, and a test logic
to determine conditions for a win or lose. 

![figure-19-12-flowchart-for-dice-game-l](https://github.com/panda12384/DICE-game/assets/160568759/4f46a229-c95c-4430-baed-8cb9345e90ca)


the output:


![Screenshot 2024-07-03 131239](https://github.com/panda12384/DICE-game/assets/160568759/2e805a61-3b9c-42bd-9704-cb9deb30d548)
