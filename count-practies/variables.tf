
variable "instances" {
    default = ["mongodb", "redis", "mysql", "nodejs", "payment", "nginx", "frontend"]
    type = list(string)
}

variable "zone_id" {
    default = "Z0015741NRYMEGWZEYS6"
    type = string
}

variable "domain_name" {
    default = "thoshi.online"
    type = string
}