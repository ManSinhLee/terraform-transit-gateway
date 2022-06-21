This project create a transit gateway for 3 subnets can connect together without using peering
Description:

1. config.tf: set up terraform version and aws configure

2. data.tf: contains aws available zones info and ami

3. ec_instances: contains 6 instances(3 in public subnets and 3 in private) to test connection

4. igw.tf: contains code to create 3 internet gateways for 3 vpcs

5. key_pairs.tf: create key_pairs from existing public_key

6. nat_gateways.tf: create 3 nat gw for private subnets

7. network_acl.tf: create inbound and outbound rules for subnets

8. output.tf: show info of resources after created

9. route_tables.tf: create route tables for subnets

10. rtb_association.tf: associate subnets to route tables

11. security_groups.tf: create security groups for instances in subnets

12. subnets.tf: create subnets on every az of region

13. transit_gateway.tf: create transit gateway for 3 vpcs

14. variables.tf: define some variables to avoid repeate info

15. vpc.tf: create 3 vpcs


Commands to use terraform:
1.  Initialize a new or existing Terraform working directory:
terraform init

2. Generates a speculative execution plan
terraform plan

3. Creates or updates infrastructure according to Terraform configuration files in the current directory
terraform apply

4. show resources:
terraform show

5. delete resources:
terraform destroy