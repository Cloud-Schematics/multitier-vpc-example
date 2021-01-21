##############################################################################
# Account Variables
##############################################################################

variable ibm_region {
    description = "Region for resources to be created"
    type        = string
}

variable unique_id {
    description = "Unique ID for subnets created"
    type        = string
}

variable resource_group_id {
    description = "ID of resource group where resources will be created"
    type        = string
}

##############################################################################

##############################################################################
# VPC Variables
##############################################################################

variable acl_rules {
    description = "List of ACL rules for subnets to use"
    type        = list
}


variable vpc_id {
    description = "ID of VPC where subnet needs to be created"
    type        = string
}

##############################################################################


##############################################################################
# Network variables
##############################################################################

variable cidr_blocks {
    description = "CIDR blocks for subnets to be created. If no CIDR blocks are provided, it will create subnets with 256 total ipv4 addresses"
    type        = list(string)
    default     = ["10.10.10.0/24", "10.10.11.0/24", "10.10.12.0/24"]  
}

##############################################################################


##############################################################################
# Subnet variables
##############################################################################

variable subnets_per_zone {
    description = "Number of subnets per zone"
    type        = number
    default     = 1
}

variable zones {
    description = "Number of zones to deploy subnets in"
    type        = number
    default     = 3
}

variable public_gateways {
    description = "List of public gateway ids"
    type        = list(string)
    default     = []
}


##############################################################################
