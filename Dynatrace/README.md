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