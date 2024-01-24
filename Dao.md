## DAO

###

- decentralised => Running On Blockchain
- Autonomous => smart contracts
- prganisation => group of people sharing same goal

#### Traditional Organization Coporation

- tree heirarichy
- chairmain top of heirarchy
- CEO impl major decision
- Under CEO D1,D2,D3,D4 (director of department)
- under director (m1, m2, m3, m4) (managers)
- under mangager (employee, intern,e2,i2) not involded in decision making

CEO => takes major decision
D1=> takes second to major decison
---

===

- tree heirarichy, decison at top
- changes made by sole party, single person, who has authority
- centralised control
- if voting is allowed, votes are talled internally, outcome is handled manually
- decison making is private

### DAO Flat Heirarichy

- everyone has same power
- same level of heirarichy
- everyone has same voting power
- decision on votes
(but votes can be bought like in politics. - Anonymous voting dao,But i Can buy the person who has the token, but what happens outside the blockchain it can influence)
- SC tally the votes on its own, tamper proof(but who votes can be tampered,)
- delegated voting
- IN DAo anyone can propose a new idea ,and others can vote
- DAo has a vote threshold.
- like polkadot auctions
- Discouraging people from spamming idea easily, we have proposal mechanism
- idea < 300 votes gets ahead with proposal
- idea > 300 , good idea, if it is above 300 and then it can be proposed
- its no xconsenus, but we need consensus, like in multisig wallet if it reaches a certain threshold
- Blockchain/sc based values run the organisation=> transparanetly and on chain
  
---
===
-flat, completely democratic

- voting is mandaorily by members to implement changes(avoid decision by one person)
- completly decentralised
- Compulsory voting, transparent calculating, transparent decison imp(who ensure decison is carried out)
- decison making is public and transparent and verifiable on blockchain
-

### Why we need DAo

- to start an organisation we need funding
- lot of trust in the people you are working with(on internet building a organization,we cant trust people)
- DAO is an application, helps building company in blockchain
- makes sense when huge community members are involved

### exmples

- collective ownership
- charity
- purchase and buy a physicall/digital asset, by voters/members
- Venture & grants => vote for fund allocation for a purpose
- profits are distributed as reward holders
- upgradable contacts
- ICO implemented via dao
- uniswap v3 , v1,v2

### upgradable contract cant remove functionaly but can add new functionality self dsertuct contracts

## Dao Governance

- mechanism of how voting and proposal work

1) delegation based mechanism
    - token holders/votes
    - delegated votes, weight votes
    - delegation gives votes to another account, who can have weight on amount of delgated votes the account have
    - parliamentary structure MP=> people vote for mp
    - mp vote for Prime minister
    - combination of singular voting and delegated voting
1) Automatic transaciton governance
    - quorum of people gives positive upvotes(%tage threshold of upvotes)
    - Threshold based mechanism
3) Multisignature Governance
    - instead of funds/idea/proposal/
    - 50/70 or 80/100 to expand the idea
    - we can have both number and signature
    - we can impl a minimal dao with multi sig wallet
    - we need proposal struct

    - at least a  total min percentage of vote is required
    - 30 upvotes 20 down votes min
    - Min voting percentage and min upvotes for approval?
    - we cand o it for each proposal? no
    - hardcode the minimun requirement

#### we can have combination of impl of this types for dao

#### time lock functionality  Time interval => collect votes. tally votes if certaain time has elapsed

### voting mechanims

most frequently used voting mechanism

#### Token based

- erc20/erc721
- the amount of token that a account holds , represent the voting power
- Higher amount of token and higher capablity of a account in influenceing the outcome
- we can make it more robust by erc721? one account one nft?
- higher token higher power, centralised power,bad decision

### Skin in the game based mechanism

- staking structure,
- People who want to vote will stake tokens
- if bad decison, taken, token can be burned
- disadv: evaluation metrics? how to know decision is good or bad?
- solution: off chain forum(interaction with dao members)
- ex DAO to build chain, or move to another chain, or consensus(metrics can be measured latency bps)
- disav: how to decide good orbad how to slash

