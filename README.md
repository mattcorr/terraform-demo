# Summary

This git was created as the source for the code in [this blog post](https://www.intrepidintegration.com/tech/how-to-reference-data-objects-with-terraform/).

Feel freed to clone and have a play with some `for_each` commands in terraform.

## Setup
The only think you need to do is get your AWS credients configured. This project expects the **AWS_PROFILE** environment variable to be configured and pointing to a credentials config file located at `~/.aws/credentials`

You will also need to have [terraform 0.12.16](https://www.hashicorp.com/products/terraform/) or greater installed.

## Execution

* Clone the repo
* Ensure your aws credentials are configured
* Run the following commands:
```
terraform init
terraform plan
terraform apply
```

## Cleanup
When you are finished playing around, you can clean up with:
```
terraform destroy
```

If there are any issues, please let me know!