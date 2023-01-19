import Result "mo:base/Result";
import Buffer "mo:base/Buffer";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Time "mo:base/Time";

import http "http";


actor {
  public query func http_request(request : http.HttpRequest) : async http.HTTPResponse {
    let response = {
      body = Text.encodeUtf8("Hello world");
      headers = [("Content-Type", "text/html; charset=UTF-8")];
      status_code = 200 : Nat16;
      streaming_strategy = null
      };
      return(response)
    };
}


 /*Here comes the webpage
    http request, which includes the URL, http method, and headers, and produce an HTTP response, consisting of a status, headers, and body. There are two ways to go about that:

Implement the http_request method and all associated logic yourself (in Motoko). This is what will be doing for our webpage canister.*/