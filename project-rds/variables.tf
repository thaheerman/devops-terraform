############### Main Variables ##################

variable "main_allocated_storage"{
type = number
default = 8
}
variable "main_db_engine"{
type = number
default = MYSQL
}
variable "main_db_instance_class"{
type = number
default = t2.micro
}
variable "main_db_username" {
type = string  
default = thaheer
}
variable "parameter_group_name" {
    type = string 
    default = man
}
variable "password " {
type = string  
default = thaheer
}
variable "main_db_version" {
    type = string
    default = MYSQL8.0.35
  
}
#################replica##############
variable "replica_instance_class" {
    type = string
    default = 1
  
}

variable "replica_count" {
  type = number
  default = 2
}

variable "rds_replica_azs" {
  type = list(string)
  default = ["ap-south-1a,ap-south-1b"]
}
variable "sg_vpc_id" {
    type = string
    default = vpc-0ca1359b6392ee9df
  
}
variable "sg_ingress_from_port" {
    type = number
    default = 80
  
}
variable "sg_ingress_to_port" {
    type = number
    default = 80
}
variable "cidr"{
type = list(string)
default = ["0.0.0.0/0"]
}
variable "sg_protocol" {
    type = string
    default = tcp
}
variable "sg_name" {
  type = string
  default = new
}
