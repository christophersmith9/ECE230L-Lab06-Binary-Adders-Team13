# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

We learned how multi-switch lights are wired up with XOR logic. We learned more about how to represent and add binary numbers, and we implemented a half-adder and a two-bit adder using two full adders. 

## Lab Questions

### 1 - How might you add more than two bits together?
Just keep linking full adders together with Cout connecting to Cin for each addictional bit.

### 2 - What is the importance of the XOR gate in an adder?
It allows both switches to turn on and off the light no matter what the other switch is set to.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
A two bit adder can handle maximum inputs of 3 (2'b11). The output can be 6 (3'b111) at most if you use 3 bits to represent the sum of the 2 bit adder (3 + 3).
If you only use two bits to represent the sum, then 3 (2'b11) will be the maximum result it can handle.
In the two bit represented sum, when you go over, the carry out for the MSB "overflows" and you get an incorrect result.
