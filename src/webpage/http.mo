import Error "mo:base/Error";
import Result "mo:base/Result";
import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import Time "mo:base/Time";
import T "mo:base/Text";
import O "mo:base/Option";
import A "mo:base/Array";
import Nat8 "mo:base/Nat8";
import Blob "mo:base/Blob";
import CertifiedData "mo:base/CertifiedData";

module Http {

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