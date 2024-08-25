
#### Bit-wise
1. 
-  && logical and || logical or
- two conditions zero or one
- Bit-wise & for a&b for both bits 1 output is one else zero
- Bit-wise | . for any bit 1 o/p is 1 else 0.
- ~ tilde /Bit-wise Complement Operator/ **bit-wise not**: unary operator , operand on right. bit inverter.
	- Bit-wise complement of number n is : -(n+1).  n=5 then BWC = -6
	-   Wait what?  Representation of 5 1 byte 0000 0101 . after which its inversion should be  1111 1010 but its not , output is -6 

> Storage of numbers:
> - Positive numbers: Convert to binary and store.
> - Negative numbers:  Two's complement of Binary representation of positive part and MSB to signify(negative number).**The negative numbers are stored as the two’s complement of the positive counterpart.** MSB(leftmost) and LSB (rightmost) , in binary representation of signed variables MSB is used to represent whether a number is positive or negative. 0 symbolises positive, while 1  negative.

>Two's complement in general is  1's complement/bit-wise not   plus  1 in binary 

![[Pasted image 20240128191529.png]]
- When bitwise not is applied, it inverts all bits,  if it reads the signed bit is enabled. it applies two's complement to it. Since all negative numbers are stored as 2's complement. two's complement of two's complement of number, gives the number. two's complement cancels itself.** So when a negative number is read by it, two complement is taken excluding the MSB or the signed bit.** ex:  1111 1010
  MSB: 1 remaining 111-010. Take 2's complement of the remaining bits which will be 
  000-101 and +1 which will be 000-110.With the pending negative sign. so : output will be -6
- store -6:  Ignore the -ve sign and take 2's comp of the positive part or two's complement for binary representation of 6 => 000 0110(**Msb is excluded from operation**), 1's => 111-1001. And add one ,=> 111-1010.and set msb for negative number: 1111-1010. For printing it , check positive or negative. for unset msb use as it is and for set msb, take 2's complement of bits excluding msb: 000 0110 . 000 0110 and put negative sign


- Bitwise_and(1, number ) and result have LSB set. then it is odd. since odd number have lsb set in binary rep.
- Bitwise_and(1, number ) and result have LSB unset. then it is even. since even number have LSB un-set in binary rep.


2. Binary shit operators:
   - Right shit:  by n times is equivalent of number divided by 2 to the power of number of shifts.
   - 