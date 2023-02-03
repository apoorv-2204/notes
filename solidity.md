### Variables and Literals

<https://www.youtube.com/watch?v=VRK2rLFPU0o>

In Solidity, variables can be of different types, including:

- Integer types: `uint8`, `uint16`, `uint32`, `uint64`, `uint128`, `int8`, `int16`, `int32`, `int64`, `int128`. These are used to represent whole numbers.

- Address: `address`. This is used to represent an Ethereum address, which is a 20-byte value.

- Boolean: `bool`. This is used to represent true or false values.

- Byte arrays: `bytes1` to `bytes32`, `byte`. This is used to store a sequence of bytes.

- String: `string`. This is used to store a sequence of characters.

- Enum: `enum`. This is used to define a set of named values that can be used to represent a specific value.

- Struct: `struct`. This is used to define a new data structure that can contain multiple fields of different types.

- Arrays: `T[]`, `T[n]`. This is used to define a collection of elements of the same type.

- Mapping: `mapping(KeyType => ValueType)`. This is used to create a key-value data structure where the keys are of the type `KeyType` and the values are of the type `ValueType`.

#### Caution Not Impl feautures

- Fixed-point decimal: `fixedMxN`. This is used to represent decimal numbers with a fixed number of digits before and after the decimal point.
 Floating-point decimal: `ufixedMxN`, `fixed<M>x<N>`. represent decimal numbers with a variable number of digits before and after the decimal point.

#### Primitive

1) By default each variable has a default value
2) declaration and no initilasaiton allocates default value;
3) bool => false
4) float => does not exist , since dealing with money with dont want decimals . thats why we have 18 decimals in ethers
5) max and min values of integers

    ``` solidity
        int public minInt=type(int).min;
        // -57896044618658097711785492504343953926634992332820282019728792003956564819967
        uint public maxInt=type(uint).max;
        115792089237316195423570985008687907853269984665640564039457584007913129639935
    ```

6) uint and int by default specifies 256 bits ,32 bytes

##### Enums

Enums => unsigned integer represents of string/static/predefined set of values, (no duplicates)

    - Enums init dont end with semi-colon, curly braces not curved brackets
    - internally represented by whole numbers 0 to .. by order of declaration
    - new assignments transfer only uint value
    - conversion to specfic value require mapping 
    - Using type(NameOfEnum).min and type(NameOfEnum).max you can get the smallest and respectively largest value of the given enum.
    `solidity
        // enum declaration
        contract EnumContract{
            //                                    0,        ,1         , 2
            // enum <enum-name-in-camel-case>{<enum-value>,<enum-value>,<enum-value>, ...}
                enum ModernLangs{elixir, go , rust , zig}
            
            function enumInFunction() public pure returns(ModernLangs){
                ModernLangs m1 = ModernLangs.go;
                return m1; // returns 1 
            }

            function enumDefaultValue() public pure returns(ModernLangs){
                //   declaration and no initialisation , defaults to zer0
                ModernLangs m1 ;
                return m1;  // returns 0
            }
            
            function uintIntegerValue() public pure returns(uint){
                ModernLangs m1;
                // type casting required to convert to zero
                return uint(m1);// 0 returned
            }
        }

        
    `

### Modifiers

`function (<parameter types>) {internal|external} [pure|view|payable] [returns (<return types>)]`

1) Pure view , custom modifiers

### Place dictators

1) memory, storage , calldata

### Staking related

1) move ahead by seconds
2) move ahead by blocks
3) 1 dday =>86,400
4) auto mine hardhat blocks => mine blocks instad of waiting
5) development patterns
6) we are just adding blocks ?? without txns???????? <https://hardhat.org/hardhat-network/docs/reference>
7) Instead of Time dependent rewards , we can block nb based reward system
8) sir you were giving pdf to understand maths of staking /basis points
9) move forward in time dont want to wait
10) / sc is allowed only approved to manipulate stake Amount
11) bcz the balance remain same is due to staking token being same, we can have d/f token also , instead of rt we can have srt
12) time dependent unit tests
13) <https://trufflesuite.com/blog/introducing-ganache-7/#6-fast-forward-time>

### INfura

1) Infrastructure as a Service,Blockchain Nodes as a service,provid an api to connect to this blockchain
2) alchemy and infura

####

Infura
=> web appllication => https
=> iot websocket
<https://polygon-mumbai.infura.io/v3/>
<https://app.infura.io/dashboard/ethereum/>

