# Dynatrace Fundamentals

Dynatrace is a solution that enables IT professionals to monitor and observe applications deployed in their infrastructure. In this course, Dynatrace Fundamentals, you'll gain a deeper understanding of Dynatrace's platform and how to use it. First, you'll explore the Dynatrace Software Intelligence platform and the various solutions that make it up. Next, you'll learn how to install, configure, and customize Dynatrace in your environment. Finally, you'll discover how to use Dynatrace to analyze and troubleshoot problems in your infrastructure. When you’re finished with this course, you’ll have the skills and knowledge necessary to effectively monitor and observe your IT environment using Dynatrace.


### Table of contents
- **Course Overview**		
- **Explaining Dynatrace Concepts**		
    - Introducing Dynatrace		
    - Introducing the Dynatrace Software Intelligence Platform: Part 1		
    - Introducing the Dynatrace Software Intelligence Platform: Part 2		
    - Demo: Exploring Dynatrace		
    - Summary		
- **Examining Dynatrace Use Cases**		
    - Observing APM Use Cases		
    - Discovering Infrastructure Use Cases		
    - Observing Digital Experience Use Cases		
    - Exploring Other Use Cases		
    - Demo: Exploring Dynatrace Use Case		
    - Summary		
- **Discovering and Ingesting Data into Dynatrace**	
    - Deploying Dynatrace OneAgent		
    - Demo: Deploy OneAgent		
    - Discussing Dynatrace ActiveGate		
    - Demo: Deploy ActiveGate		
    - Collecting Custom Data with Dynatrace API		
    - Collecting Data from Logs		
    - Collecting Data with Integrations		
    - Demo: Collect Data from Microsoft Azure		
    - Collecting Data with Real User and Synthetic Monitoring		
    - Demo: Create Browser and HTTP Monitors		
    - Summary		
- **Visualizing Data in Dynatrace**
    - Visualizing Data with Tiles and Charts		
    - Analyzing Data with Dashboards		
    - Demo: Creating and Editing Dynatrace Dashboards		
    - Visualizing Topology with Service Flow and Smartscape		
    - Demo: Dynatrace Service Flow and Smartscape		
    - Visualizations with Dynatrace Data Explorer		
    - Demo: Exploring Data with Data Explorer		
    - Querying Data with Dynatrace USQL		
    - Demo: Querying Data with Dynatrace USQL		
    - Summary		
- **Troubleshooting Performance Problems with Dynatrace**
    - Detecting Anomalies with Dynatrace AI		
    - Demo: Solving Problems with Dynatrace Davis		
    - Finding Problems Using Dashboards		
    - Demo: Solving Problems Using Dashboards		
    - Finding Problems with SLOs in Dynatrace		
    - Demo: Finding Problems with SLO Monitoring		
    - Leveraging Dynatrace Alerting for IT Problem Notifications		
    - Demo: Creating Alerts and Notifications		
    - Summary		
- **Applying What’s Next**
    - Enhancing Dynatrace with Best Practices		
    - Exploring Additional Learning and Wrapping Up

<br><br><br>

## Course Overview
Dynatrace has evolved from a new-generation monitoring vendor into a leading platform for observability. With increasing complexity in modern IT infrastructures and applications, Dynatrace integrates an AI engine at its core to support faster, more efficient problem-solving.

### Course Objectives:
- Understand the use cases for IT performance monitoring and observability
- Learn how Dynatrace discovers and collects data using agent-based and agentless methods
- Explore platform features for data visualization, querying, and analysis using dashboards and flows
- Gain practical knowledge for problem troubleshooting using AI and service-level objectives (SLOs)

<br><br><br>

# Explaining Dynatrace Concepts
## Introducing Dynatrace
Dynatrace is a leading SaaS vendor in the monitoring and observability space. The platform has significantly evolved to meet the demands of modern digital businesses aiming to enhance customer experiences.

### Case Study: Bethany's Pie Shop
To illustrate the need for Dynatrace, the course introduces a fictional company: **Bethany's Pie Shop**.
- **Gordon**, the performance engineer, is responsible for planning, troubleshooting, and maintaining performance tools.
- With increased demand for online shopping and delivery, Bethany's Pie Shop needed to scale their digital presence. However, their legacy website was not built for high traffic or delivery capabilities.
- The existing monitoring tools were sufficient for a simple site but became inadequate as the business adopted a **hybrid cloud infrastructure** and **modernized their application architecture** from monoliths to microservices.

