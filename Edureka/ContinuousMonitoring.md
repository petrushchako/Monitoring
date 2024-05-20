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


