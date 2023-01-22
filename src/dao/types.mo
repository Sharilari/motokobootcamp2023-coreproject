import Result "mo:base/Result";
import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import Time "mo:base/Time";
import Text "mo:base/Text";
import O "mo:base/Option";
import Aarray "mo:base/Array";
import Nat8 "mo:base/Nat8";
import Nat "mo:base/Nat";
import Blob "mo:base/Blob";
import Error "mo:base/Error";
import CertifiedData "mo:base/CertifiedData";

module {
    type Proposal = {
        proposer : Principal;
        id : Nat;
        title : Text;
        description : Text;
        votes_yes : VotingPower;
        votes_no : VotingPower;
        state : ProposalState;
        timestamp : Int;
    };
    type VotingPower = { //implement Token Standard? or calls from https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.ic0.app/?id=db3eq-6iaaa-aaaah-abz6a-cai?

    }; 
    type Vote = { #no; #yes 
    };

    type ProposalState = {
        //The Proposal can be voted on
        #open;
        //The Proposal has been rejected
        #rejected;
        //The Proposal has been accepted.
        #accepted;


    };

    public type HeaderField = (Text, Text);

    public type StreamingCallback = query (StreamingCallbackToken) -> async (StreamingCallbackResponse);

    public type StreamingCallbackToken =  {
        content_encoding: Text;
        index: Nat;
        key: Text;
        //sha256: ?Blob;
    };

    public type StreamingCallbackResponse = {
        body  : Blob;
        token : ?StreamingCallbackToken;
    };

  public type StreamingStrategy = {
       #Callback: {
          callback: StreamingCallback;
          token: StreamingCallbackToken;
        };
    };

  public type HttpRequest = {
        body: Blob;
        headers: [HeaderField];
        method: Text;
        url: Text;
    };

  public type HttpResponse = {
    body               : Blob;
    headers            : [HeaderField];
    status_code        : Nat16;
    streaming_strategy : ?StreamingStrategy;
  };
 
}