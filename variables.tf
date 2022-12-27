

#This is another way how to use type = map variables
# variable "warehouse" {
#     description = "Insert name and warehouse size (xsmall, small, medium, large, xlarge)"
#   type = map(object({
#     name = string
#     warehouse_size = string
#   }))
#   default =  {
#     "key" = {
#       name = "warehousedemo"
#       warehouse_size = "xsmall"
#     }
#   }
# }


#This is how you use for each loops in terraform
variable "warehouses" {
  description = "List of warehouse names to add to snowflake"
  type = map
  default = { for x in ["warehouse_1", "warehouse_2", "warehouse_3", "warehouse_4", "warehouse_5", "warehouse_6", "warehouse_7", "warehouse_8", "warehouse_9", "warehouse_10"] : x => x }
}