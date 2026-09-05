variable "instances" {
    default = ["mongodb", "redis", "nodejs", "mysql", "nginx", "catalogue", "frontend", "cart", "payment", "shipping"] 
    type = list(string)
    }

variable "zone_id" {
    default = "Z1D633PJN98FT9"  # need to replace with your own zone id
    type = string
}

variable "domain_name" {
    default = "Thoshi.online"  # need to replace with your own domain name
    type = string
}

variable "fruits" {
    default = ["apple", "banana", "mango", "apple", "orange"]
    type = list(string)
}

variable "fruits" {
    default = ["apple", "banana", "mango", "apple", "orange"]
    type = set(string)
}