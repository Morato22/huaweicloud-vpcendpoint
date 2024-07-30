# Variavel de credenciais da Huawei Cloud, sendo regiao, AK, SK
variable credentialshwc {
    type = list(string)
    default = ["sa-brazil-1","..", ".."]
}


### VPC, SUBNETS AND SECURITY GROUPS VARIABLES ###
variable create_vpc {
    type = bool
    default = true
    description = "Insert true to create the VPC, Subnet and Security Group. Insert false to not create"
}
variable vpc_name {
    type = string
    description = "VPC Name"
}

variable vpc_cidr {
    type = string
    description = "VPC CIDR"
}

variable subnet_name {
    type = string
    description = "Subnet Name"
}

variable subnet_cidr {
    type = string
    description = "Subnet CIDR"
}

variable "subnet_gateway" {
    type = string
    description = "Subnet Gateway"
}

variable secgroup_name {
    type = string
    description = "Security Group Name"
}

variable secgroup_rule {
    type = list(object({
        secgroup_rule_direction      = string
        secgroup_rule_ethertype      = string
        secgroup_rule_protocol       = string
        secgroup_rule_ports          = string
        secgroup_rule_ip-prefix      = string
    }))
    description = "Security Group Rules"
}

### VPC ENDPOINTS VARIABLES ###
variable "create_vpcep" {
  type = bool
  default = true
  description = "Insert true to create the VPC Endpoint. Insert false to not create"
}

variable "service_private_id" {
  type = string
  description = "Private Service ID"
}

variable endpoint_dns {
    type = bool
    default = false
    description = "Insert True to create an endpoint with DNS. Insert false to not create"
}

variable endpoint_whitelist_enable {
    type = bool
    default = true
    description = "Insert true to create a whitelist to the Endpoint. Insert false to not create"
}

variable "endpoint_whitelist" {
    type = list(string)
    description = "Insert the CIDR of the IPs in the whitelist"
}