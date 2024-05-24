pragma solidity ^0.8.0;

import "forge-std/Test.sol";

import "src/auth/TemporaryRoles.sol";

contract TempMock is TimedOwnableRoles {

}

contract TestTimedRoles is Test {

    TempMock roles;

    function setUp() public {
        roles = new TempMock();
    }

    function testBit(uint256 i) public {
        vm.assume(i < 127);
        uint256 shift = i;
        roles.testSetTimedRole(address(this), uint128(1 << shift), 20000 seconds);

        // assertEq(pos, shift);
    }
}