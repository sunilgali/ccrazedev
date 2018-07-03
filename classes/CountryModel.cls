public with sharing class CountryModel {

    public RestResponse RestResponse ;

    public class RestResponse {
        public List<String> messages;
        public List<Result> result;
    }

    public class Result {
        public String name{get;set;}
        public String alpha2_code{get;set;}
        public String alpha3_code{get;set;}
    }

    
    /*public static JSON2Apex parse(String json) {
        return (JSON2Apex) System.JSON.deserialize(json, JSON2Apex.class);
    }*/
}