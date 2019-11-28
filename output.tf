output "arn" {
  value = "${aws_lb_listener.lb_listener.arn}"
}

output "id" {
  value = "${aws_lb_listener.lb_listener.id}"
}