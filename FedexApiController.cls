public class FedexApiController {
    
    //This mayhode is used for calling the fedex api and get the response
    @AuraEnabled
    public static String callApi(String senderAddress, String receiverAddress) {
        try {
            AddressWrapper seAddress = (AddressWrapper)JSON.deserialize(senderAddress, AddressWrapper.class);
            AddressWrapper reAddress = (AddressWrapper)JSON.deserialize(receiverAddress, AddressWrapper.class);
            FedexApi__c fedexSetting = FedexApi__c.getOrgDefaults();
            Http h = new Http();
            HttpRequest req = new HttpRequest();
            String url = fedexSetting.Endpoint__c;//'https://wsbeta.fedex.com:443/web-services/rate';	//'https://gateway.fedex.com:443/web-services/rate';
            // String soapXML = '<soapenv:Envelope     xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"     xmlns:v6="http://fedex.com/ws/rate/v6">     <soapenv:Header/>     <soapenv:Body>         <v6:RateRequest>             <v6:WebAuthenticationDetail>                 <v6:UserCredential>                     <v6:Key>iFeocLcXAuQKEsqr</v6:Key>                     <v6:Password>FDQT97p4WA9Yso2udM2lXpbTo</v6:Password>                 </v6:UserCredential>             </v6:WebAuthenticationDetail>             <v6:ClientDetail>                 <v6:AccountNumber>510087488</v6:AccountNumber>                 <v6:MeterNumber>100314786</v6:MeterNumber>             </v6:ClientDetail>             <v6:Version>                 <v6:ServiceId>crs</v6:ServiceId>                 <v6:Major>6</v6:Major>                 <v6:Intermediate>0</v6:Intermediate>                 <v6:Minor>0</v6:Minor>             </v6:Version>             <v6:RequestedShipment>                 <v6:Shipper>                     <v6:AccountNumber>510087488</v6:AccountNumber>                     <v6:Contact>                         <v6:CompanyName></v6:CompanyName>                         <v6:PhoneNumber></v6:PhoneNumber>                     </v6:Contact>                     <v6:Address>                         <v6:StreetLines>Address Line 1</v6:StreetLines>                         <v6:City>Collierville</v6:City>                         <v6:PostalCode>38017</v6:PostalCode>                         <v6:CountryCode>US</v6:CountryCode>                     </v6:Address>                 </v6:Shipper>                 <v6:Recipient>                     <v6:Contact>                         <v6:PersonName></v6:PersonName>                         <v6:CompanyName></v6:CompanyName>                         <v6:PhoneNumber></v6:PhoneNumber>                     </v6:Contact>                     <v6:Address>                         <v6:StreetLines>Address Line 1</v6:StreetLines>                         <v6:City>Richmond</v6:City>                         <v6:StateOrProvinceCode></v6:StateOrProvinceCode>                         <v6:PostalCode>V7C4V4</v6:PostalCode>                         <v6:CountryCode>CA</v6:CountryCode>                     </v6:Address>                 </v6:Recipient>                 <v6:RateRequestTypes>LIST</v6:RateRequestTypes>                 <v6:PackageCount>1</v6:PackageCount>                 <v6:PackageDetail>INDIVIDUAL_PACKAGES</v6:PackageDetail>                 <v6:RequestedPackages>                     <v6:SequenceNumber>1</v6:SequenceNumber>                     <v6:InsuredValue>                         <v6:Currency>USD</v6:Currency>                         <v6:Amount>0</v6:Amount>                     </v6:InsuredValue>                     <v6:Weight>                         <v6:Units>KG</v6:Units>                         <v6:Value>2.0</v6:Value>                     </v6:Weight>                     <v6:Dimensions>                         <v6:Length>22</v6:Length>                         <v6:Width>16</v6:Width>                         <v6:Height>17</v6:Height>                         <v6:Units>CM</v6:Units>                     </v6:Dimensions>                 </v6:RequestedPackages>             </v6:RequestedShipment>         </v6:RateRequest>     </soapenv:Body> </soapenv:Envelope>';
            String soapXML =  '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:v6="http://fedex.com/ws/rate/v6">';
            soapXML += '<soapenv:Header/>';
            soapXML += '<soapenv:Body>';
            soapXML += '<v6:RateRequest>';
            soapXML += '<v6:WebAuthenticationDetail>';
            soapXML += '<v6:UserCredential>';
            soapXML += '<v6:Key>' + fedexSetting.Key__c + '</v6:Key>';
            soapXML += '<v6:Password>' + fedexSetting.Password__c + '</v6:Password>';
            soapXML += '</v6:UserCredential>';
            soapXML += '</v6:WebAuthenticationDetail>';
            soapXML += '<v6:ClientDetail>';
            soapXML += '<v6:AccountNumber>' + fedexSetting.Account_Number__c + '</v6:AccountNumber>';
            soapXML += '<v6:MeterNumber>' + fedexSetting.Meter_Number__c + '</v6:MeterNumber>';
            soapXML += '</v6:ClientDetail>';
            soapXML += '<v6:Version>';
            soapXML += '<v6:ServiceId>crs</v6:ServiceId>';
            soapXML += '<v6:Major>6</v6:Major>';
            soapXML += '<v6:Intermediate>0</v6:Intermediate>';
            soapXML += '<v6:Minor>0</v6:Minor>';
            soapXML += '</v6:Version>';
            soapXML += '<v6:RequestedShipment>';
            soapXML += '<v6:Shipper>';
            soapXML += '<v6:AccountNumber>' + fedexSetting.Account_Number__c + '</v6:AccountNumber>';
            soapXML += '<v6:Contact>';
            soapXML += '<v6:CompanyName></v6:CompanyName>';
            soapXML += '<v6:PhoneNumber></v6:PhoneNumber>';
            soapXML += '</v6:Contact>';
            soapXML += '<v6:Address>';
            soapXML += '<v6:StreetLines></v6:StreetLines>';
            soapXML += '<v6:City>' + seAddress.city + '</v6:City>';
            soapXML += '<v6:PostalCode>' + seAddress.postalCode + '</v6:PostalCode>';
            soapXML += '<v6:CountryCode>' + seAddress.countryCode + '</v6:CountryCode>';
            soapXML += '</v6:Address>';
            soapXML += '</v6:Shipper>';
            soapXML += '<v6:Recipient>';
            soapXML += '<v6:Contact>';
            soapXML += '<v6:PersonName></v6:PersonName>';
            soapXML += '<v6:CompanyName></v6:CompanyName>';
            soapXML += '<v6:PhoneNumber></v6:PhoneNumber>';
            soapXML += '</v6:Contact>';
            soapXML += '<v6:Address>';
            soapXML += '<v6:StreetLines></v6:StreetLines>';
            soapXML += '<v6:City>' + reAddress.city + '</v6:City>';
            soapXML += '<v6:StateOrProvinceCode></v6:StateOrProvinceCode>';
            soapXML += '<v6:PostalCode>' + reAddress.postalCode + '</v6:PostalCode>';
            soapXML += '<v6:CountryCode>' + reAddress.countryCode + '</v6:CountryCode>';
            soapXML += '</v6:Address>';
            soapXML += '</v6:Recipient>';
            soapXML += '<v6:RateRequestTypes>LIST</v6:RateRequestTypes>';
            soapXML += '<v6:PackageCount>1</v6:PackageCount>';
            soapXML += '<v6:PackageDetail>INDIVIDUAL_PACKAGES</v6:PackageDetail>';
            soapXML += '<v6:RequestedPackages>';
            soapXML += '<v6:SequenceNumber>1</v6:SequenceNumber>';
            soapXML += '<v6:InsuredValue>';
            soapXML += '<v6:Currency>USD</v6:Currency>';
            soapXML += '<v6:Amount>0</v6:Amount>';
            soapXML += '</v6:InsuredValue>';
            soapXML += '<v6:Weight>';
            soapXML += '<v6:Units>KG</v6:Units>';
            soapXML += '<v6:Value>2.0</v6:Value>';
            soapXML += '</v6:Weight>';
            soapXML += '<v6:Dimensions>';
            soapXML += '<v6:Length>22</v6:Length>';
            soapXML += '<v6:Width>16</v6:Width>';
            soapXML += '<v6:Height>17</v6:Height>';
            soapXML += '<v6:Units>CM</v6:Units>';
            soapXML += '</v6:Dimensions>';
            soapXML += '</v6:RequestedPackages>';
            soapXML += '</v6:RequestedShipment>';
            soapXML += '</v6:RateRequest>';
            soapXML += '</soapenv:Body>';
            soapXML += '</soapenv:Envelope>';
            req.setBody(soapXML);
            req.setEndpoint(url);
            req.setMethod('POST');
            req.setHeader('Content-length', '1753' );
            req.setHeader('Content-Type', 'text/xml;charset=UTF-8');  
        // req.setHeader('SOAPAction','getRates');
            
            
            HttpResponse res = h.send(req);
            String xml = res.getBody();
            return xml;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        
    }
    
    // the sender and receiver address wrapper
    public Class AddressWrapper {
        @AuraEnabled public String city;
        @AuraEnabled public String postalCode;
        @AuraEnabled public String countryCode;
    }
}