This digital transformation led to:
- Increased complexity in the IT environment
- Loss of visibility across services and infrastructure
- A need for a new monitoring solution that could keep up with the evolving system

### Evaluation of Dynatrace
To regain observability and improve performance monitoring, Gordon and his team began evaluating market-leading tools. Guided by research from Gartner, Dynatrace emerged as a top candidate for Application Performance Monitoring (APM) and observability.

<br><br><br>

## Introduction to Dynatrace as a Company
### Company Origins
Dynatrace was founded in **2005 in Linz, Austria**, with the goal of improving upon traditional monitoring solutions. It was part of what is often referred to as **Phase 2 of Application Performance Monitoring (APM)**—a shift that occurred as web applications evolved from monolithic architectures to **service-oriented architectures (SOA)**.

### Addressing SOA Complexity
As SOA adoption increased, Phase 1 monitoring tools struggled to provide visibility into distributed application components. Dynatrace emerged as a Phase 2 solution, offering better performance visibility by:
- Monitoring user experience more effectively
- Correlating front-end performance with back-end services
- Leveraging its **PurePath technology**, a patented form of distributed tracing

These capabilities positioned Dynatrace well to support organizations moving to cloud infrastructures.

### Cloud Adoption and SaaS
To capitalize on cloud migrations, Dynatrace introduced **Ruxit**, a SaaS-based monitoring solution. However, recognizing that some organizations were hesitant to store data outside their own data centers, Dynatrace made a strategic decision to support both:

- **SaaS deployment**, and
- **On-premise deployment that behaves like SaaS**

This dual offering makes Dynatrace appealing to **highly regulated industries** with strict data residency requirements.

### Competitive Landscape
Dynatrace has been a long-time competitor to other observability platforms such as New Relic. Unlike New Relic, however, Dynatrace provides a viable on-premise option, giving it a competitive edge for organizations with strict compliance constraints.

### Key Differentiators
Some of Dynatrace’s standout features include:
- **OneAgent**: A single agent that supports multiple application languages and technologies. Unlike other vendors that require different agents for different runtimes (e.g., Java, .NET), Dynatrace simplifies deployment with a single installation.
- **PurePath**: Dynatrace’s proprietary distributed tracing mechanism.
- **Smartscape**: A real-time dependency mapping and visualization feature.

These technologies have helped Dynatrace gain recognition as a leader in the observability space.

### Growth and Reach
From its modest beginnings, Dynatrace has grown to:
- **Over 4,000 employees worldwide**
- **Serving more than 2,300 customers across 70 countries**

With this growth and platform maturity, Dynatrace presents a strong case for organizations like **Bethany’s Pie Shop** seeking a modern and scalable observability solution.


<br><br><br>


## The Dynatrace Software Intelligence Platform

### From Products to Unified Platform
Over the years, Dynatrace has evolved its offerings based on customer needs and infrastructure changes. Initially, like many competitors, Dynatrace provided separate tools for different observability functions, including:

- Application Performance Monitoring (APM)
- Synthetic Monitoring
- Real User Monitoring (RUM)
- Application-aware Network Performance Monitoring

However, as cloud adoption grew and technology matured, having separate products created confusion. Customers often struggled to determine which tool to use for which scenario, complicating deployments and maintenance.

To address this, Dynatrace unified these offerings into a single solution known as the **Software Intelligence Platform**. This is not just a branding layer over multiple tools—**Dynatrace is both the company and the product**. The platform consolidates all features and capabilities under one integrated experience, offering true **single-pane-of-glass** monitoring.

### Benefits of a Unified Platform
This unified approach simplifies the customer experience:
- No need to choose or install separate products
- All components are available under a single license
- Faster and more holistic analysis and troubleshooting
- Reduced operational overhead for engineering teams

Customers like Bethany’s Pie Shop can benefit from streamlined deployments and complete observability without having to manage multiple toolsets.

### Core Features of the Software Intelligence Platform
Dynatrace’s platform is built around a dynamic set of capabilities. While the list evolves with product development, the current major components include:

- **OneAgent**
    
    The primary method for data collection. Installed once per host, **OneAgent** automatically detects and monitors all relevant processes, services, and technologies—regardless of the language or framework.

- **PurePath**
    
    Dynatrace’s patented **distributed tracing technology**. PurePath injects unique IDs into every transaction and request, enabling deep end-to-end tracing across your system. This visibility helps pinpoint where and why performance issues occur.

