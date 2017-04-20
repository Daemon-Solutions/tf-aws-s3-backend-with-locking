# tf-aws-s3-backend-with-locking

This creates resources for an [S3 backend](https://www.terraform.io/docs/backends/types/s3.html) with locking for Terraform 0.9.x.

The resources are:

* 1 S3 bucket
* 1 DynamoDB table

This is intended for once-off creation when starting a project, so that the other stacks can use it for remote state storage. As such, it makes sense to use a local backend here and use `terraform import` to recreate the state as needed.

> Note: the S3 bucket has `prevent_destroy = true` just to be safe. This is not a variable due to issue [#3116](https://github.com/hashicorp/terraform/issues/3116).

## Usage

```
module "tfstate" {
  source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-s3-backend-with-locking.git"

  bucket = "bashton-tfstate-prod"
  table  = "bashton-tfstate-prod"

  tags {
    customer = "bashton"
    env      = "prod"
    stack    = "tfstate"
  }
}
```

## Variables

See `variables.tf`

## Outputs

See `outputs.tf`
