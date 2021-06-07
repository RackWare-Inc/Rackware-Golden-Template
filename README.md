---
copyright:
  years: 2019, 2021
---
## Product Overview
RackWare's RMM Migrations are an automated, easy and convenient process to move existing workloads between different data centers and the IBM Cloud, creating an exact duplicate of a running image without the burden of rebuilding or recreating template images and applications. Migrating large complex environments through a simple interface and automated tasks reduces the time required from weeks to days.


RackWare’s RMM software platform delivers a suite of intuitive and automated services that provide IT resiliency and simplified migration to the cloud, while reducing capital and operating expenses. RMM decouples the application stack from the underlying platform allowing it to be ported to the IBM Cloud infrastructure. Rackware RMM includes discovery, analysis and automation features allowing all processes to be fast, easy and error-free


Key Benefits
- Non-disruptive / Live Migrations
- Highly secure and efficient data transfer.
- Include / Exclude Lists: Capture and sync only specific files and directories rather than entire systems.
- Delta Sync: Sync only the changed parts of files during the final data sync, drastically lowering cutover times.
- Network optimization: bandwidth usage limitations, compression and check point restart for all sync operations


For more information, visit https://www.rackwareinc.com/cloud-migration


## Before you begin
This will create a new VPC environment where the VSI with the RMM server is being deployed.  Make sure you have the following:
- Proper IBM Cloud VPC permissions and access
- Identify a region and zone on where you will want to  deploy the RMM server
- The region should be under IBM Cloud VPC quota for VPC, security groups, and floating IP


### Ordering Page Deployment Values
This will create a new VPC to install the RMM server.


| Parameter | Description | Value |
| --- | --- | --- |
| TF_Version | terraform engine version to be used in schematics | Leave default value |
| ibm_region | IBM Cloud region where the resources to be deployed | MZR (i.e, us-south) |
| ibmcloud_api_key | IBM Cloud VPC API key needed to deploy IAM enabled resources | API key |
| image_url |  | Leave default value |
| name | The name of the VPC | Any arbitrary name that complies to IBM VPC naming schema |
| profile | | Leave default value |
|resource_group | IBM Cloud resource group | Name of an existing resource group that you want this resource to be placed under |
| ssh_key | Public ssh key to login into the resource | Name of an existing SSH key of the region that you wished to login in with |
| zone | VPC zone that you wished to deploy the resource in | Zone name (ie., us-south-1) |


## License Requirements
RMM server on the IBM Cloud is bring your own license (BYOL).  If this the first time order and using Rackware RMM server, then there is a 3 month promotional period.  Thereafter you will need to purchase the license directly from Rackware ( licensing@rackwareinc.com ).


For additional information about pricing or inquiries, reach out to sales@rackwareinc.com


### Promotional License
The promotional license is per account and for first time usage only.  You are allowed up to 3 licenses and the licenses are reusable up to the 3 months usage period.  See Production Configuration section for more information.


## Installing the software
No extra step is needed.  When deploying the VSI, the RMM software will come pre-installed.  You can access RMM thorugh the CLI or GUI.  For GUI access, enter the public IP address of the RMM server.  Default credential is admin and rackware for password.  Be sure to change the default password.


Link to the user guide for RMM server, https://www.rackwareinc.com/rackware-rmm-users-guide-for-ibm-cloud


### Production configuration
- Change the default password
- Create additional user (optional)
- *First time usage only* Obtaining the promotional license `$ /opt/IBM/discoverTool -p`


## Uninstalling the software
Complete the following steps to uninstall a Helm chart from your account. 


1. Go to the **Menu** > **Schematics**.
2. Select your workspace name. 
3. Click **Actions** > **Destroy resources**. All resources in your workspace are deleted.
4. Click **Update**.
5. To delete your workspace, click **Actions** > **Delete workspace**.


## Getting support
For the first 3- months of the promotional period, this product is supported through our partner with Wanclouds.  A case can be open by the following, in both cases please add Rackware RMM in the subject line:
- Email at support@wanclouds.net
- Support Page https://support.wanclouds.net


After the 3- month promotional period, please open any issues directly with Rackware support team at support@rackwareinc.com. Your issue will typically be answered approximately as per the SLA timelines.
