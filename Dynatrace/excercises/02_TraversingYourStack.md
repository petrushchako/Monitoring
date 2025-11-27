# Exercise: Traversing your Stack


1. Open the "training-shared" environment on the [training-cluster](https://dev.eu10.apm.services.cloud.sap/e/09328838-b352-44a2-bf06-60a8e1824f39) 

2. Find the following host metrics for the `spring-music-training-*` host (or explain why you can not find them):
- Memory limit of the Cloud Foundry application container memory (in GB)
- CPU usage of spring-music application and Diego cell
- Availability of spring-music host

3. Find the following process metrics for the `spring-music-training` process:
- Number of JVM threads
- Command line arguments of the Java process
  - JVM thread stack size

4. Find the following service metrics for the `AlbumController`:
- Number of requests / minute 
- Median response time
- Response time of the slowest 5% requests
- Median SQL response time for transactions