### proof of identity

-

-sybil attack 100 d/f account

### Rage quitting mechanism

- sponshershio ti
- sponsor a proposal before voting
- stage1-> approve the proposal => grace period, allow voters to reconsider their
vote people can take back their vtore in grace perios. people get chance to change vote
  - chosen delegates can influence grace period
  - too much time invlolved

all are on chain voting mechanims

### quadratic voting

- repeated voting for a proposal
- uadratic voting allows individuals to vote multiple times on a proposal, but the cost of each additional
- vote increases exponentially. This means that the influence of a person with many votes is still proportional
- to the number of votes they have, but it becomes more expensive for them to increase their influence further.

In the context of Decentralized Autonomous Organizations (DAOs), there are several voting mechanisms that are used to make decisions in a decentralized and transparent manner:

- Token-based voting: This mechanism assigns voting power proportional to the number of tokens held by a member. This is a simple and straightforward mechanism that is used in many DAOs.
- Proof of Stake (PoS) based voting: In this mechanism, voting power is proportional to the amount of funds that a member has staked, or locked up, in the DAO. This provides a skin in the game mechanism and aligns the incentives of members with the success of the DAO.

- Proof of Identity (PoI) based voting: This mechanism requires members to verify their identity before they can participate in voting. This is useful in contexts where a certain level of expertise or accreditation is required for decision-making.

-Quadratic voting: This mechanism allows members to vote multiple times on a proposal, but the cost of each additional vote increases exponentially. This better aligns the voting power of individuals with their preferences and allows for more representative decision-making.

- Delegative voting: This mechanism allows members to delegate their voting power to another member, allowing for more efficient and effective decision-making.

- Liquid democracy: This mechanism combines elements of direct and representative democracy, allowing members to either vote directly or delegate their voting power to a trusted representative.

-Reputation-based voting: In this mechanism, voting power is proportional to the reputation of the member, which is usually determined by factors such as contribution to the DAO, length of membership, and past voting behavior.

-Prediction market-based voting: In this mechanism, members can buy and sell tokens that represent the likelihood of a particular outcome. The outcome with the highest market capitalization is considered the preferred outcome.

-Weighted voting: In this mechanism, voting power is proportional to a combination of factors such as token holdings, reputation, and contributions to the DAO.

-Consensus-based voting: This mechanism requires a certain percentage of members to agree on a proposal before it is approved. The required percentage can be adjusted to reflect the desired level of decentralization and decision-making efficiency.

-Plurality voting: In this mechanism, each member has one vote and the proposal with the most votes wins. This is similar to a traditional "winner takes all" system.

-Proportional voting: In this mechanism, voting power is proportional to the size of the member's stake in the DAO. This aligns the incentives of members with the success of the DAO and helps prevent a small group of members from controlling the decision-making process.



- One potential solution to prevent the issue of a single account owning a large number of tokens and using bots to vote is to implement a token distribution mechanism that spreads tokens out among a larger number of individuals. This can be achieved through a variety of means, such as:

-Token cap: A token cap can be implemented to limit the total number of tokens that an individual can hold. This can help prevent the concentration of tokens in the hands of a few individuals.

-Token distribution through ICO or airdrops: DAOs can distribute tokens through an initial coin offering (ICO) or an airdrop, which can help ensure that tokens are distributed among a larger number of individuals.

-Token burning: Tokens that are not used for a certain period of time can be burned, reducing the overall supply and making it more difficult for a single account to control a large number of tokens.

-Whitelisting: The DAO can whitelist only certain addresses or individuals, limiting the ability of bots or automated scripts to participate in voting.

-Implementing a lock-up period: Members can be required to lock up their tokens for a certain period of time, which would prevent them from quickly transferring their tokens to another account to vote.

<https://compound.finance/>
snapshot
<https://snapshot.org/#/>
off chain voting using ipfs



### upgradable contracts
- https://www.youtube.com/watch?v=JgSj7IiE4jA