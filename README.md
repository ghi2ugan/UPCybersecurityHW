## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![UPCybersecurityHW/Diagrams/Resource_Group_RT2.drawio.pdf](Resource_Group_RT2.drawio.pdf)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
- Beats in Use
- Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly efficient as it distributes traffic evenly among servers, in addition to restricting traffic to the network in order to mitigate DoS attacks.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.4   | Linux            |
| Web1     | Webserver| 10.1.0.5   | Linux            |
| Web2     | Webserver| 10.1.0.6   | Linux            |
| ELKVM    | ELKServer| 10.2.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Home: 96.232.33.81

Machines within the network can only be accessed by my home (96.232.33.81) .

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No                  | Home IP              |
| Web1     | No                  | Home IP              |
| Web2     | No                  | Home IP              |
| ELKVM    | No                  | Home IP              |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because which is advantageous because it lowers the risk of incorrect configurations. It also runs each task individually, ensure proper installation before moving onto the next task and provides error messages showing potentials reason for error. 

The playbook implements the following tasks:
- Install ELK Server
- Install Filebeat
- Install Metricneat

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![UPCybersecurityHW/Screenshots/docker_ps_elk_screeshot](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.1.0.5
- 10.1.0.6

We have installed the following Beats on these machines:
- filebeat
- metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat forwards and organizes log data. We will expect to see a list of logs as well as visual representation of log data
- Metricbeat forwards and organizes information from the operating systems and presents it in graph data.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook.yml file to /etc/ansible/rolse.
- Update the filebeat-playbook.yml file to include IPs for the Web1 and Web2 webservers and ELK's IPs
- Run the playbook, and navigate to http://13.64.52.115:5601/app/kibana to check that the installation worked as expected.

**Bonus
- In order to run the playbook use the following command:
  
    ansible-playbook /etc/ansible/roles/filebeat-playbook.yml

- In order to update the playbook use the following command:
    nano /etc/ansible/roles/filebeat-playbook.yml