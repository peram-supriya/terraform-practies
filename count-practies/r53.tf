resource "aws_route53_record" "www" {
  count   = 7
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"   #mongodb.thoshi.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}