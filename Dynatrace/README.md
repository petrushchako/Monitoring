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

