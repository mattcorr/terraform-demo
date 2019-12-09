#define the variables in the variables.tf file
aws_region = "ap-southeast-2"

sqs_names = [
    "matt_test_one", 
    "matt_test_one_again",
    "matt_test_two", 
    "matt_test_three"]


sqs_data = {
    matt_test_one = {
        delay = 10
        max_msg_size = 1024
        environment = "dev"
    },
    matt_test_two = {
        delay = 10
        max_msg_size = 2048
        environment = "test"
    },
    matt_test_three = {
        delay = 5
        max_msg_size = 4096
        environment = "prod"
    }
}