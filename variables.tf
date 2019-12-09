variable "aws_region" {
  type        = string
  description = "The AWS region where this infrastructure lives"
  default     = "ap-southeast-2"
}

variable "sqs_names" {
  type = list(string)
}


variable "sqs_data" {
  type = map(object({
    delay        = number
    max_msg_size = number
    environment  = string
  }))
}
