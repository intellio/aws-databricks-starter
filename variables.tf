variable "region" {
  description = "AWS region for VPC and Databricks workspace. Ex: us-east-2"
  type        = string
}

variable "iam_access_key" {
  description = "IAM access key for deploying Terraform resources. Recommended that this user has Admin level permissions to create resources in the AWS account"
  type        = string
}

variable "iam_secret_key" {
  description = "IAM secret key for deploying Terraform resources. Recommended that this user has Admin level permissions to create resources in the AWS account"
  type        = string
}

variable "shared_credential_location" {
  description = "Location of AWS configuration file (.aws/credentials)"
  type        = list(any)
  default     = ["~/.aws/credentials"]
}

variable "shared_config_location" {
  description = "Location of AWS configuration file (.aws/config)"
  type        = list(any)
  default     = ["~/.aws/config"]
}

variable "environment_prefix" {
  description = "Environment prefix for resource names"
  type        = string
  validation {
    condition     = length(var.environment_prefix) > 0
    error_message = "Variable cannot be empty string"
  }
}

variable "databricks_account_id" {
  description = "Databricks root account id, found in the Accounts console."
  type        = string
}

variable "databricks_client_id" {
  description = "Client id for service principal used to connect to Databricks account"
  type        = string
}

variable "databricks_client_secret" {
  description = "Client secret for service principal used to connect to Databricks account"
  type        = string
}

variable "databricks_workspace_admin_email" {
  description = "Add an admin account that will be the first user granted access to the workspace"
  type        = string
}

variable "vpc_cidr_block" {
  description = "Full CIDR range for VPC. Ex: 10.1.0.0/16. Use if not using the vpc_first_two_octets variable"
  type        = string
  default     = ""
}

variable "vpc_first_two_octets" {
  description = "First two octets for VPC range, use if using DataForge default deployment. Ex: 10.1"
  type        = string
  default     = "10.1"
}

variable "existing_vpc_id" {
  description = "Existing VPC id to deploy Databricks workspace to. Ex: vpc-123456789. Needs to be defined if not using the vpc_first_two_octets variable"
  type        = string
  default     = ""
}


variable "databricks_az1_subnet" {
  description = "AZ1 Subnet for Databricks. Ex: 10.1.128.0/18. Needs to be defined if not using the vpc_first_two_octets variable."
  type        = string
  default     = ""
}


variable "databricks_az2_subnet" {
  description = "AZ2 Subnet for Databricks. Ex: 10.1.192.0/18. Needs to be defined if not using the vpc_first_two_octets variable."
  type        = string
  default     = ""
}

variable "public_subnet" {
  description = "Public subnet id to host NAT gateway. Ex: subnet-123456789.  Needs to be defined if not using the vpc_first_two_octets variable."
  type        = string
  default     = ""
}

variable "existing_databricks_az1_subnet_id" {
  description = "Existing AZ1 subnet to deploy Databricks workspace to. Ex: subnet-123456789"
  type        = string
  default     = ""
}

variable "existing_databricks_az2_subnet_id" {
  description = "Existing AZ2 subnet to deploy Databricks workspace to. Ex: subnet-123456789"
  type        = string
  default     = ""
}

variable "existing_public_subnet_id" {
  description = "Existing public subnet to host NAT gateway. Ex: subnet-123456789"
  type        = string
  default     = ""
}

variable "existing_public_route_table_id" {
  description = "Existing public route table to create egress Internet gateway connection. Ex: rtb-123456789"
  type        = string
  default     = ""
}

variable "existing_internal_route_table_id" {
  description = "Existing internal route table to host NAT gateway route. Ex: rtb-123456789"
  type        = string
  default     = ""
}

variable "existing_internet_gateway_id" {
  description = "Existing Internet Gateway attached to VPC. Ex: igw-123456789"
  type        = string
  default     = ""
}

variable "existing_nat_gateway_id" {
  description = "Existing NAT gateway attached to VPC and internal route table. Ex: igw-123456789"
  type        = string
  default     = ""
}




