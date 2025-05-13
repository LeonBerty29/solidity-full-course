// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


/* Inheritance tree

        A
       / \
      B   C
      \  / 
       D 

*/

contract A {
    // This is called an event. You can emit events from your function
    // and they are logged into your transaction log.
    //  In our case, this will be useful for tracing function calss.

    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}

contract B is A {
    function foo() public virtual override {
        A.foo();
        emit Log("B.foo called");
    }

    function bar() public virtual override {
        super.bar();
        emit Log("B.bar called");
    }
}

contract C is A {
    function foo() public virtual override {
        A.foo();
        emit Log("C.foo called");
    }

    function bar() public virtual override {
        super.bar();
        emit Log("C.bar is called");
    }
}

contract D is B, C {
    // Try:
    // - Call D.foo and check the transaction logs.
    //   Although D inherits A, B and C, it only called C and then A.
    // - Call D.bar and check the transaction logs
    //   D called C, then B, and finally A.
    //   Although super was called twice (by B and C) it only called A once.

    function foo() public override(B, C) {
        return super. foo();
    }

    function bar() public override(B, C) {
        return super.bar();
    }
}