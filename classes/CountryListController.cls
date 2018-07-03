public with sharing class CountryListController{

    public CountryModel cModel{ get; set;}
    
    public CountryListController(){
        this.getRestCountries();
    }
    
    public List<CountryModel.Result> countries{ get; set;}
    
    public void getRestCountries(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://services.groupkt.com/country/get/all');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            this.cModel = (CountryModel)JSON.deserialize(response.getBody(), CountryModel.class);
            this.countries = this.cModel.RestResponse.result;
            System.debug('sunil cModel = '+this.cModel.RestResponse);
            System.debug('Country = '+cModel.RestResponse.result[0].name);
        }
    }
    
    String uname;
    private String mName;
    
    public String getMName(){
        return mName;
    }
    
    public void setMName(String n){
        this.mName = n;
    }

    public String getUsername() {
        return uname;
    }
            
    public PageReference sayHello() {
        String param2 = Apexpages.currentPage().getParameters().get('param2');
        uname = UserInfo.getName() + ' work!!!!! '+mName +' @@@@@@@ '+param2;
        return null;
    }
    
    public PageReference sayHello1(String param1 , String param2) {
        
        uname = UserInfo.getName() + ' work!!!!! '+param1 +' @@@@@@@ '+param2;
        return null;
    }
    
    Integer count = 0;
                        
    public PageReference incrementCounter() {
            count++;
            return null;
    }
                    
    public Integer getCount() {
        return count;
    }

}