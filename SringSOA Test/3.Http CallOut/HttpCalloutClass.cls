/**
     * A helper class for making HTTP callouts using Apex.
*/
public class HttpCalloutClass {
/**
     * Makes a GET request to the specified URL and returns the response body & Print it usuing system.debug.
     */
 public static void makeCallout() {
        String url = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        String responseBody = response.getBody();
        System.debug('Response Body: ' + responseBody);
    }
}