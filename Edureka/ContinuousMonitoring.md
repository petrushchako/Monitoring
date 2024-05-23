# Continuous Monitoring and DevOps on AWS

### Course outline
1. Continuous Monitoring using Prometheus & Grafana
2. Prometheus Security and Use Cases
3. Continuous Monitoring using Nagios XI
4. Log Server 2.0 and alerting in Nagios
5. SDLC automation using AWS
6. Automating Infrastructure using CloudFormation
7. Application Deployment using Elastic Beanstalk
8. Application Deployment and Orchestration using ECS, ECR & EKS


### Objectives
- Understand Continuous Monitoring in DevOps
- Identify the different Continuous Monitoring Tools in DevOps
- Monitor your environment using Prometheus
- Visualize Prometheus Data using Grafana Dashboards
- Create a Monitoring system for your DevOps Pipeline


## Introduction to Continuous Monitoring
### Continuous Monitoring
It is an automated process by which one can observe and detect compliance issues and security threats during each phase of the DevOps pipeline

### Why use Continuous Monitoring?
- Assist with Healthy Business Performance
- Minimizes System Downtime
- Facilitates Rapid Responses
- Better Netwokr Visibility & Transparency

### Continuous Monitoring Tools in DevOps
- Monitoring tools
  - Sensu
  - Nagios
  - Prometheus
- Alerting tools
  - PagerDuty
  - ServiceNow
  - Slack
- Metric storage
  - Splunk
  - AWS
  - influxdb
- Visualization tools
  - Grafana


## Prometheus
- It is a community-driven open-source monitoring framework
- Has a robust alert mechanism
- A Cloud Native Computing Foundation (CNCF) graduated project
- Open source systems monitoring and alerting toolkit
- Collects and stores metrics as a time series data
- Scrapes targets
- PromQL is the language used to query time series in Prometheus
- Service discovery helps find our services and monitor them
- Exporters help to monitor 3rd party components
- Can send alerts to alert manager
- Prometheus runs on port 9090 and alert manager on 9093


### Prometheus architecture
![](img/prometheusArchitecture.png)


### Prometheus Features
- **Dimensional Data**

    Uses a dimensional data model where series are identified by a metric name and a set of key-value pair.

- **Simple Operations**

    Servers running Prometheus are independent of each other for reliability. Since it is written in Go language, the binaries can easily be updated.

- **Alert System**

    All the alerts are managed by an alert manager. The alerts are defined using the Prometheus's own PromQL

- **Visualization**

    Offers various options to visualize the monitoring data. The build-in expression browser can be integrated with tools such as Grafana. 

- **Library Support**

    With support of over ten different languages, creating and implementing custom libraries is very easy

- **Efficient Storage**

    Prometheus stores all the monitoring data on the local disk itself in an efficient custom format


### Prometheus on Kubernetes
- Constantly tracks the Kubernetes API for changes and updates the configuration accordingly
- Uses Custom Resource Definition called ServiceMonitor in order to monitor a target
- ServiceMonitor attaches itself to the target(s) using the matchLabel selector
- Works in a pull-based mechanism enabling abstraction from service being monitored

### Prometheus Metrics and its types

- **Counter**
  - Record a value that only goes up
  - Query how fast the value is increasing
- **Gauges**
  - Record a value that only goes up and down
  - You do not have to Query its rate
- **Histogram**
  - Tame many measures of a value to later calculate averages or percentiles
  - You know what the range of values will be up front, so you can define your own
- **Summary**
  - Take many measurements of a value, to later calculate average or percentiles
  - You don't know what the range of values will be up front, so cannot use histograms


<br><br>

## Grafana
Grafana is a multi-platform open-source analytics and interactive visualization web application. It provides:
  - Charts
  - Graphs
  - Alerts

### Grafana features
- **Visualize**

    Grafana has a plethora of visualization options to help you understand your data, beautifully

- **Alert**

    Seamlessly define alerts where it makes sense - while you're in the data

- **Unify**

    Grafana supports dozens of databases, natively. Mix them together in the same Dashboard

- **Alert**
    Grafana is completely open-source and backed by a vibrant community

- **Extend**

    Discover hundreds of dashboards and plugins in the official library

- **Collaborate**

    Bring everyone together, and share data and dashboards across teams


<br><br>

## Nagios XI

### Links
- Download link for Nagios<br>https://www.nagios.org/download/
- Download link for Nagios Plugins Project<br>https://github.com/nagios-plugins/nagios-plugins

#### Topics
- Introduction to Nagios XI
- Nagios Architecture
- Setting up and Configuring Nagios XI
- Managing Nagios XI
- Monitoring using Nagios XI

### Introduction to Nagios XI

Nagios XI is a enterprise Server and Network Monitoring Software

Nagios XI monitors all mission-critical components in the IT infrastructure
- Servers
- Networks
- Operating Systems
- Applications
- System Metrics
- Services
- Network Protocols

<br>

Nagios is a well-known open-source solution for continuous monitoring of Linux, Windows, applications and infrastructure workloads

Nagios depends on expert partners around the world to deploy services and support companies using their technology

<br>

Nagios XI helps every IT company in:
- IT Infrastructure Monitoring
- Multi-Tenant Capabilities
- Server Performance Monitoring
- Configuration Wizards
- Advanced User Management
- Extendable Architecture
- Customizability
- IT Operations Network
- Capacity Planning
- Network Incident Alerts
- Capacity Planning Graphs
- User-Specific Views
- Update Web Interface
- Infrastructure Management
- Configuration Snapshot

<br>

#### Features of Nagios Monitoring Tool
- Scalable, Manageable, and Secure
- Good log and database system
- Informative and attractive web interface
- Automatically send alerts when condition changes
- Detects all network or server issues
- Monitors and fixes server performance issues
- Helps to plan infrastructure upgrades before outdated systems create failures
- Active monitoring of entire infrastructure and business processes
- Diagnose the root cause of the problem to get the permanent solution
- Monitors network services like HTTP, SMTP, HTTP, SNMP, FTP, SSH, and POP
- Maintains the security and availability of the service

### Getting started with Nagios XI
- Nagios has a client-server architecture
- Nagios server is typically running on a host
- Plugins are running on the remote hosts
- ![](img/nagiosArchitecture.png)


### Nagios Plugins

![](img/nagiosPluginsArchitecture.png)

#### Plugins
- Plugins are scripts or compiled executable
- Nagios executes a plugin to check the status of a service or host
- Plugins also helps to monitor databases, operating systems, applications, network equipment, and protocols with Nagios

#### Embedded Perl Interpreter
- Nagios uses an embedded Perl interpreter to execute Perl plugins
- Without Perl interpreter, Nagios executes Perl and non-Perl plugins by forking and executing the plugins as an external command


#### Types of Nagios Plugins
- **Official Nagios Plugins**<br>50 official Nagios plugins are developed and maintained by the official Nagios Plugins Team
- **Community Plugins**<br>More than 3,000 third party Nagios plugins are developed by hundreds of Nagios community members
- **Custom Plugins**<br>You can write your own custom plugins by following some guidelines


