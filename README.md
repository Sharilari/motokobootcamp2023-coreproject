# 👻 Motoko Bootcamp 2023 

This is my version of the core-project-starter-pack. 

A huge thanks to [Iri](https://twitter.com/iriasviel) (ex-Motoko Bootcamp student | Motoko dev at Finterest) for contributing to the core project. 

We want to build **a DAO that manages a simple website** and grants voting power based on the [Motoko Bootcamp token](../../core_project/PROJECT.MD#-token-faucet). 
We will need the following canisters:
- A backend canister: this canister will be responsible for managing the logic of our DAO: keeping track of members, proposals, votes & taking actions whenever a proposal is passed.
You will have to write the entire logic for this canister yourself!

- A webpage canister: this canister will be responsible for storing a webpage, answering http_request. This webpage will only contains basic text and the text will be updated upon vote of the DAO.
You will have to write the entire code for this canister yourself!

- An interface canister: this canister will be responsible for storing the interface and enable a user-friendly access to our DAO. From this interface users should be able to join the DAO, create proposals and vote on proposals. 
Since this week is focused on Motoko and creating an interface requires other skills and knowledge. We will provide code samples that you'll just have to complete. For the interface we will use a framework called [Svelte](https://svelte.dev/). If you are not familiar with Svelte - no worries! We will explain how the code is organized. 
 
- A ledger canister for the Motoko Bootcamp token: this canister is reponsible for controlling the balance of MB tokens for all users, processing transactions, minting & burning MB tokens.
This canister will be the same for all students. We have already created this canister and you will only have to interface with it. This token is following the ICRC_1 standard.
You can mint as much Motoko Bootcamp token as you need during the week. For more information - read [the dedicated section](../../core_project/PROJECT.MD#-token-faucet)


## Instructions to deploy 
Install the necessary packages.
```
npm install
```
Start your replica
```
dfx start
```
Deploy locally 
```
dfx deploy
```

## Live demo

There are 2 versions of this app deployed on the IC. 

- This example (without the backend completed so any request will fail): https://raisq-jyaaa-aaaaj-qazrq-cai.ic0.app/
- Completed version (with the backend completed - source code not available): https://xmfll-uyaaa-aaaah-ab2ja-cai.ic0.app/ 

## Common (strange) error
- When using Plug wallet you might encounter the following: "Uncaught (in promise) Error: There isn't enough space to open the popup" - if that's the case make sure to reduce your browser windows and give some space for the popup windows to appear.


