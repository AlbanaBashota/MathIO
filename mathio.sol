pragma solidity ^0.4.0; contract MathIO{
    function add(int x, int y)public constant returns (int z) {
        require((z = x + y) >= x);
    }
    function sub(int x, int y) public constant returns (int z) {
        require((z = x - y) <= x);
    }
    function mul(int x, int y)public constant returns (int z) {
        require(y == 0 || (z = x * y) / y == x);
    }
    function min(int x, int y) public constant returns (int z) {
        return x <= y ? x : y;
    }
    function max(int x, int y) public constant returns (int z) {
        return x >= y ? x : y;
    }
    function fact(int a)public constant returns(int){
        int f = 1;//Gabimi u permirsa ne kete pike
        for(int i = 0 ; i < a ; i++ ){
            f = f *(a-i);
        }
        return f;
    }
   function random() public  view returns (uint8) {
        return uint8(uint256(keccak256(block.timestamp, block.difficulty))%251);
    }
}
