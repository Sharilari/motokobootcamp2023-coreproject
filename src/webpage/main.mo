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
      body = Text.encodeUtf8("empty DAO shell to be modified through votes");
      headers = [("Content-Type", "text/html; charset=UTF-8")];
      status_code = 200 : Nat16;
      streaming_strategy = null
      };
      return(response)
    };
}