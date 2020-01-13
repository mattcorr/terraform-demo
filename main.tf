terraform {
  required_version = "= 0.12.16"
}

# aws account is defined in ~/.aws/credientials and the AWS_PROFILE env var is set
provider "aws" {
  region  = var.aws_region
  version = ">2.40.0"
}


/*  The old way of processing variables with lists

resource "aws_sqs_queue" "message_queue" {
  count          = length(var.sqs_names)

  name           = format("%s.fifo", element(var.sqs_names, count.index))
  fifo_queue     = true
}
*/

resource "aws_s3_bucket" "test" {
  name = "test"
}


/*
resource "aws_sqs_queue" "message_queue" {
  for_each = toset(var.sqs_names)

  name             = format("%s.fifo", each.key)
  fifo_queue       = true
  }
} */

resource "aws_sqs_queue" "message_queue" {
  for_each = var.sqs_data

  delay_seconds    = each.value["delay"]
  max_message_size = each.value["max_msg_size"]
  name             = format("%s.fifo", each.key)
  fifo_queue       = true
  tags = {
    Environment = each.value["environment"]
  }
}


