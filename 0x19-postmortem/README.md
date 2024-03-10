A POSTMORTEM ON A LOGIN OUTAGE

Issue Summary:
•Duration: March 7, 2024, 10:00 AM - March 7, 2024, 2:00 PM (UTC)
•Impact: The login service experienced intermittent outages that resulted in 30% of users
being unable to access their accounts and causing frustration and potential loss of productivity.
•Root Cause: The outage resulted from an unexpected surge in traffic due to a new marketing campaign, coupled with an underlying database bottleneck.

Timeline:
•10:00 AM: The issue was detected through monitoring alerts that indicated an increased latency in the login service.
•10:15 AM: Engineers investigated the potential software misconfigurations or server issues.
•11:00 AM: Misleading investigation paths included focusing on network connectivity and load balancer configurations.
•12:00 PM: The incident was escalated to the DevOps team as the issue was now beyond standard troubleshooting.
•1:30 PM: The root cause of the problem was identified as a database bottleneck under the increased load.
•2:00 PM: The incident was resolved by optimizing database queries and scaling up database resources.

Root Cause and Resolution:
The root cause of the issue was identified as a sudden surge in traffic that overwhelmed the database,
leading to an increase in query latency and service degradation.
A new marketing campaign triggered the surge,
causing more users than anticipated to attempt simultaneous logins.
In order to resolve the issue, database queries were optimized
and additional resources were provisioned to handle the increased load.
Specifically, indexing strategies were improved, and database instances were scaled vertically in order to accommodate the influx of requests.

Corrective and Preventative Measures:
Improvements/Fixes:
Implementing proactive monitoring to detect traffic spikes and performance degradation.
Optimizing database schemas and query performance regularly in order to prevent similar issues.
Developing and testing failover mechanisms to handle unexpected traffic surges.

Tasks:
Implementing automated scaling policies for database resources based on traffic patterns.
Conducting load testing simulations to evaluate system performance under various scenarios.
Updating incident response procedures to streamline escalation and resolution processes.
