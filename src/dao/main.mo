import types "./types";

actor {

    public shared({caller}) func submit_proposal(this_payload : Text) : async {#Ok : Proposal; #Err : Text} {
        return #Err("Not implemented yet");
    };

    public shared({caller}) func vote(proposal_id : Int, yes_or_no : Bool) : async {#Ok : (Nat, Nat); #Err : Text} {
        return #Err("Not implemented yet");
    };

    public query func get_proposal(id : Int) : async ?Proposal {
        return null
    };
    
    public query func get_all_proposals() : async [(Int, Proposal)] {
        return []
    };
    
     /* 
     additions for honor
     func modify_parameters (minimumtovote : Int , pass : Int) : async () {

    };
     func quadratic_voting () {

    };
     func createNeuron {

    };
     func dissolveNeuron {

    };
*/}

/*extra: 
Users are able to lock their MB tokens to create neurons by specifying an amount and a dissolve delay.

Neurons can be in 3 different states:

Locked: the neuron is locked with a set dissolve delay and the user needs to switch it to dissolving to access their MB.
Dissolving: the neuron's dissolve delay decreases over time until it reaches 0 and then the neuron is dissolved and the user can access their ICP.
Dissolved: the neuron's dissolve delay is 0 and the user can access their ICP. The dissolve delay can be increased after the neuron is created but can only be decreased over time while the neuron is in dissolving state. Also, neurons can only vote if their dissolve delay is more than 6 months. Additionally, neurons have an age which represents the time passed since it was created or last stopped dissolving.
Voting power of a neuron is counted as followed: AMOUNT MB TOKENS * DISSOLVE DELAY BONUS * AGE BONUS where:

Dissolve delay bonus: The bonuses scale linearly, from 6 months which grants a 1.06x voting power bonus, to 8 years which grants a 2x voting power bonus
Age bonus: the maximum bonus is attained for 4 years and grants a 1.25x bonus, multiplicative with any other bonuses. The bonuses for durations between 0 seconds and 4 years scale linearly between.
Proposals are able to modify the following parameters:

The minimum of MB token necessary to vote (by default - 1).
The amount of voting power necesary for a proposal to pass (by default - 100).
An option to enable quadratic voting, which makes voting power equal to the square root of their MB token balance.

The canister is blackholed.

Here is a few functions that you'll need to implement in your canister

submit_proposal
get_proposal
get_all_proposals
vote
modify_parameters
quadratic_voting
createNeuron
dissolveNeuron 
*/
