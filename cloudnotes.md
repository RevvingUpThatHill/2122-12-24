# AWS
# Types of offerings
IaaS
    Infrastructure as a service
    IE: you are purchasing the most raw computing service possible, ie,
        a virtual machine (EC2)
    This is great when we need direct access to the underlying OS & installs.
        (in our case, we need to install specific apps on our services, like
        docker, so we need a high level of access)
PaaS
    Platform as a service
    IE: you are purchasing a somewhat abstracted computing service where you
        have limited access to the underlying software, but no access to the
        underlying OS. (RDS - we can send our RDS SQL commands, but we can't
        access Linux.)
    Managed cloud platforms such as AKS, Cloudformation
SaaS
    Software as a service
    IE: a full solution for our use case is provided in a highly abstracted manner
    which does not reflect the underlying code or infrastructure used in the tool
    we are purchasing
    Salesforce, servicenow
# EC2
A VM that we rent.
Based off of a machine image (eg Ubuntu).
Basic infrastructure offering.
# RDS
Managed DB service.
# Region
Is a physical location where the data center for our service exists.
 - Matters for latency
 - Matters for redundancy
    - EG, in the event of a major disaster, or outage, etc, a certain region may be at risk
# Availability zone
Is a duplicate data center which exists in a region which is physically separate from
other availability zones (they exist on separate power grids and separate internet cables)
# Security groups
Reflect network rules for our services (eg, which IPs can access the service, and on which port)
# Advantages of cloud
- A lot of the IT work related to running the app is already being performed by the cloud providers
    - Premade services offered by AWS
        - load balancing
        - auto scaling
    - Security
- Scaling
    - Cloud provides an easy path to scaling up our scaling down an application
    - Autoscaling
        - Even though the services are more expensive on the cloud than self-hosted, we only pay for what we use instead of keeping excess computing hardware around.
            - save money during periods of low traffic and not have to worry about getting more hardware for high traffic
# Free tier
- Please only choose services that are "free tier eligible"
- Please restrict your usage of these services as they follow a time quota