- **Smartscape**
    
    A real-time **dependency mapping engine**. Smartscape builds a visual topology of your environment, showing how services, processes, and infrastructure relate to one another. It simplifies understanding system behavior and changes over time.

- **Grail**
    
    A newer component, **Grail** is a **data lakehouse** used to store logs, metrics, and traces. While not universally available yet, Grail enables unified data access for faster and more flexible observability queries.

- **Davis AI**
  
    Since 2017, Dynatrace has used its AI engine called **Davis**. Davis ingests data from OneAgent, PurePath, and other sources to automatically analyze and correlate information. This causation-based AI identifies dependencies and pinpoints root causes of issues—eliminating the need for manual triage.

    > Causation-based AI (used by Dynatrace’s Davis engine) is an approach to artificial intelligence that goes beyond simply spotting patterns or correlations—it identifies why something happened, not just that it happened.


<br><br><br>

## Dynatrace Deployment Architecture and Licensing
The Dynatrace Software Intelligence Platform consists of three main components and supports two deployment models: **SaaS** and **on-premise (Dynatrace Managed)**. Regardless of the model, the following components are core to a full deployment:

### Core Components
#### 1. Data Collector
Dynatrace offers three data collection options:
- **OneAgent (Recommended)**: Installed on each host to collect high-granularity metrics, traces, logs, and events.
- **APIs**: Custom data ingestion via Dynatrace APIs for cases where agents cannot be installed.
- **Integrations**: Built-in integrations with technologies like OpenTelemetry, Kubernetes, AWS, Azure, and GCP.

#### 2. Proxy Service – *ActiveGate*
Acts as an intermediary between data sources and the server cluster. It:
- Streamlines communication and data transfer
- Supports secure environments and remote networks
- Can be deployed in both SaaS and Managed setups

#### 3. Server Cluster
Processes, stores, and analyzes collected data:
- In **Dynatrace SaaS**, the server cluster is hosted and managed by Dynatrace.
- In **Dynatrace Managed**, you host and manage the cluster in your own environment (e.g., on-premise or private cloud).

<br>

### Deployment Models
#### Dynatrace SaaS
- **Default and fastest to deploy**
- Only **OneAgent** is required to begin monitoring
- **ActiveGate** is optional and only needed for specific technologies (e.g., DMZs, Kubernetes, etc.)
- Dynatrace hosts and manages the entire server infrastructure

#### Dynatrace Managed
- Suitable for **highly regulated organizations** that require data to stay on-premise
- Requires:
  - OneAgent on monitored hosts
  - Self-hosted Dynatrace server cluster
  - At least one ActiveGate
- Includes:
  - **Mission Control**: Health monitoring and support service for your cluster
  - **Management Console**: Web UI to configure and manage the cluster and user access

<br>

### Licensing and Billing
Dynatrace uses a **usage-based licensing model**, with pricing tied to specific metrics depending on the feature set.

#### Legacy Metrics-Based Model
1. **Host Units (HUs)**:
   - Based on host memory (e.g., 1 HU per 8 GB RAM)
   - Used for OneAgent-monitored hosts
2. **Digital Experience Monitoring Units (DEM Units)**:
   - Used for Synthetic Monitoring and Real User Monitoring
   - Example: 10,000 DEM units/year allocation
3. **Davis Data Units (DDUs)**:
   - Used for features like log monitoring, custom metrics, and events
   - Example: 100,000 DDUs/year allocation

> **Note**: This model typically requires annual billing, but Dynatrace offers a pay-as-you-go option via AWS Marketplace with a 15-day free trial.

#### New Subscription Model (As of Course Completion)
- Based on:
  - **Gigabyte-hour (GB-h) usage**
  - **Synthetic requests**
  - **Real User Monitoring (RUM) sessions**
- Legacy customers may retain the old model; new customers are onboarded with this pricing structure by default.

<br><br><br>

## Examining Dynatrace Use Cases
Dynatrace began as a Phase 2 monitoring tool—an improvement over traditional, monolithic-focused monitoring solutions. Today, it has evolved into a comprehensive software intelligence platform that supports full-stack observability, digital experience management, and more.

This module outlines the major use cases of the Dynatrace platform and introduces how they support application and infrastructure monitoring across modern environments.

### Application Performance Monitoring (APM)
A core Dynatrace capability is **Application Performance Monitoring**. Dynatrace enables:

