// SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;

contract Arrays{
    uint[] public arr1=[1,2,3,4]; //Dynamic Arr
    uint[3] public arr2=[1,2,3];  // Fixed Arr

    function extFunc()public {
        arr1.push(5);
        arr1[8]=10;
        arr2[2]=12;
        arr1.pop();
        delete arr1[3]; //[1,2,3,0]
        delete arr2[2];
        
    }

}