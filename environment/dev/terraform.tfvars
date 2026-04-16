table_name = "orders-table-dev"
billing_mode = "PAY_PER_REQUEST"
hash_key = "user_id"
range_key = "order_id"
ttl_attribute = "ttl"
tags = {
  Environment = "dev" 
  Project     = "DynamoDB-Automation" 
}