// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LearningSolidity {

    // This is a comment. It is similar to comments in JavaScript

   /*
      * This is a multi-line comment in solidity
      * It is very similar to comments in JavaScript
   */


   /*
        Scope of local variables is limited to function in which they are defined but State variables can have three types of scopes.
        Public − Public state variables can be accessed internally as well as via messages. For a public state variable, an automatic getter function is generated.
        Internal − Internal state variables can be accessed only internally from the current contract or contract deriving from it without using this.
        Private − Private state variables can be accessed only internally from the current contract they are defined not in the derived contract from it.

   */
   uint private storedData; // State variable

   Another con = new Another();

   string greeting;
   address owner;

   constructor() {
      storedData = 10;   
      greeting = "hello world";
      owner = msg.sender;
   }

  function getResult() public view returns(uint){
    uint a = 3; //Local variable
    uint b = 10;
    uint result = a + b + storedData + con.data();
    return result;
  }

  function getBlockNumber() public view returns(uint){
      //other global varables available
      //msg.sender (address payable) 
      //tx.origin (address payable)
      //tx.gasprice (uint)
      return block.number;//global variable
  }

  function transferFund(address payable receiver, uint amount) payable external {
      address newAddress = receiver;
      receiver.transfer(amount); // OK
      newAddress.transfer(amount); // shows an error

  }

  function sayHello() external view returns(string memory) {
       if(msg.sender == owner)
            return "hello Daddy";
        else
            return greeting;
  }


}

contract Another{
    uint public data = 1;

}
