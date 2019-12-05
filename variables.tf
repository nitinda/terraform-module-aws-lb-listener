variable "load_balancer_arn" {
  description = "The ARN of the load balancer."
}

variable "listener_port" {
  description = "The port on which the load balancer is listening."
}

variable "listener_protocol" {
  description = "The protocol for connections from clients to the load balancer."
}

variable "target_group_arn" {
  description = "The ARN of the Target Group to which to route traffic. "
}

