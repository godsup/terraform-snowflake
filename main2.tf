    # Add the provider and specify which role to use
    # provider "snowflake" {
    #     alias = "security_admin"
    #     role  = "SECURITYADMIN"
    # }
    #Create a role
    # resource "snowflake_role" "role" {
    #     provider = snowflake.security_admin
    #     name     = "TF_DEMO_SVC_ROLE"
    # }
    #Create a database grant
    # resource "snowflake_database_grant" "grant" {
    #     provider          = snowflake.security_admin
    #     database_name     = snowflake_database.db.name
    #     privilege         = "USAGE"
    #     roles             = [snowflake_role.role.name]
    #     with_grant_option = false
    # }
    #Create a database schema
    # resource "snowflake_schema" "schema" {
    #     database   = snowflake_database.db.name
    #     name       = "TF_DEMO"
    #     is_managed = false
    # }
    #Create a schema grant
    # resource "snowflake_schema_grant" "grant" {
    #     provider          = snowflake.security_admin
    #     database_name     = snowflake_database.db.name
    #     schema_name       = snowflake_schema.schema.name
    #     privilege         = "USAGE"
    #     roles             = [snowflake_role.role.name]
    #     with_grant_option = false
    # }
    #Create a warehouse grant
    # resource "snowflake_warehouse_grant" "grant" {
    #     provider          = snowflake.security_admin
    #     warehouse_name    = "warehouse_1"
    #     privilege         = "USAGE"
    #     roles             = [snowflake_role.role.name]
    #     with_grant_option = false
    # }
    #Private key generation for user
    # resource "tls_private_key" "svc_key" {
    #     algorithm = "RSA"
    #     rsa_bits  = 2048
    # }
    #Create snowflake user and specify generated private key
    # resource "snowflake_user" "user" {
    #     provider          = snowflake.security_admin
    #     name              = "tf_demo_user"
    #     default_warehouse = "warehouse_1"
    #     default_role      = snowflake_role.role.name
    #     default_namespace = "${snowflake_database.db.name}.${snowflake_schema.schema.name}"
    #     rsa_public_key    = substr(tls_private_key.svc_key.public_key_pem, 27, 398)
    # }
    #Create role grant
    # resource "snowflake_role_grants" "grants" {
    #     provider  = snowflake.security_admin
    #     role_name = snowflake_role.role.name
    #     users     = [snowflake_user.user.name]
    # }