- Deep insights into application performance
- Distributed tracing through **PurePath** technology
- Automatic instrumentation with **OneAgent**
- Root cause analysis through AI-driven diagnostics

Example use cases include:
- Monitoring response time degradation
- Identifying slow database queries
- Tracking third-party service impact

### Infrastructure Monitoring
Applications run on infrastructure, and Dynatrace extends its observability into this layer as well. Infrastructure use cases include:

- Monitoring **hosts**, **containers**, and **virtual machines**
- Collecting system-level metrics (CPU, memory, disk I/O)
- Tracking cloud platform resource usage (AWS, Azure, GCP)

Instrumentation is typically handled via the **OneAgent**, which collects both application and infrastructure metrics without the need for separate agents.

### Digital Experience Monitoring (DEM)
With the rise of digital-first strategies, understanding user experience has become critical. Dynatrace supports DEM through:

- **Real User Monitoring (RUM)** – for tracking user interactions in real-time
- **Synthetic Monitoring** – to simulate and monitor application behavior from global locations
- Session replay and user journey analysis

Use cases include:
- Identifying and resolving frontend issues
- Monitoring performance by geography or device
- Improving user conversion through performance tuning

### Extended Use Cases
Beyond APM and infrastructure, Dynatrace offers capabilities in:
- **Security Monitoring** – Detecting vulnerabilities and unusual activity in real-time
- **Business Analytics** – Tracking KPIs, customer journeys, and business impact of technical performance
- **Cloud Automation** – Integrating with CI/CD and SRE workflows for intelligent remediation

These features allow Dynatrace to serve as a unified platform for IT, development, and business teams.


<br><br><br>

## Observing APM Use Cases
Application Performance Monitoring (APM) has been the foundational offering of Dynatrace since its inception. It supports a wide variety of application types—web, mobile, and database applications—and can instrument many programming languages and frameworks including Java, .NET, Node.js, and PHP.

Below are three core APM use cases that demonstrate Dynatrace’s capabilities:

### 1. Database Monitoring
Modern applications heavily rely on both SQL and NoSQL databases. Dynatrace offers deep visibility into database performance:
- **Automatic instrumentation** using OneAgent provides top database statements automatically and continuously.
- Key metrics captured include:
  - Query response time
  - Query failure rate
  - Database availability
- **Backtrace functionality** shows the exact sequence of application calls leading to a specific query, helping to correlate user actions with database behavior.
- Enables proactive issue resolution before user impact occurs.

### 2. Code-Level Monitoring
Code execution visibility is often abstracted in modern application environments, but Dynatrace helps you regain insight:
- Supports environments like Java JVM and .NET CLR.
- **PurePath distributed tracing** tracks every method call across the stack.
- Insights provided include:
  - Time spent in individual methods
  - Memory usage by objects
  - Error identification and slow method calls
- Alerts can be configured to notify you of code-level performance issues.

This empowers developers and operators to optimize code behavior before it affects end-users.

### 3. Service Monitoring
With the shift from SOA to microservices, tracking service performance and interdependencies has become more complex. Dynatrace addresses this challenge with:
- **Smartscape topology mapping** – Automatically detects services and visualizes communication paths across the infrastructure.
- Helps identify:
  - Inter-service dependencies
  - Service health and performance
  - Bottlenecks and service-specific failures
- Key service metrics available:
  - Response time
  - Request throughput
  - Error rate

Smartscape enables rapid root cause analysis by allowing you to drill down from a high-level view to individual service-level insights.

<br><br><br>

## Discovering Infrastructure Use Cases
In addition to application monitoring, Dynatrace offers robust capabilities for monitoring infrastructure components such as hosts, networks, and logs. Below are three key infrastructure use cases that demonstrate how Dynatrace can help you ensure the stability and performance of your application environments.

### 1. Host Monitoring
Effective monitoring of physical and virtual machines is critical for maintaining application availability and performance. Dynatrace provides comprehensive host monitoring via OneAgent, enabling you to:
- Automatically collect and report on key host metrics
- Identify CPU usage spikes that can lead to degraded performance
- Detect disk failures or issues that may result in data loss
- View all active processes running on a host and evaluate their performance impact

This allows teams to proactively address infrastructure-level issues that may affect end-user experience.