<https://faucet.polygon.technology/>
why we are not use infura api in wallet
<https://mumbai.polygonscan.com/>
<https://matic-mumbai.chainstacklabs.com>

### CTC

You are correct that IERC20 is an interface in Solidity, which means it is not a contract that can be instantiated on its own.<br>
 However, the IERC20() constructor takes an address of an already deployed ERC-20 contract as its argument. When the IERC20() <br>
 constructor is called, it creates a new instance of the IERC20 interface, and assigns the address of the deployed ERC-20 contract<br>
  to this instance of the interface. This allows the contract to interact with the functions and variables of the deployed ERC-20 <br>
  contract as if it were an instance of the IERC20 interface.<br>

This is a common pattern in solidity to interact with external contracts, when a contract A want to interact with contract B, <br>
contract A will use an interface that contract B should implement, and use the address of contract B to create a new instance of<br>
 the interface, this way contract A can interact with contract B by calling the functions defined in the interface.<br>

 ```solidity
        s_stakingToken=IERC20(stakingToken);
        s_rewardsToken=IERC20(rewardsToken);
```

IPFS
so we are hosting data sowe are downlaoding adata

voice noise
when it will be replicated to other nodes?
why all have Q
so paste bin
CID : content identifier, based on hash, not exactly hash 256
DAG: directed acyclic graphs
DHT: Distributed hash table
so if you upload, you want to use the file, you will put in your  node, but replciation on other nodes only occurs
if other users wan to use it, like LRU on content on network

### DCS

- uniswap v1 v2 v3 , proxy contracts, upgrade contracts
- yes please sir shae addvance conspcets pdf
-sir cant find video where contracct to contract calls
-pusable

## NFT

- two nft cant be of same value

### 721 tracks and transfer funtions used

- IERC721 interface represent ownership & mechanism of nft

- ownerOf(token_id) returns the owner of the nft

- SafeTransferfrom()  
  - transferFroM()
  - owner operator and buyer
  - temp custody of nft to make a sell on your behalf

1) time difference between minting the nft, and being sold
2) someone has to market and sell it , agent
3) like allowance in erc20
4) we allow operator to sell
5) Minting need to be marketed,  
6) three actors owner, spender, and to, amount

- apporve(address, tokenID)

1) owner (digital m )
2) we can apporv a single token to operator
3) approve only one token at time

- setApprovalForAll(address ofoeprator/marketplace, bool) (fir maketplace/operator)
  1) set apporval for all nft

- isApprovedForAll(owner,operator)

-balanceOf

###

- 1 token => 10^18 subtoken
- 1erc20 tokens => 10^18 subunits
- erc721 1TOken =>1 subunit( 1nft =1wei_) odecimals

<https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/v4.8.1/contracts/utils/CountersUpgradeable.sol>
<https://docs.openzeppelin.com/contracts/4.x/wizard>

## NFt marketplace contract

- functions

1) Listing fees:

- recieves commision on sale of nft
- 0.0001
- royalty scheme

2) function createNewNFT() reentracyguard

- nft input from ui
- mint the nft
- on home page show new minted nft

3) create a sale of nft

- sell nft to buyer from marketplace (SC)
-  

4) fetch all nft listed in marketplace

- list nft that can be bought  
- NFTminted - NFTs already sold
- sold item need to t has to relisted

5) fecht nft owned by a address
  
6) fetch all nfts created by a creator

- tools
  - tetsing => chai
  - deployment -> HH + ethers
  - frontend => react
  - blockchain => mumbai testnet
  - task =>.

- ui

- address 0 bevause its has no owner
as in strcut by deafult values
to in constructor?to 0x0
how do we track event from ui??
price to list item on the market?

we can only create static size array in memoery for structs
actually we never discussed how reentrancy guard resolves the situation of reentrancy attack

## ui is not dentralised

1) move ahead by seconds
2) move ahead by blocks
3) 1 dday =>86,400
4) auto mine hardhat blocks => mine blocks instad of waiting
5) development patterns
6) we are just adding blocks ?? without txns???????? <https://hardhat.org/hardhat-network/docs/reference>
7) Instead of Time dependent rewards , we can block nb based reward system
8) sir you were giving pdf to understand maths of staking /basis points
9) move forward in time dont want to wait
10) / sc is allowed only approved to manipulate stake Amount
11) bcz the balance remain same is due to staking token being same, we can have d/f token also , instead of rt we can have srt
12) time dependent unit tests
13) <https://trufflesuite.com/blog/introducing-ganache-7/#6-fast-forward-time>

### INfura

