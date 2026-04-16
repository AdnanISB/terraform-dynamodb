variable "table_name" { 
type = string 
default = "orders-table-main"
} 
variable "billing_mode" { 
type    = string 
default = "PAY_PER_REQUEST" 
} 
variable "hash_key" { 
type = string 
default = "user_id"
} 
variable "range_key" { 
type = string 
default = "order_id"
} 
variable "ttl_attribute" { 
type    = string 
default = "ttl" 
} 
variable "tags" { 
type = map(string) 
default = {
  Environment = "dev" 
  Project     = "DynamoDB-Automation" 
}
}