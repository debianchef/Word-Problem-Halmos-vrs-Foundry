// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Test, console} from "forge-std/Test.sol";
contract Math_Problem is Test {
 //   Maths Problem

//Ser Michael , a maths teacher , proposes a new puzzle 
//with two unknown numbers between  10 and 99
// To the first unknow numner , we add 2 then multiply the sum by 50
//Next , we substract the second number from the product and multiply the difference 
// by 2
// 1. Can we get 2137 as the final result ?
// 2. What are the two unknown numbers if the final result is 3469 ?

// solution 
// let x = first number
// we add 2 = x + 2
// multiply by 50 = 50(x + 2)
// let y = second number
// subtract second number from first 50(x + 2) - y
// multiply difference by 2 = 2[50(x + 2) -y]
// final equation 
//a = 2[50(x + 2) -y]  = 2137 -- Is this true assuming number x and y is 10 <= number and number <= 99 ?
//a = 2[50(x + 2) -y]  = 3469 -- any 2 non negative number that can make this true assuiming 
//  number x and y is 10 <= number and number <= 99 ?  ?

// simplify equation A and B
// a = 100x -2y = 1937
// b  = 100x -2y = 3269 


// 1.Define a function to solve the problem 
function solve  (uint256 x , uint256 y)  public pure   {
//  x and y should be in  range 
// Lower and Upper Bound
vm.assume(10 <= x && x <= 99);
vm.assume(10 <= y && y <= 99);

assert (100*x- y* 2 != 1937 );
assert(100*x- y * 2 != 3268);

}


// forge test --mt test_Answer -vv
function test_Answer(uint256 x , uint256 y) public pure {
 vm.assume(x != 33 && y != 16);
  vm.assume(x != 34 && y != 66);
solve(x, y);
}



// This is pretty fast  :) 
// halmos --function check_Answer  --solver-timeout-assertion 0 
function check_Answer(uint256 x , uint256 y) public pure {
 vm.assume(x != 33 && y != 16);
  vm.assume(x != 34 && y != 66);
solve(x, y);
}



}
