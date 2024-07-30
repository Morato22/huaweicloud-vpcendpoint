vpc_name = "vpc-tf"
vpc_cidr = "192.168.0.0/16"

subnet_name    = "subnet-tf"
subnet_cidr    = "192.168.0.0/24"
subnet_gateway = "192.168.0.1"

secgroup_name = "sg-tf"

secgroup_rule = [{
  secgroup_rule_direction = "ingress"
  secgroup_rule_ethertype = "IPV4"
  secgroup_rule_protocol  = "tcp"
  secgroup_rule_ports     = "22,80"
  secgroup_rule_ip-prefix = "0.0.0.0/0"
  },
  {
    secgroup_rule_direction = "egress"
    secgroup_rule_ethertype = "IPV4"
    secgroup_rule_protocol  = "tcp"
    secgroup_rule_ports     = "1-65535"
    secgroup_rule_ip-prefix = "0.0.0.0/0"

  }
]


### VPC ENDPOINT VARIABLES ###
service_private_id = ".."

endpoint_whitelist = [ "192.168.0.0/24", "192.168.0.1/24"]