# Exercise: Request attributes

**Note: For this exercise we will use your "Training-<Month>-0XX" environment**

In this exercise you will learn how to:
- define Request attributes on Java method parameters 
- search for request attributes in your service
- find a specific request attribute in all requests of all your services

## Create a Request attribute

1) Open your "Training-<Month>-0XX" environment on the [training-cluster](https://dev.eu10.apm.services.cloud.sap/login).
2) Go the "Manage" -> "Settings" -> "Server-side service monitoring" -> "Request Attribute"
3) Click on "Define new request attribute"
4) Name the request attribute "AlbumID"
5) Click on "Add new data source"
6) Select "Java method parameter(s)" as Request attribute source
7) Click on "Select method sources"
8) Select your process group (e.g spring-music-training) and Continue.
9) Search for "AlbumController", select it and continue.
10) Select "Use the selected class" and click "Continue".
11) Select `getById`, `add` and `deleteById` methods on the next page and click "Finish".
12) Scroll down and configure the "Capture" of the methods
    - `1: java.lang.String` for `getById` and `deleteById`
    - `Return value` for `add`
    - configure "Deep object access" for `add` by entering `.getId()`
 13) Save! (2 times, the second "Save" is on top of the page)
 14) Restart your spring-music app via `cf restart spring-music-<D/I number>`.

**Note:** There is an option to apply request attribute definitions without restart. For this you would need to enable the switch "Enable real-time updates to Java and PHP services" on the  "Deep Monitoring" settings page. After one restart of the application future changes to request attributes won't require any restart.
 
### Execute some requests 

**Note For Windows: Open Git Bash to execute the following commands.**

1. Copy the url of your application (you can find it out via the `cf apps` command).
2. Execute a prepared script, that calls some services of your spring-music app by executing
`./scripts/execute_requests.sh https://<URL of your application>` from inside the `spring-music` folder. 
3) wait 2 minutes

## Find request attributes in your service
- Go to "Services" and select the `AlbumController`.
- Click on "Multidimensional Analysis" in the upper right corner.
- Select the metric "Request count" and filter for "Request attribute" -> "AlbumID" -> Any value
- Next to the dimensions, click on "Analyze" (the 3 dots symbol) and select "Distributed traces"
- Select any trace (all of them should have the "AlbumID" Request attribute because we filtered for it).
- In the summary of the trace you will find a "Request Attribute" section.
- Copy the AlbumID value.

## Search for one specific request attribute in all your services

In case you are searching for a specific request and do not know which service it belongs to, you can use the "Diagnostic tools" to search over all requests of all services in your environment.
- Go to "Application Observability" -> "Multidimensional analysis" -> "Top web requests".
- In the filter bar, select "Request Attribute", filter on "AlbumId" and enter the value you copied in the step above (do **not** select `Any value` or `is missing`, just paste the copied value and press "Enter/Return").
- You should now be able to see the requests for which this request attribute was captured (you should see the 3 methods you configured the request attribute for).

**Note: Request attributes are only captured after they were configured. So you won't be able to see attributes for requests in the past!**
