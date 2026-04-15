provider "aws" { 
  region = "us-east-1" 
} 
 
resource "aws_dynamodb_table" "orders" { 
  name         = "orders-table" 
  billing_mode = "PAY_PER_REQUEST" 
 
  hash_key  = "user_id" 
  range_key = "order_id" 
 
  attribute { 
    name = "user_id" 
    type = "S" 
  } 
 
  attribute { 
    name = "order_id" 
    type = "S" 
  } 
 
  attribute { 
    name = "order_status" 
    type = "S" 
  } 
 
  attribute { 
    name = "ttl" 
    type = "N" 
  } 
 
 
  global_secondary_index { 
    name            = "OrderStatusIndex" 
    hash_key        = "order_status" 
    projection_type = "ALL" 
  } 
 
  point_in_time_recovery { 
    enabled = true 
  } 
 
  ttl { 
    attribute_name = "ttl" 
    enabled        = true 
  } 
 
  server_side_encryption { 
    enabled = true 
  } 
 
  tags = { 
    Environment = "dev" 
    Project     = "DynamoDB-Automation" 
  } 
}