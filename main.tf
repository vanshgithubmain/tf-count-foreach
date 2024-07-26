//COUNT
resource "newrelic_alert_policy" "rp1" {

    count = length(var.vpolicy)
    name = "demo-policy-${count.index}"
  
}

variable "vpolicy" {
    default = ["p1","p2" ,"p3" ,"p4","p5"]
  
}

# variable "vpolicy" {
#     default = ["p1","p3","p5"]        //deleting p2 and p4
  
# }


//Foreach
# resource "newrelic_alert_policy" "rp2" {
#     for_each = var.vpolicy2
#     name = each.value

# }

# variable "vpolicy2" {
#     type = map(string)
#     default = {
#       k1 ="p11"
#     #   k2="p22"        //deleting
#       k3="p33"
#     #   k4="p44"        //deleting
#       k5="p55"

#     }
  
# }