### 2. Network Monitoring
Applications rely heavily on network infrastructure for communication. Dynatrace enhances visibility into network behavior and performance by:
- Monitoring incoming and outgoing traffic between hosts
- Capturing network interface metrics through OneAgent
- Identifying traffic congestion and network errors
- Pinpointing problematic connections that may cause application latency

Although traditional APM tools focused mainly on application internals, Dynatrace extends its monitoring to the network layer, offering a more complete picture of system health and dependencies.

### 3. Log Monitoring
Modern systems generate a vast amount of log data, making it difficult to extract meaningful insights. Dynatrace addresses this challenge with built-in log monitoring capabilities:
- Automatically collects relevant log data using OneAgent
- Identifies log errors and warnings on infrastructure hosts
- Supports two primary versions:
  - **Log Monitoring Classic**
  - **Log Management and Analytics using Grail**
- Can integrate with third-party and cloud provider tools to centralize and analyze external log sources

These capabilities help reduce noise and streamline the detection of issues buried within large volumes of log data.


<br><br><br>


## Observing Digital Experience Use Cases
Digital Experience Monitoring (DEM) in Dynatrace ensures your applications deliver optimal performance and availability across all user interaction channels, including web, mobile, and APIs. Dynatrace offers several DEM capabilities to improve end-user satisfaction and troubleshoot performance issues effectively.

### 1. Real User Monitoring (RUM)
Real User Monitoring allows you to observe the actual experience of users interacting with your applications. It helps identify and resolve issues impacting user satisfaction in real-time.

Key capabilities include:
- Detecting when user experience degrades
- Identifying request errors and slow-performing pages
- Tracking feature adoption and user interaction patterns
- Automatically injecting monitoring code into supported applications via OneAgent
- Monitoring across browsers, devices, and geographic regions
- Calculating user experience scores based on JavaScript errors, broken links, and slow load times

RUM provides insights that help optimize your application for better usability and responsiveness.

### 2. Third-Party API Monitoring
Modern applications often rely on third-party APIs for core functionality such as payments or data storage. Ensuring the availability and performance of these APIs is critical for user satisfaction.

Dynatrace supports API monitoring through:
- **RUM-based insights**, by capturing all communication events and performance data
- **Synthetic Monitoring**, using globally distributed testing agents to simulate API requests

Synthetic monitoring helps validate response time, availability, and error rates of APIs—allowing teams to proactively detect and resolve API-related issues before they affect users.

### 3. Mobile User Session Replay
Reproducing mobile user issues can be challenging, especially when users are unable or unwilling to recreate the problem. Dynatrace addresses this with its session replay feature.

Capabilities include:

- Recording and visually replaying user sessions
- Reproducing user actions that led to application errors or crashes
- SDK support for Android and iOS apps to enable in-app session replay
- Identifying common crash patterns and optimizing mobile app performance

Session replay helps reduce user churn by providing teams with actionable insights into crash scenarios and user frustrations.

<br><br><br>


## Exploring Other Use Cases
Beyond application performance, infrastructure monitoring, and digital experience, Dynatrace supports several advanced use cases that address security, business alignment, and service reliability.

### 1. Vulnerability Analysis
In today’s threat landscape, monitoring for vulnerabilities is essential. Dynatrace provides runtime vulnerability analytics to proactively protect your applications and infrastructure from cyberattacks.

Key features include:
- Continuous monitoring of both first-party and third-party code using OneAgent
- Integration with leading vulnerability databases such as Snyk and NIST
- Automatic detection of risks in open-source libraries and dependencies
- AI-driven risk prioritization using Davis AI, allowing teams to focus on the most critical vulnerabilities first

By using Dynatrace for vulnerability analysis, teams can strengthen their security posture and reduce the likelihood of data breaches.

### 2. Business Impact Analysis
Monitoring tools traditionally focused on technical metrics, but Dynatrace enables correlation between performance data and business outcomes. This helps demonstrate how technology directly impacts business value.

Capabilities include:
- Mapping performance metrics to business KPIs (e.g., revenue, order volume)
- Identifying how application or infrastructure issues affect user transactions
- Highlighting areas where performance optimizations can increase business efficiency

With this insight, IT departments can support business goals more effectively and transition from being viewed as cost centers to strategic contributors.

### 3. Service Level Objective (SLO) Monitoring
Service Level Objectives (SLOs) define the acceptable level of service quality that underpins Service Level Agreements (SLAs). Dynatrace supports comprehensive SLO tracking to help ensure SLA compliance.

