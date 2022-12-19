terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
}

#DATABASE CREATIION
resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

#WAREHOUSE
resource "snowflake_warehouse" "warehouse" {
  name           = var.warehouse_name
  warehouse_size = var.warehouse_size

  auto_suspend = 60
}