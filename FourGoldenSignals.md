# Four Golden Signals of Monitoring
The Four Golden Signals are a foundational monitoring principle introduced in Google's Site Reliability Engineering (SRE) practices. They help you detect and diagnose problems quickly in complex systems.

<br>

### **1. Latency**
- **Definition**: The time it takes to service a request.
- **Goal**: Measure how long it takes for your system to respond.
- **Types**:
    - **Successful requests**: Track average/median latency.
    - **Failed requests**: Track separately — often much higher.
    - **Example**: HTTP response time, DB query duration, API call latency.
  

### **2. Traffic**
- **Definition**: A measure of how much demand is placed on your system.
- **Goal**: Understand request volume and system load.
- **Metrics**: Requests per second (RPS), transactions per second (TPS), bandwidth, concurrent sessions.
- **Example**: Number of HTTP requests per minute on a web server.


### **3. Errors**
- **Definition**: The rate of failed requests.
- **Goal**: Detect when users are getting unexpected results.
- **Metrics**:
    - HTTP error codes (e.g., 5xx)
    - Timeouts, application exceptions
    - Custom business logic failures
    - **Example**: 2% of requests return a 500 status code.


### **4. Saturation**
- **Definition**: How "full" your system is — a measure of resource utilization.
- **Goal**: Identify performance degradation due to nearing capacity.
- **Resources to Monitor**: CPU, memory, disk, thread pools, DB connections.
- **Example**: 90% memory usage or 100% CPU on an application node.

> **What to Do When You Detect Saturation:**
> - Scale out (add more instances)
> - Optimize code or queries
> - Offload background tasks
> - Throttle or queue requests

Saturation is about capacity — when you’re close to the max, you’re saturating. When you’re at the max, you’re fully saturated, and performance issues usually follow.

<br>

### **Why These Four?**
- These four metrics help you answer:
    - Is the system healthy?
    - Is it overloaded or under attack?
    - Where should I start troubleshooting?

They’re often used in SLIs (Service Level Indicators) and SLOs (Service Level Objectives) to define performance goals and alerting thresholds.