Key capabilities:
- Define SLOs using Service Level Indicators (SLIs) like availability, response time, and error rate
- Track metrics such as error budgets to measure progress toward SLOs
- Trigger alerts when SLO thresholds are breached to take corrective action proactively

Dynatrace SLO monitoring helps organizations maintain high service reliability and avoid SLA violations that could result in penalties or customer dissatisfaction.

<br><br><br>


# Discovering and Ingesting Data into Dynatrace
### OneAgent Installation and Use Cases
Dynatrace simplifies the data collection process with **OneAgent**, its core software intelligence agent. OneAgent automatically collects performance metrics from infrastructure, applications, processes, containers, and logs—all without requiring multiple agents or complex configurations. <br>
**Key Benefits:**
- OneAgent handles host-level, process-level, and container-level monitoring.
- Automatically discovers services and dependencies.
- Requires no manual configuration post-installation.

Use cases for OneAgent include:
- Monitoring .NET, Java, and other applications.
- Container-based infrastructure (e.g., Docker).
- Cloud-native environments like GCP, AWS, or Azure.

<br>

### Installing OneAgent
The installation of OneAgent is straightforward. Once installed, it:
- Begins sending telemetry to Dynatrace immediately.
- Requires no additional steps to collect logs, CPU, memory, network, or process metrics.
- Enables full-stack observability with minimal effort.

<br>

### ActiveGate
**ActiveGate** is Dynatrace’s proxy and data transfer service. It is useful when:
- You need to monitor environments behind firewalls or NAT.
- Reducing outbound traffic is important.
- Integrating with external APIs or enabling synthetic monitoring.

ActiveGate relays data from OneAgents to the Dynatrace cluster and is also used in synthetic tests and cloud integrations. <br>

### Other Data Collection Methods
Dynatrace supports various other collection methods beyond OneAgent:
- **Log Ingestion:** Native log analysis from OneAgent or external ingestion.
- **APIs:** Use Dynatrace APIs to push custom metrics or retrieve platform data.
- **Direct Integrations:** Dynatrace connects with third-party systems like cloud services, CI/CD tools, and more (e.g., AWS CloudWatch, Kubernetes).

<br>

### Real User Monitoring (RUM) and Synthetic Monitoring
Dynatrace also supports **ageless** or **agentless** monitoring using:
- **Real User Monitoring (RUM):** Captures actual user sessions and experience across web or mobile applications.
- **Synthetic Monitoring:** Simulates user activity using pre-configured tests to measure uptime, performance, and availability from different geographies.


<br><br><br>

## Deploying Dynatrace OneAgent
### Evolution of OneAgent
Dynatrace originally used multiple agents tailored to specific environments—Java, .NET, PHP, and separate infrastructure agents. These were consolidated into a **single unified agent**, now known as **OneAgent**, to simplify deployment and data collection.

<br>

### What OneAgent Does
OneAgent is a lightweight software component that is installed on each host you want to monitor. It collects and sends telemetry data from applications, services, servers, databases, containers, and even mainframes directly to Dynatrace for analysis. <br>
**Key Capabilities:**
- Collects both **infrastructure** and **application** performance data.
- Supports **cloud-native**, **on-prem**, and **hybrid** environments.
- Operates across **containers**, **VMs**, and **bare-metal** systems.
- Requires **no upfront manual configuration**.

<br>

### Supported Environments
OneAgent works across a wide range of technologies and platforms:
- Operating Systems: Windows, Linux, and IBM z/OS
- Cloud Providers: AWS, Azure, GCP
- Container Platforms: Kubernetes, OpenShift, Cloud Foundry
- Traditional and modern environments

<br>

### Installation and Operation
Once installed on a host:
- OneAgent **automatically scans** running processes.
- It **injects language-specific modules** for supported applications (e.g., Java, .NET) to enable deep monitoring.
- If deep instrumentation is not desired, this behavior can be disabled.

<br>

### Operation Modes
OneAgent supports two modes of operation:
- **Full Stack Mode (Default):** Collects data from both infrastructure and application layers. Ideal for end-to-end observability.
- **Infrastructure Mode:** Focuses only on host-level metrics (CPU, memory, disk, network). Lower resource consumption, but limited visibility into application performance.

<br>

### Data Transmission and Security
- Data is sent from OneAgent to Dynatrace over a **secure TLS connection (port 443)**.
- **Unidirectional communication**: There is no incoming communication from the Dynatrace cluster to the agent, minimizing security risks.
- Data includes host metrics, process data, application traces, logs, and real user monitoring metrics.

