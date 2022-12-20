


variable "warehouse" {
    description = "Insert name and warehouse size (xsmall, small, medium, large, xlarge)"
  type = map(object({
    name = string
    warehouse_size = string
  }))
  default =  {
    "key" = {
      name = "warehousedemo"
      warehouse_size = "xsmall"
    }
  }
}