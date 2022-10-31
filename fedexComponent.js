import { LightningElement, track } from 'lwc';
import callApi from '@salesforce/apex/FedexApiController.callApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class FedexComponent extends LightningElement {

    @track responseJson;
    @track senderAddress = {
            city: '',
            postalCode: '',
            countryCode: '',
            street : '',
            province : ''
        };
    @track receiverAddress = {
            city: '',
            postalCode: '',
            countryCode: '',
            street : '',
            province : ''
        };

    @track isSpinnerShow = false;


    // This mathode is userd for call api and get response
    getRates() {
        const addrecess = this.template.querySelectorAll('lightning-input-address');
        if(addrecess[0].checkValidity() && addrecess[1].checkValidity()) {
            this.isSpinnerShow = true;
            callApi({ senderAddress: JSON.stringify(this.senderAddress), receiverAddress: JSON.stringify(this.receiverAddress) })
            .then(result => {
                this.responseJson = JSON.parse(this.convertXMLToJSON(result).replaceAll('#text', 'text'));
                this.responseJson = this.responseJson['SOAP-ENV:Envelope'];
                this.responseJson = this.responseJson['SOAP-ENV:Body'];
                this.responseJson = this.responseJson.RateReply;
                this.responseJson = this.responseJson.RateReplyDetails;
                let finalResponse = [];
                let index = 0;
                this.responseJson.forEach(currentItem => {
                    currentItem.RatedShipmentDetails.forEach(item => {
                        finalResponse.push({Id : index, ratedShipmentDetails : item});
                        index++;
                    });
                });
                this.responseJson = finalResponse;
                this.isSpinnerShow = false;
            })
            .catch(error => {
                this.isSpinnerShow = false;
                console.error('Error:', error);
                const evt = new ShowToastEvent({
                    title: 'Error',
                    message: 'An error is occured.',
                    variant: 'error',
                });
                this.dispatchEvent(evt);
            });
        } else {
            const evt = new ShowToastEvent({
                title: 'Error',
                message: 'Please fill Sender and Receiver Adrress',
                variant: 'error',
            });
            this.dispatchEvent(evt);
        }
    }

    // For store the sender address
    handleChangeSenderAddress(event) {
        this.senderAddress = {
            city: event.target.city,
            postalCode: event.target.postalCode,
            countryCode: event.target.country,
            street : event.target.street,
            province : event.target.province
        }
    }

    // For store the receiver address
    handleChangeReceiverAddress(event) {
        this.receiverAddress = {
            city: event.target.city,
            postalCode: event.target.postalCode,
            countryCode: event.target.country,
            street : event.target.street,
            province : event.target.province
        }
    }

    // convertJson() {
    // Converts XML to JSON
    // from: https://coursesweb.net/javascript/convert-xml-json-javascript_s2
    convertXMLToJSON(testXml) {
        var me = this;      // stores the object instantce

        // gets the content of an xml file and returns it in
        me.fromFile = function (xml, rstr) {
            // Cretes a instantce of XMLHttpRequest object
            var xhttp = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
            // sets and sends the request for calling "xml"
            xhttp.open("GET", xml, false);
            xhttp.send(null);

            // gets the JSON string
            var json_str = jsontoStr(setJsonObj(xhttp.responseXML));

            // sets and returns the JSON object, if "rstr" undefined (not passed), else, returns JSON string
            let test = (typeof (rstr) == 'undefined') ? JSON.parse(json_str) : json_str;
            return test;
        }

        // returns XML DOM from string with xml content
        me.fromStr = function (xml, rstr) {
            // for non IE browsers
            if (window.DOMParser) {
                var getxml = new DOMParser();
                var xmlDoc = getxml.parseFromString(xml, "text/xml");
            }
            else {
                // for Internet Explorer
                var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
                xmlDoc.async = "false";
            }

            // gets the JSON string
            var json_str = jsontoStr(setJsonObj(xmlDoc));

            // sets and returns the JSON object, if "rstr" undefined (not passed), else, returns JSON string
            let test = (typeof (rstr) == 'undefined') ? JSON.parse(json_str) : json_str;
            console.log('test  :-  ',test);
            return test;
        }

        // receives XML DOM object, returns converted JSON object
        var setJsonObj = function (xml) {
            var js_obj = {};
            if (xml.nodeType == 1) {
                // if (xml.attributes.length > 0) {
                //     js_obj["@attributes"] = {};
                //     for (var j = 0; j < xml.attributes.length; j++) {
                //         var attribute = xml.attributes.item(j);
                //         js_obj["@attributes"][attribute.nodeName] = attribute.value;
                //     }
                // }
            } else if (xml.nodeType == 3) {
                js_obj = xml.nodeValue;
            }
            if (xml.hasChildNodes()) {
                for (var i = 0; i < xml.childNodes.length; i++) {
                    var item = xml.childNodes.item(i);
                    var nodeName = item.nodeName;
                    if (typeof (js_obj[nodeName]) == "undefined") {
                        js_obj[nodeName] = setJsonObj(item);
                    } else {
                        if (typeof (js_obj[nodeName].push) == "undefined") {
                            var old = js_obj[nodeName];
                            js_obj[nodeName] = [];
                            js_obj[nodeName].push(old);
                        }
                        js_obj[nodeName].push(setJsonObj(item));
                    }
                }
            }
            return js_obj;
        }

        // converts JSON object to string (human readablle).
        // Removes '\t\r\n', rows with multiples '""', multiple empty rows, '  "",', and "  ",; replace empty [] with ""
        var jsontoStr = function (js_obj) {
            var rejsn = JSON.stringify(js_obj, undefined, 2).replace(/(\\t|\\r|\\n)/g, '').replace(/"",[\n\t\r\s]+""[,]*/g, '').replace(/(\n[\t\s\r]*\n)/g, '').replace(/[\s\t]{2,}""[,]{0,1}/g, '').replace(/"[\s\t]{1,}"[,]{0,1}/g, '').replace(/\[[\t\s]*\]/g, '""');
            return (rejsn.indexOf('"parsererror": {') == -1) ? rejsn : 'Invalid XML format';
        }

        return me.fromStr(testXml, 'string');
    }

}