<br>

### Real User Monitoring (RUM)
As part of the OneAgent capabilities:
- A **JavaScript tag is injected** into the HTML of monitored web apps.
- This enables **Real User Monitoring**, tracking actual user interactions with the application in real time.

<br>

### Log Monitoring
OneAgent automatically collects log files generated by the host and application processes.
- These logs are forwarded to Dynatrace for centralized analysis.
- Helps in pinpointing issues ("needle in the haystack") efficiently.

<br><br><br>

## Discussing Dynatrace ActiveGate
### What is ActiveGate?
**Dynatrace ActiveGate** is a **recommended but optional** component that acts as a **secure proxy** between your monitored environment and the Dynatrace monitoring cluster (SaaS or Managed). It enhances OneAgent functionality by collecting, preprocessing, and forwarding data — especially when OneAgent can't or shouldn't perform certain tasks.

### Key Functions of ActiveGate
- **Acts as a Proxy:**
  Routes monitoring data securely from OneAgent or other sources to Dynatrace.
- **Extends Monitoring Capabilities:**
  ActiveGate can:
  - Run **API-based monitoring** for cloud and data center services
  - Perform **private synthetic monitoring tests**
  - Collect **z/OS mainframe** performance metrics
- **Modular Design:**
  Each monitoring capability (e.g., cloud integration, OneAgent data relay, synthetic monitoring) is implemented as a **module** within ActiveGate.

### Deployment Architectures
There are two primary Dynatrace deployment types, and each uses ActiveGate differently:

#### 1. **Dynatrace SaaS**
- Use the **Environment ActiveGate**
- Listens on **port 9999 (HTTPS)** for incoming data from OneAgent and other sources
- Forwards processed data to Dynatrace over **port 443 (HTTPS)**

#### 2. **Dynatrace Managed**
- Requires **both**:
  - **Environment ActiveGate** (same as above)
  - **Cluster ActiveGate**, which:
    - Allows **external environments (e.g., cloud or internet)** to send data securely
    - Prevents exposing the internal Dynatrace Managed cluster to external networks


### Deployment Topology
- ActiveGates can sit:
  - Between **OneAgents and the Dynatrace Cluster**
  - Between **OneAgents and other ActiveGates** (for multi-layered routing)

This flexibility supports both simple and complex enterprise environments.



### Benefits of Using ActiveGate
1. **Centralized Data Relay:**
   Acts as a single collection and forwarding point, simplifying troubleshooting and control.

2. **Reduced Network Latency and Bandwidth:**
   - Cuts down long network round-trips
   - Compresses data before forwarding

3. **Alternative Data Collection:**
   Supports environments **where OneAgent cannot be installed**, such as:
   - Restricted cloud environments
   - Legacy or specialized systems (e.g., z/OS)


### Supported Platforms
- ActiveGate can be installed on:
  - **Linux**
  - **Windows**
  - **Containerized environments**

> **Best Practice:** Install ActiveGate on its **own dedicated system** to avoid resource contention with other applications.


### Required Ports
- **9999**: For inbound communication from OneAgent
- **443**: For outbound communication to Dynatrace clusters
- Ensure these ports are open in your firewall and networking rules for full functionality.

<br><br><br>

## Collecting Custom Data with Dynatrace API
### Overview
While **OneAgent** and **ActiveGate** are the primary data collectors in Dynatrace, you can also send **custom or unsupported data** directly using the **Dynatrace API**. This is particularly useful for integrating **business metrics**, **third-party system data**, or **custom events** into your monitoring environment.

### Dynatrace API Types
Dynatrace provides two major types of APIs:

#### 1. **Environment API**
Used to **send or retrieve data** related to your **monitoring environment**.
Examples:
- Send custom metrics for systems not natively supported by Dynatrace
- Submit custom event data to be visualized and analyzed in the Dynatrace UI

#### 2. **Configuration API**
Used to **manage and configure the monitoring environment** programmatically.
Examples:
- Create and configure new dashboards
- Modify alerting profiles or tagging rules


### How It Works
- Communication is performed using **HTTP requests** with **JSON-formatted payloads**
- You target the correct endpoint based on your API type:
  - For custom metrics → `Environment API /metrics` endpoint
  - For custom events → `Environment API /events` endpoint
  - For dashboard setup → `Configuration API /dashboards` endpoint

