variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "mongodb-ridchenko"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "node_group_name" {
  description = "Name of the node group"
  type        = string
  default     = "mongodb-nodes"
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
  default     = "t3.medium"
}
