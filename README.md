
## Product Overview
RackWare Management Module (RMM) Migration is an automated process to migrate your bare metal and virtual workloads from IBM Cloud® Classic to IBM Cloud VPC VSI. 
RMM creates an exact duplicate of a running image without the burden of rebuilding or recreating template images and applications. It decouples the application stack from the underlying platform, allowing it to be ported to the IBM Cloud infrastructure with ease. 
RMM simplifies migration of large, complex environments through a simple interface and reduces the time required from weeks to days, reducing capital and operating expenses. RMM includes discovery, analysis, and automation features, allowing all processes to be fast, easy, and error-free.

## Key Benefits
-	Live and non-disruptive migrations 
-	Highly secure and efficient data transfer 
-	Auto provision of target virtual server instance 
-	Include/Exclude lists: Capture and sync only specific files and directories rather than entire systems 
-	Delta sync: Sync only the changed parts of files during the final data sync, drastically lowering cutover times 
-	Network optimization: Bandwidth usage limitations, compression and check point restart for all sync operations 
 
For more information, visit https://www.rackwareinc.com/cloud-migration 

## Pre-requisites
Review the following pre-requisites for RMM software installation:  
-	Make sure that you have IBM Cloud account permissions and access. 
-	Identify the region and zone where you want to deploy the RMM server 
-	For more information about IBM Cloud VPC, see https://cloud.ibm.com/docs/vpc?topic=vpc-getting-started

## Software Installation/Deployment
The RMM software comes preinstalled as part of the virtual server provisioning process. After the virtual server is deployed, you can access RMM through the CLI or GUI. For GUI access, enter the public IP address of the RMM server. Default credential is “admin” and “rackware” is the password. Be sure to change the default password. 
For more information, see the user guide for the RMM server: https://www.rackwareinc.com/rackware-rmm-users-guide-for-ibm-cloud

## License Requirements
For migration using the RMM server, the license model is “Bring Your Own License” (BYOL). This is a subscription-based license, paid monthly. Each license allows you to migrate one or more servers during the subscription period.  
 If this the first-time order and using RMM server, then there is a 
3-month promotional period. Thereafter you will need to purchase the license directly from Rackware (sales@rackwareinc.com). 
For additional information about pricing or inquiries, reach out to sales@rackwareinc.com

## Promotional License
The promotional license is per account and for first time usage only. You are allowed up to 3 licenses and the licenses allow you to migrate 3 servers simultaneously, but are re-usable enabling to migrate additional servers as needed during the subscription period. See **Product Configuration** section for more information about obtaining the promotional licenses.

## Ordering Page Deployment Values
This will create a new VPC to install the RMM server.

| Parameter | Description | Value |
| --- | --- | --- |
| ibm_region | IBM Cloud region where the resources to be deployed | MZR (for example, us-south) |
| zone | VPC zone that you wish to deploy the resource in | Zone name (for example, us-south-1) |
| ibmcloud_api_key | IBM Cloud VPC API key needed to deploy IAM enabled resources | API key |
| ssh_key | Public ssh key to login into the resource | Name of an existing SSH key of the region that you wished to login in with |
| resource_group | IBM Cloud resource group | Name of an existing resource group that you want this resource to be placed under |
| vpc_ame | The name of the VPC | Any arbitrary name that complies to IBM VPC naming schema |
| subnet_name | The name of the subnet | Any arbitrary name that complies to IBM subnet naming schema |
| host_name | The name of the VSI | Any arbitrary name that complies to IBM vsi naming schema |
| attach_floating_ip | Create and attach floating IP address to RMM server | Leave default value if you do not want public adress to be created and attached |
| profile | | Leave default value |

## Product configuration
- Change the default password
- Create additional user (optional)
- *First time usage only* Obtaining the promotional license `$ /opt/IBM/discoverTool -p`
- Update VPC security groups or ACL if needed

## Uninstalling the software
Complete the following steps to uninstall a Helm chart from your account. 

1. Go to the **Menu** > **Schematics**.
2. Select your workspace name. 
3. Click **Actions** > **Destroy resources**. All resources in your workspace are deleted.
4. Click **Update**.
5. To delete your workspace, click **Actions** > **Delete workspace**.

## Support
For assistance during the Promotional Period, for the first three months of the promotional period, this product is supported through our migration partner, Wanclouds.

Please open a case via one of the following options:
- Email : support@wanclouds.net
- Support page: https://support.wanclouds.net

In all cases, please add RMM in the subject line.
The Team is available 365x24x7 and will respond to cases within 24 hours.
The Wanclouds support is based in United States, Australia, India and Pakistan.

## Support after the Promotional Period
After the three months promotional period, for assistance, contact the RackWare support team.
Open any issues directly with Rackware support team. The support team is available 365x24x7.
Open a case by using the following options: 
-	Email: support@rackwareinc.com 
-	Phone: +1 (844) 797-8776

In all cases, add RMM - IBM Cloud in the subject line. The Rackware support is based in United States and India.