### Use Cases
- Integrate **unsupported systems** by pushing metric data
- Submit **business logic-related events** not automatically tracked
- Automate **infrastructure-as-code** style configuration of dashboards and alerts

### Benefits
- Full control over what data is visualized in Dynatrace
- Extend visibility into **custom environments** and **external systems**
- Dynamically manage monitoring setups via **API automation**

<br><br><br>

## Collecting Data from Logs
Dynatrace supports **log monitoring** using both **agent-based collection** (via OneAgent) and **API-based ingestion**, making it flexible and compatible with modern hybrid infrastructures. By default, OneAgent starts collecting logs immediately after installation, but manual configuration is possible when automatic discovery doesn’t detect certain log files.


### Log Collection Methods
#### 1. **OneAgent-Based Collection**
- Automatically collects logs upon installation.
- If logs are not automatically discovered, you can manually define **log file paths** for OneAgent to monitor.
- Works seamlessly in **containerized environments**, requiring minimal setup.

#### 2. **Log Monitoring API**
- Part of the **Environment API**, used for pushing external logs to Dynatrace.
- Useful for logs from services such as:
  - Amazon CloudWatch
  - Azure Monitor
  - Open source tools like **Logstash** or **Fluentd**
- Log data is sent in **JSON format**.

#### 3. **Routing Considerations**
- In **Dynatrace SaaS without ActiveGate**, data flows directly to Dynatrace servers.
- In **Dynatrace Managed** or **ActiveGate setups**, logs are forwarded via the ActiveGate (environment or cluster).

<br>

### Log Monitoring Products
#### **1. Log Monitoring Classic**
- Formerly known as *Log Monitoring V2*.
- Uses **schema-on-write** and **indexing** for log storage and queries.
- Analyzed using the **Dynatrace Pattern Language (DPL)**.
  - DPL enables pattern-matching rules to structure and extract insights from log content.
- Search performed in the **Log Viewer** interface.
#### **2. Log Management and Analytics**
- A modern product built on top of the **Grail** platform.
- Uses **indexless** and **schema-on-read** architecture (data lakehouse model).
- Supports unified ingestion and storage of:
  - **Logs**
  - **Metrics**
  - **Traces**
- Enables high-speed ingestion and versatile querying using the **Dynatrace Query Language (DQL)**.
  - Allows dynamic querying without requiring predefined schema at ingest time.
  - Provides more scalability and flexibility for modern observability needs.

### Key Benefits of Grail-Based Log Management
- Centralized data storage across logs, metrics, and traces
- Faster ingestion without schema enforcement
- Advanced querying via DQL for detailed analysis
- Designed for modern observability at scale


<br><br><br>


## Collecting Data with Integrations
While OneAgent and the Dynatrace API offer powerful data collection options, Dynatrace also supports **a wide range of integrations** to extend observability into third-party tools and platforms. These integrations simplify monitoring across hybrid and cloud-native environments, and help ensure timely alerting and efficient incident response.

### Integration Categories
#### **1. Cloud Platform Integrations**
- Dynatrace integrates with major cloud providers:
  - **Amazon Web Services (AWS)**
  - **Microsoft Azure**
  - **Google Cloud Platform (GCP)**
- When installing OneAgent isn't feasible (e.g., serverless or storage services), Dynatrace can ingest metrics from:
  - **Amazon CloudWatch**
  - **Azure Monitor**
  - **Google Cloud Operations Suite** (formerly Stackdriver)
- These integrations use your cloud credentials to collect telemetry such as resource usage, health, and latency, helping you maintain visibility across your cloud services.

#### **2. Incident Notification Integrations**
- Dynatrace can push problem alerts to third-party incident management platforms, enabling faster troubleshooting and reduced MTTR.
- Supported platforms include:
  - **Jira**
  - **PagerDuty**
  - **ServiceNow**
- These integrations can:
  - Auto-create problem tickets
  - Trigger remediation workflows
  - Send immediate alerts based on detected anomalies
- If your preferred tool isn't natively supported, you can use **webhooks**:
  - Define a target URL
  - Dynatrace sends **HTTP POST** requests to notify external systems
  - Works with any tool that accepts HTTP-based communication

### Integration Management
- All integrations are accessible through the **Dynatrace Hub** within the Dynatrace UI.
- The Hub allows:
  - Discovering new integrations
  - Managing existing configurations
  - Enabling and disabling specific data flows

<br><br><br>
