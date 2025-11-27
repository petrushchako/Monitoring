## Include a remote environment tile in your dashboard

**Note: For this exercise we will use your "Training-<Month>-0XX" environment**

In this exercise you will learn how to:
- create a new "remote environment"
- create a new dashboard
- create a new dashboard tile and show data from a remote environment

Dynatrace offers the possibility to show data of another "remote" environment in your environment. 

### Create a remote environment

1) Open your "Training-<Month>-0XX" environment on the [training-cluster](https://dev.eu10.apm.services.cloud.sap/login).
2) Go the "Manage" -> "Settings" -> "Integration" -> "Remote environments"
3) Create a new remote environment by clicking "Connect environment" and entering
   - Name: training-shared
   - Remote environment URI: https://dev.eu10.apm.services.cloud.sap/e/09328838-b352-44a2-bf06-60a8e1824f39
   - Network scope: Cluster
   - Token: provided by trainer
4) Save Changes

### Create a new dashboard and dashboard tile

1) Go to "Observe and explore" -> "Dashboards"
2) Create a new dashboard by clicking on "Create Dashboard" and enter a name
3) Drag and drop a new "Service Health" tile to your dashboard.
4) On the right hand side menu, select "training-shared" from the Environments drop down menu.
5) Click on "Done" which saves the Dashboard.

You will now see data from another environment in your environment (you should see a higher number of services than are available in your "Training-<Month>-0XX" environment).
If you click on the tile, you can directly jump into the remote environment (if you have privileges).
