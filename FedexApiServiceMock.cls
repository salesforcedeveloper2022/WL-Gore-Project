global class FedexApiServiceMock implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'text/xml');
        res.setBody('<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"><SOAP-ENV:Header/><SOAP-ENV:Body><RateReply xmlns="http://fedex.com/ws/rate/v6"><HighestSeverity>NOTE</HighestSeverity><Notifications><Severity>NOTE</Severity><Source>crs</Source><Code>886</Code><Message>Money Back Guarantee is not eligible for this pick up/delivery postal/zip code. FDXG</Message><LocalizedMessage>Money Back Guarantee is not eligible for this pick up/delivery postal/zip code. FDXG</LocalizedMessage><MessageParameters><Id>OPERATING_COMPANY</Id><Value>FDXG</Value></MessageParameters></Notifications><Notifications><Severity>NOTE</Severity><Source>crs</Source><Code>819</Code><Message>The origin state/province code has been changed.  </Message><LocalizedMessage>The origin state/province code has been changed.  </LocalizedMessage></Notifications><Notifications><Severity>NOTE</Severity><Source>crs</Source><Code>820</Code><Message>The destination state/province code has been changed.  </Message><LocalizedMessage>The destination state/province code has been changed.  </LocalizedMessage></Notifications><Version><ServiceId>crs</ServiceId><Major>6</Major><Intermediate>0</Intermediate><Minor>0</Minor></Version><RateReplyDetails><ServiceType>INTERNATIONAL_PRIORITY</ServiceType><PackagingType>YOUR_PACKAGING</PackagingType><DestinationAirportId>YVR</DestinationAirportId><IneligibleForMoneyBackGuarantee>false</IneligibleForMoneyBackGuarantee><OriginServiceArea>A2</OriginServiceArea><DestinationServiceArea>AM</DestinationServiceArea><SignatureOption>SERVICE_DEFAULT</SignatureOption><ActualRateType>PAYOR_ACCOUNT</ActualRateType><RatedShipmentDetails><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><ShipmentRateDetail><RateType>PAYOR_ACCOUNT</RateType><RateScale>US001OFA_01_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>142.98</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>142.98</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>8.2</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>7.2</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><ShipmentRateDetail><RateType>RATED_ACCOUNT</RateType><RateScale>US001OFA_01_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>142.98</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>142.98</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>8.2</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>7.2</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><ShipmentRateDetail><RateType>RATED_LIST</RateType><RateScale>US001OFA_01_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>142.98</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>142.98</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>8.2</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>7.2</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><ShipmentRateDetail><RateType>PAYOR_LIST</RateType><RateScale>US001OFA_01_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>142.98</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>142.98</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>8.2</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>151.18</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>7.2</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails></RateReplyDetails><RateReplyDetails><ServiceType>INTERNATIONAL_ECONOMY</ServiceType><PackagingType>YOUR_PACKAGING</PackagingType><DestinationAirportId>YVR</DestinationAirportId><IneligibleForMoneyBackGuarantee>false</IneligibleForMoneyBackGuarantee><OriginServiceArea>A2</OriginServiceArea><DestinationServiceArea>AM</DestinationServiceArea><SignatureOption>SERVICE_DEFAULT</SignatureOption><ActualRateType>PAYOR_ACCOUNT</ActualRateType><RatedShipmentDetails><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><ShipmentRateDetail><RateType>PAYOR_ACCOUNT</RateType><RateScale>US001OFA_03_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>131.91</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>131.91</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>7.65</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>6.65</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><ShipmentRateDetail><RateType>RATED_ACCOUNT</RateType><RateScale>US001OFA_03_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>131.91</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>131.91</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>7.65</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>6.65</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><ShipmentRateDetail><RateType>RATED_LIST</RateType><RateScale>US001OFA_03_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>131.91</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>131.91</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>7.65</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>6.65</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails><RatedShipmentDetails><ShipmentRateDetail><RateType>PAYOR_LIST</RateType><RateScale>US001OFA_03_YOUR_PACKAGING</RateScale><RateZone>US001O</RateZone><CurrencyExchangeRate><FromCurrency>USD</FromCurrency><IntoCurrency>USD</IntoCurrency><Rate>1.0</Rate></CurrencyExchangeRate><DimDivisor>139</DimDivisor><FuelSurchargePercent>5.0</FuelSurchargePercent><TotalBillingWeight><Units>KG</Units><Value>2.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>131.91</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>131.91</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>7.65</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>139.56</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>OTHER</SurchargeType><Description>Peak Surcharge</Description><Amount><Currency>USD</Currency><Amount>1.0</Amount></Amount></Surcharges><Surcharges><SurchargeType>FUEL</SurchargeType><Description>Fuel</Description><Amount><Currency>USD</Currency><Amount>6.65</Amount></Amount></Surcharges></ShipmentRateDetail></RatedShipmentDetails></RateReplyDetails><RateReplyDetails><ServiceType>FEDEX_GROUND</ServiceType><PackagingType>YOUR_PACKAGING</PackagingType><DestinationAirportId>YVR</DestinationAirportId><IneligibleForMoneyBackGuarantee>true</IneligibleForMoneyBackGuarantee><SignatureOption>SERVICE_DEFAULT</SignatureOption><ActualRateType>PAYOR_ACCOUNT</ActualRateType><RatedShipmentDetails><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><ShipmentRateDetail><RateType>PAYOR_ACCOUNT</RateType><RateZone>51</RateZone><DimDivisor>0</DimDivisor><FuelSurchargePercent>18.5</FuelSurchargePercent><TotalBillingWeight><Units>LB</Units><Value>5.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>28.64</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>28.64</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>5.3</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>33.94</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>33.94</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>FUEL</SurchargeType><Level>PACKAGE</Level><Description>FedEx Ground Fuel</Description><Amount><Currency>USD</Currency><Amount>5.3</Amount></Amount></Surcharges></ShipmentRateDetail><RatedPackages><EffectiveNetDiscount><Currency>USD</Currency><Amount>0.0</Amount></EffectiveNetDiscount><PackageRateDetail><RateType>PAYOR_ACCOUNT</RateType><RatedWeightMethod>ACTUAL</RatedWeightMethod><BillingWeight><Units>KG</Units><Value>2.27</Value></BillingWeight><BaseCharge><Currency>USD</Currency><Amount>28.64</Amount></BaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><NetFreight><Currency>USD</Currency><Amount>28.64</Amount></NetFreight><TotalSurcharges><Currency>USD</Currency><Amount>5.3</Amount></TotalSurcharges><NetFedExCharge><Currency>USD</Currency><Amount>33.94</Amount></NetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><NetCharge><Currency>USD</Currency><Amount>33.94</Amount></NetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>FUEL</SurchargeType><Level>PACKAGE</Level><Description>FedEx Ground Fuel</Description><Amount><Currency>USD</Currency><Amount>5.3</Amount></Amount></Surcharges></PackageRateDetail></RatedPackages></RatedShipmentDetails><RatedShipmentDetails><ShipmentRateDetail><RateType>PAYOR_LIST</RateType><RateZone>51</RateZone><DimDivisor>0</DimDivisor><FuelSurchargePercent>18.5</FuelSurchargePercent><TotalBillingWeight><Units>LB</Units><Value>5.0</Value></TotalBillingWeight><TotalBaseCharge><Currency>USD</Currency><Amount>28.64</Amount></TotalBaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><TotalNetFreight><Currency>USD</Currency><Amount>28.64</Amount></TotalNetFreight><TotalSurcharges><Currency>USD</Currency><Amount>5.3</Amount></TotalSurcharges><TotalNetFedExCharge><Currency>USD</Currency><Amount>33.94</Amount></TotalNetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><TotalNetCharge><Currency>USD</Currency><Amount>33.94</Amount></TotalNetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>FUEL</SurchargeType><Level>PACKAGE</Level><Description>FedEx Ground Fuel</Description><Amount><Currency>USD</Currency><Amount>5.3</Amount></Amount></Surcharges></ShipmentRateDetail><RatedPackages><PackageRateDetail><RateType>PAYOR_LIST</RateType><RatedWeightMethod>ACTUAL</RatedWeightMethod><BillingWeight><Units>KG</Units><Value>2.27</Value></BillingWeight><BaseCharge><Currency>USD</Currency><Amount>28.64</Amount></BaseCharge><TotalFreightDiscounts><Currency>USD</Currency><Amount>0.0</Amount></TotalFreightDiscounts><NetFreight><Currency>USD</Currency><Amount>28.64</Amount></NetFreight><TotalSurcharges><Currency>USD</Currency><Amount>5.3</Amount></TotalSurcharges><NetFedExCharge><Currency>USD</Currency><Amount>33.94</Amount></NetFedExCharge><TotalTaxes><Currency>USD</Currency><Amount>0.0</Amount></TotalTaxes><NetCharge><Currency>USD</Currency><Amount>33.94</Amount></NetCharge><TotalRebates><Currency>USD</Currency><Amount>0.0</Amount></TotalRebates><Surcharges><SurchargeType>FUEL</SurchargeType><Level>PACKAGE</Level><Description>FedEx Ground Fuel</Description><Amount><Currency>USD</Currency><Amount>5.3</Amount></Amount></Surcharges></PackageRateDetail></RatedPackages></RatedShipmentDetails></RateReplyDetails></RateReply></SOAP-ENV:Body></SOAP-ENV:Envelope>');
        res.setStatusCode(200);
        return res;
    }
}