1) Infrastructure as a Service,Blockchain Nodes as a service,provid an api to connect to this blockchain
2) alchemy and infura

####

Infura
=> web appllication => https
=> iot websocket
<https://polygon-mumbai.infura.io/v3/>
<https://app.infura.io/dashboard/ethereum/>

<https://faucet.polygon.technology/>
why we are not use infura api in wallet
<https://mumbai.polygonscan.com/>
<https://matic-mumbai.chainstacklabs.com>

chainid: mumbai testnet

### CTC

You are correct that IERC20 is an interface in Solidity, which means it is not a contract that can be instantiated on its own.<br>
 However, the IERC20() constructor takes an address of an already deployed ERC-20 contract as its argument. When the IERC20() <br>
 constructor is called, it creates a new instance of the IERC20 interface, and assigns the address of the deployed ERC-20 contract<br>
  to this instance of the interface. This allows the contract to interact with the functions and variables of the deployed ERC-20 <br>
  contract as if it were an instance of the IERC20 interface.<br>

This is a common pattern in solidity to interact with external contracts, when a contract A want to interact with contract B, <br>
contract A will use an interface that contract B should implement, and use the address of contract B to create a new instance of<br>
 the interface, this way contract A can interact with contract B by calling the functions defined in the interface.<br>

 ```solidity
        s_stakingToken=IERC20(stakingToken);
        s_rewardsToken=IERC20(rewardsToken);
```

### UI

#### Moralis

Provides module of ease devlopment in web3

- isWeb3Enabled
- Account Management
    - +

### NFT

-unique owner and unique contract and unique nft

- but we can copy past the owner's contract
- a standard for aeip for blockchain wide uniquness
- proof ownership of assets
- kideny .com everuhting price in kidney mint your kidney
- unique ownership of uinque item with unique item to uniqe owner adn unique owner
- nft

### IPfs

- working of ipfs
- ipfs vs http
- location vs content based addressing
- CID : file always have unique id
- pin avoid garbage collection(removed from cache) //for permanent storage
- file coin storage

Two components

- directed acyclic graph
- distributed hash table

---

---

- Merkle Dag: content storage system for ipfs
- each node in IPFS has a unique identifier
- merkle root contains hash of all the contnet of the block
- unique identier is a hash of everything inside that node
- <https://dag.ipfs.tech/>
- git use merkle dags
- divides data into chunks of 32/512 bytse
- each chuck of data has uniqe cid
- like in torrenrt distributed data
- Data will contain numerous chunk of different cided data
- to form the whole data, this different chuncks are gathered
- this chucks are distributed over the peers
- why divison of data?: incresed decentralisation , node loss shard repair.node
- availability
- sha256 used in cid/merkle dag
- mltihash?
- base58btc encoding

---
-DHT: content discovering mechanism
-which peer is hosting the content

- table of key and values
- it is plit across all the peers
- to find which peers are hosting the content
- Dht split accorss all peers in distributed ipfs network
- peers ask dht to find data
br
- type of data in dht
- | Type || purpose | used by |
- provider records || maps a hash CID->peer containing the data a particular cntent and peerr wll ing to provide content based on request | ipfs network to find content
-type: ipns records || ipnskey => filepath(ipfs//.io//) purpose: hash of public key of the node, inter planetary name system, ipns creates pointer to cid's(similar to dns ) ipnskey => ipns record filepath  || used_by: ipns
- peer records || peer id => connected peers condected nodes to node || IPFS

-comparable to http protocol

what is dns

adv and diadv of ipfs :=>

- adv: decentralised no spof
- adv:= faster content delivery/nft market place
- stores multiple copies of data in chuncks so faster acces thhrough closest nodes
- reduced host cost
- diadv: not great adoption as comapared to http
- disadv of p2p systems, security issues
- disadv limited scalability.no incentive

## Nft marketplace

# architecture

# webiste that tells peoople you were scammed , to raise a voice

scam DAo resolver public support to resovlve it
works on just donation only
multi sig wallet
new genre of democaracy
find who did it how they did it publish ariticle and do reverse engineering
social enginerring, gather real info expose them
gather all proof to being them to scrutiny

error in contract of NFt
t public: I
uint256 price
. price;
uint2Sb tokenld - . tokenldi
nr.p..va1UC' priie,
"please submit the asking price in order to coaplete the purchase"
image.pngimage.png

fucntion createMarketSale(address nftCOntract,uint item iD)
uint price = idToMarketItem[itemID].price;
uint tokenid =idToMakrteItem[itemId].tokenID;
