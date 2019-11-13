APIX Introduction
================

This document introduces APIX token contract and token lockup contract structure.


Index
------------

[1. APIS Mainnet Coin Mining Structure](#apis-mainnet-coin-mining-structure)

[2. APIX Token Issuance & Swap](#apix-token-issuance-&-swap)

[3. APIX Token Management](#apix-token-management)

[4. APIX Lockup Contract Introduction](#apix-lockup-contract-technical-details)

[5. Summary](#summary)


APIS Mainnet Coin Mining Structure
------------

APIS Mainnet has PoS Mining and Masternode system, so APIS Mainnet Coin is constantly mined in the blockchain network. Following is brief mining structure of APIS Mainnet.

**A. Basic parameters**

Parameters | Value
:--------------|:--------------
Initial supply | 952,000,000 **APIS**
Initial block reward | 314 **APIS**
Maximum supply (estimated) | 20,404,785,421 **APIS**
Block time | 8 seconds (3,942,000 blocks p.a.)
Block reward reduction | 11.37%
Block reward reduction period | 1 year (3,942,000 blocks)

**B. Annual APIS mining amount example (2019-2029)**

Year | Total supply (End of the Year) | Annual Issuance
-----|:--------------:|:--------------:
2019 | 10,757,600,000 **APIS** | 1,237,600,000 **APIS**
2020 | 11,854,484,880 **APIS** | 1,096,884,800 **APIS**
2021 | 12,826,653,949 **APIS** | 972,169,069 **APIS**
2022 | 13,688,287,395 **APIS** | 861,633,446 **APIS**
2023 | 14,451,953,118 **APIS** | 763,665,723 **APIS**
2024 | 15,128,790,049 **APIS** | 676,836,930 **APIS**
2025 | 15,728,670,620 **APIS** | 599,880,571 **APIS**
2026 | 16,260,344,771 **APIS** | 531,674,150 **APIS**
2027 | 16,731,567,570 **APIS** | 471,222,800 **APIS**
2028 | 17,149,212,338 **APIS** | 417,644,767 **APIS**
2029 | 17,519,370,895 **APIS** | 370,158,557 **APIS**
2030 | 17,847,442,424 **APIS** | . . .


APIX Token Issuance & Swap
------------

**A. Reason for the APIX token issuance & swap**

As same as above, APIS Mainnet Coin has mining system and constantly mined by PoS miners. However, current APIS ERC-20 token has fixed supply of 952,000,000 and this creates total supply gap between APIS Mainnet coin and APIS ERC-20 token.

This issue can go critical when the gap expands significantly so that we can't provide enough amount of APIS ERC-20 token to the market. Also, there was some worries about price manipulation and low tradability that can be caused by low price on APIS/BTC markets.

So we decided to issue **APIX ERC-20 token** that can solve two major issues and swap all the APIS ERC-20 token into APIX ERC-20 token; which has full total supply, secure lockup system and better tradability.

**B. APIX token**

APIX token has total supply of `204,047,854.21 APIX`, which is 1/100 of maximum supply of APIS Mainnet coin. APIX is an ERC-20 based token without any special features added to its smart contract for maximum security and stability.

**C. APIX token swap process**

Since both tokens have different smart contract and the value ratio of APIS token to APIX token is **100:1**, APIS team will initially issue 204,047,854.21 APIX token and timelock unmined tokens. (108,847,854.21 APIX will be timelocked. Details about timelock is described in next part.)

Afterwise, APIS team will gather APIS ERC-20 tokens on platform and exchanges and provide 100:1 swapped APIX ERC-20 tokens. Exchange users will get their APIS tokens automatically swapped into APIX tokens since we will contact with exchanges to process block swap.

Supporters having APIS Mainnet coins will have no major changes, but they will receive APIX tokens when they use bidirectional swap service on APIS Platform.

APIX Token Management
-----------------------

As described above, we issued **204,047,854.21** APIX ERC-20 token `(0xf51EBf9a26DbC02B13F8B3a9110dac47a4d62D78)` initially, and locked up tokens which are not yet mined in the APIS Mainnet into the APIX lockup contracts.

**APIX lockup contract** can receive APIX ERC-20 tokens, and also can transfer stored APIX ERC-20 tokens to the specific address once the condition is met. The contract contains year, unix time, recepient data to timelock APIX ERC-20 tokens.

Timelock logic is based on the Ethereum smart contract's Block Timestamp feature, which allows contracts to compare the block timestamp and specified time(UNIX time format). 

We deployed 32 APIX lockup contract and transfered(locked) APIX tokens accurately. Each APIX lockup contract holds specific amount of APIX ERC-20 token equivant to APIS Mainnet coin issued for 1 year. Only 32th lockup contract will lock 2,912,341.61268219 APIX permanently, which is equivant to the sum of issuance from 2050 to the end point of mining.


 Year | Contract Address | Locked APIX
 :-----:|------------------|-------------:
 2019 | [`0x57acBE7bf11B8A4584403cC900E230a18A7ab138`](https://etherscan.io/address/0x57acBE7bf11B8A4584403cC900E230a18A7ab138) | 12,376,000.00000000 **APIX**
 2020 | [`0x544FE05CBfaEd05dF496F7300cC9F67f57bb1f4f`](https://etherscan.io/address/0x544FE05CBfaEd05dF496F7300cC9F67f57bb1f4f) | 10,968,848.80000000 **APIX**
 2021 | [`0xDdDdf4a3Af2542C4c26B867e812d69f9873D8A9e`](https://etherscan.io/address/0xDdDdf4a3Af2542C4c26B867e812d69f9873D8A9e) | 9,721,690.69000000 **APIX**
 2022 | [`0xAf1319cd38B96E1618adA27824fe9A97E4830612`](https://etherscan.io/address/0xAf1319cd38B96E1618adA27824fe9A97E4830612) | 8,616,334.46000000 **APIX**
 2023 | [`0xa0d8E1E8fBe52A68adE5c0C639e0e7e640BFb3bd`](https://etherscan.io/address/0xa0d8E1E8fBe52A68adE5c0C639e0e7e640BFb3bd) | 7,636,657.23000000 **APIX**
 2024 | [`0x6B9bee5cF5E9EC599D7320A72371241635cb0413`](https://etherscan.io/address/0x6B9bee5cF5E9EC599D7320A72371241635cb0413) | 6,768,369.30000000 **APIX**
 2025 | [`0xf67C3a64e68C19fdb01736176752C5D1Db7bA645`](https://etherscan.io/address/0xf67C3a64e68C19fdb01736176752C5D1Db7bA645) | 5,998,805.71000000 **APIX**
 2026 | [`0x964781f090ddb05A4447b83F319d6c5Ee6DD822c`](https://etherscan.io/address/0x964781f090ddb05A4447b83F319d6c5Ee6DD822c) | 5,316,741.50000000 **APIX**
 2027 | [`0xaE0Bd1342F532819AE63eB0A735BAe5890c18c9b`](https://etherscan.io/address/0xaE0Bd1342F532819AE63eB0A735BAe5890c18c9b) | 4,712,228.00000000 **APIX**
 2028 | [`0xBd7cB25884091f07314efb0dDF2D26E5B2Bb325c`](https://etherscan.io/address/0xBd7cB25884091f07314efb0dDF2D26E5B2Bb325c) | 4,176,447.67000000 **APIX**
 2029 | [`0xcEbFE0d389522D45755926528cC97542575b3218`](https://etherscan.io/address/0xcEbFE0d389522D45755926528cC97542575b3218) | 3,701,585.57000000 **APIX**
 2030 | [`0x1d05efE0ed7976Aa4EE113B759C0E6fBbBc53A7c`](https://etherscan.io/address/0x1d05efE0ed7976Aa4EE113B759C0E6fBbBc53A7c) | 3,280,715.29000000 **APIX**
 2031 | [`0x99E374998D2CFA620DeC4D54e68605f4F0D24078`](https://etherscan.io/address/0x99E374998D2CFA620DeC4D54e68605f4F0D24078) | 2,907,697.96000000 **APIX**
 2032 | [`0x5E31756f028022D7676CB0232699C836b12d1c34`](https://etherscan.io/address/0x5E31756f028022D7676CB0232699C836b12d1c34) | 2,577,092.71000000 **APIX**
 2033 | [`0x6E046A3dCC4F2fBf1dE13cd8A3C32930580743e5`](https://etherscan.io/address/0x6E046A3dCC4F2fBf1dE13cd8A3C32930580743e5) | 2,284,077.26000000 **APIX**
 2034 | [`0x5659bE77C405eD925E0DF5A63E147038E5B6970E`](https://etherscan.io/address/0x5659bE77C405eD925E0DF5A63E147038E5B6970E) | 2,024,377.68000000 **APIX**
 2035 | [`0xB217854AB17301EA541cE097Db6cD16A9Fe74B9d`](https://etherscan.io/address/0xB217854AB17301EA541cE097Db6cD16A9Fe74B9d) | 1,794,205.94000000 **APIX**
 2036 | [`0xc2A329873B94DD7B877dbE19b61ea96d9605ABeC`](https://etherscan.io/address/0xc2A329873B94DD7B877dbE19b61ea96d9605ABeC) | 1,590,204.72000000 **APIX**
 2037 | [`0x0a0b5D9b10a6C714c3E1Ddf8096B81D2e27ee048`](https://etherscan.io/address/0x0a0b5D9b10a6C714c3E1Ddf8096B81D2e27ee048) | 1,409,398.45000000 **APIX**
 2038 | [`0x82fA550f3F01CE60c29dFD5712fbCadF490b971A`](https://etherscan.io/address/0x82fA550f3F01CE60c29dFD5712fbCadF490b971A) | 1,249,149.84000000 **APIX**
 2039 | [`0x4077b0b68cBd19D5110618c6EC5d63916AcEdD6A`](https://etherscan.io/address/0x4077b0b68cBd19D5110618c6EC5d63916AcEdD6A) | 1,107,121.51000000 **APIX**
 2040 | [`0x38EC9C625CB36E10B72303AB552428Ae43E51eb1`](https://etherscan.io/address/0x38EC9C625CB36E10B72303AB552428Ae43E51eb1) | 981,241.79000000 **APIX**
 2041 | [`0xc1665f7d82f42F49F5b3c5EFD5aACaA42A83C979`](https://etherscan.io/address/0xc1665f7d82f42F49F5b3c5EFD5aACaA42A83C979) | 869,674.60000000 **APIX**
 2042 | [`0xB8c996D057E41FF5081C29C50238E629d825f2ca`](https://etherscan.io/address/0xB8c996D057E41FF5081C29C50238E629d825f2ca) | 770,792.60000000 **APIX**
 2043 | [`0x024a9D2141b689A3aCaADB0F6D185F67cD4b681e`](https://etherscan.io/address/0x024a9D2141b689A3aCaADB0F6D185F67cD4b681e) | 683,153.48000000 **APIX**
 2044 | [`0xdCEFca1b85Fa4bF9948D7EC224136EBc4867948F`](https://etherscan.io/address/0xdCEFca1b85Fa4bF9948D7EC224136EBc4867948F) | 605,478.93000000 **APIX**
 2045 | [`0xAf58DDEe5916E5951Ce7B08c013e356344287ce3`](https://etherscan.io/address/0xAf58DDEe5916E5951Ce7B08c013e356344287ce3) | 536,635.97000000 **APIX**
 2046 | [`0x34c8D69536549Da0460d61E8Be87619D78a03eD8`](https://etherscan.io/address/0x34c8D69536549Da0460d61E8Be87619D78a03eD8) | 475,620.46000000 **APIX**
 2047 | [`0xa1d0Cf883C733Bd7bDfE9BF3AB227C8C54F17e33`](https://etherscan.io/address/0xa1d0Cf883C733Bd7bDfE9BF3AB227C8C54F17e33) | 421,542.42000000 **APIX**
 2048 | [`0x2b539BE2A29cFCadd51f093531c4B259b953DfF3`](https://etherscan.io/address/0x2b539BE2A29cFCadd51f093531c4B259b953DfF3) | 373,613.04000000 **APIX**
 2049 | [`0xce0ab4BE06fd0C65F4eFdd08Cbbd4335E02576A7`](https://etherscan.io/address/0xce0ab4BE06fd0C65F4eFdd08Cbbd4335E02576A7) | 331,133.24000000 **APIX**
2050+ | [`0xfaCaeB1EfEeBB5e1C2906707A61C263c92E72e54`](https://etherscan.io/address/0xfaCaeB1EfEeBB5e1C2906707A61C263c92E72e54) | 2,912,341.61268219 **APIX**

APIX Lockup Contract Technical Details
-----------------------

Following is the source code of APIX lockup contract, which includes contract use sequences and function/method details.

<pre><code>
pragma solidity ^0.5.0;

 /**
 * @dev This contract locks specific amount of APIX tokens for 1 year.
 * In every quarter of the year(4 times in 1 year - 3rd, 6th, 9th, 12th months), contract unlocks 1/4 of annually locked tokens.
 * 
 * Contract use sequence : 
 * 1. Deploy contract.
 * 2. Transfer APIX tokens to the generated contract address.
 * 3. Call initLockedBalance() method.
 * 4. Check getNextRound() and getNextRoundTime() value to find out next unlock information.
 * 5. Call unlock() method when unlockable time has come.
 */

contract Locker {
    IERC20  APIX;
    address receiver;
    uint32 unlockStartYear;
    uint256 unlockStartTime;
    uint256 unlockOffsetTime = 7884000; /* (365*24*60*60)/4 */
    uint256 totalLockedBalance = 0;
    uint256 unlockBalancePerRound = 0;
    uint8 lastRound = 0;

    /**
     * @dev Emits when APIX token is locked.
     *
     * Note that `value` may be zero.
     */
    event APIXLock(uint256 value);
    /**
     * @dev Emitted when APIX token is unlocked and transfer tokens to (`receiver`)
     *
     * Note that `value` may be zero.
     */
    event APIXUnlock(uint256 value, address receiver);

     /**
     * @dev Creates contract.
     * 
     * @param _APIXContractAddress Address of APIX token contract
     * @param _receiver Address which will receive unlocked tokens
     * @param _unlockStartTime Time of the Jan 1st, 00:00:00 of the year that unlocking will be started(GMT, Unix Timestamp)
     * @param _unlockStartYear Year that unlocking will be started
     */
    constructor (address _APIXContractAddress, address _receiver, uint256 _unlockStartTime, uint32 _unlockStartYear) public {
        APIX = IERC20(_APIXContractAddress);
        receiver = _receiver;
        unlockStartTime = _unlockStartTime;
        unlockStartYear = _unlockStartYear;
    }
    
    /**
     * @dev Returns APIX token balance of this Lock contract.
     * @return Current contract's APIX balance (wei)
     */
    function getContractBalance() external view returns (uint256) {
        return APIX.balanceOf(address(this));
    }

    /**
     * @dev Returns amount of total locked tokens.
     * @return Locked amount set at the contract initalization step
     */
    function totalLockedTokens() external view returns (uint256) {
        return totalLockedBalance;
    }

    /**
     * @dev Check next unlock round.
     * @return Next round number
     */
    function getNextRound() external view returns (uint8) {
        return lastRound + 1;
    }

     /**
     * @dev Check next round's unlock time.
     */
    function getNextRoundTime() external view returns (uint256) {
        return _getNextRoundTime();
    }
    
    function _getNextRoundTime() internal view returns (uint256) {
        return unlockStartTime + unlockOffsetTime * (lastRound + 1);
    }

    /**
     * @dev Check next round's APIX unlock am ount
     * @return Unlock amount
     */
    function getNextRoundUnlock() external view returns (uint256) {
        return _getNextRoundUnlock();
    }
    function _getNextRoundUnlock() internal view returns (uint256) {
        uint8 round = lastRound + 1;
        uint256 unlockAmount;
        
        if(round < 4) {
            unlockAmount = unlockBalancePerRound;
        }
        else {
            unlockAmount = APIX.balanceOf(address(this));
        }
        
        return unlockAmount;
    }
    
     /**
     * @dev Returns information of current contract.
     * @return  initLockedToken - Locked APIX token amount
     *          balance - APIX token balance of contract
     *          unlockYear - Contract unlock year
     *          nextRound - Next unlock round number
     *          nextRoundUnlockAt - Next unlock round start time (Unix timestamp)
     *          nextRoundUnlockToken - Unlocking APIX amount of next unlock round
     */
    function getLockInfo() external view returns (uint256 initLockedToken, uint256 balance, uint32 unlockYear, uint8 nextRound, uint256 nextRoundUnlockAt, uint256 nextRoundUnlockToken) {
        initLockedToken = totalLockedBalance;
        balance = APIX.balanceOf(address(this));
        nextRound = lastRound + 1;
        nextRoundUnlockAt = _getNextRoundTime();
        nextRoundUnlockToken = _getNextRoundUnlock();
        unlockYear = unlockStartYear;
    }
    

    /**
     * Sets locked amount of current contract.
     * Must transfer APIX tokens to this contract.
     * 
     * !!** After locked amount is set, it cannot be updated again **!!
     * 
     * @return Locked token amount
     */
    function initLockedBalance() public returns (uint256) {
        require(totalLockedBalance == 0, "Locker: There is no token stored");
        
        totalLockedBalance = APIX.balanceOf(address(this));
        unlockBalancePerRound = totalLockedBalance / 4;
        
        emit APIXLock (totalLockedBalance);
        
        return totalLockedBalance;
    }
    

    /**
     * @dev Unlocks APIX token and transfer it to the receiver.
     * 
     * @param round Round to unlock the token
     * @return TRUE if successed, FALSE in other situations.
     */
    function unlock(uint8 round) public returns (bool) {
        // Locked token must be exist.
        require(totalLockedBalance > 0, "Locker: There is no locked token");
        
        
        // Round should be 1 round bigger than the latest unlocked round.
        require(round == lastRound + 1, "Locker: The round value is incorrect");
        
        
        // Can only be executed for the round 4.
        require(round <= 4, "Locker: The round value has exceeded the executable range");
        
        
        // Cannot execute when the round's unlock time has not yet reached.
        require(block.timestamp >= _getNextRoundTime(), "Locker: It's not time to unlock yet");
        
        
        // Withdrawal
        uint256 amount = _getNextRoundUnlock();
        require(amount > 0, 'Locker: There is no unlockable token');
        require(APIX.transfer(receiver, amount));
        
        emit APIXUnlock(amount, receiver);
        
        // Records executed round.
        lastRound = round;
        return true;
    }
}
</code></pre>


Summary
-----------------------

Current APIS ERC-20 Token has 952,000,000 total supply, which is smaller than the current total supply of APIS Mainnet coin since APIS Mainnet has mining system. Also, the market price of APIS/BTC pair is quite low and it could cause price manipulation on Crypto-to-Crypto exchanges.

To prevent the problems can caused by fixed supply APIS ERC-20 Token, we issued APIX. APIX is a ERC-20 token with total supply of 204,047,854.21 APIX, which is 1/100 of the APIS Mainnet coin maximum supply. It means one APIX token has same value of 100 APIS Mainnet coin(or legacy APIS ERC-20 token).

In cooperation with exchanges, we will provide 100:1 swap for APIS ERC-20 token holders. All the legacy APIS ERC-20 token holders will be able to swap their tokens on APIS Platform and exchanges. APIS Mainnet coin holders won't be affected since we will keep APIS Mainnet coin same, to provide maximum network stability and efficiency.

Using APIX, we expect that there will be two major benefits.

First of all, we can provide almost same amount of APIX tokens as the APIS Mainnet coin. It will solve the possible risks that can be caused by the difference of circulating supply between Mainnet coin and ERC-20 Token. We will timelock unmined APIX tokens using smart contract, which allows us not to circulate APIX token more than the total supply of APIS Mainnet coin.

Secondly, one APIX token will have same value of the 100 APIS Mainnet coin, and this will let users to trade APIX in better tick-to-tick gap and better spread in BTC or ETH market.
