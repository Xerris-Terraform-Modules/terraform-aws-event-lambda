# AWS Lambda Triggered by Events and Run with Containers

https://registry.terraform.io/modules/Xerris-Terraform-Modules/event-lambda/aws/latest

This is a Lambda designed to be run container based code and be triggered by either S3 Events, SQS Queues, and Cloudwatch Chron Events. It includes the basic IAM permissions needed to run as well as the option to specify S3 bucket, SQS queue, DynamoDB and well as Secrets Manager ARN's to give access to.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) |
| [aws_cloudwatch_event_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) |
| [aws_cloudwatch_event_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) |
| [aws_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) |
| [aws_iam_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_lambda_event_source_mapping](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping) |
| [aws_lambda_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) |
| [aws_lambda_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) |
| [aws_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) |
| [aws_s3_bucket_notification](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_event\_arn | Arn of the bucket you want to trigger on. | `string` | `null` | no |
| bucket\_event\_id | Id of the bucket you want to trigger on. | `string` | `null` | no |
| command | The container commands for the lambda. Probably will depricate so don't use this | `list(string)` | `[]` | no |
| cron\_expression | Chron expression you want the lambda to be triggered on | `string` | `null` | no |
| description | The description for this lambda. | `string` | n/a | yes |
| dynamodb\_read\_arn\_iam\_list | List of the dynamodb arns you want the lambda to have read iam access to. | `list(string)` | `[]` | no |
| dynamodb\_readwrite\_arn\_iam\_list | List of the dynamodb arns you want the lambda to have read/write iam access to. | `list(string)` | `[]` | no |
| enable\_chron | If you want to enable the lambda to be triggered on a regular(chron) scheduale | `bool` | `false` | no |
| enable\_s3\_event | If you want this lambda to be triggered by an S3 upload event. | `bool` | `false` | no |
| enable\_sqs\_event | If you want to trigger the lambda on an item in an SQS Queue event. | `bool` | `false` | no |
| entrypoint | The entrypoint of the lambda. | `string` | n/a | yes |
| env | The environment of the lambda. (dev, stage, prod) | `string` | n/a | yes |
| function\_name | The name for this lambda. | `string` | n/a | yes |
| image | The id of the image for the lambda. | `string` | n/a | yes |
| lambda\_arn\_iam\_list | List of the lambda arns you want the lambda to have iam access to. Probably will depricate, use with caution | `list(string)` | `[]` | no |
| memory\_size | Memory size of the lambda. | `number` | `128` | no |
| s3\_read\_arn\_iam\_list | List of the s3 arns you want the lambda to have read iam access to. | `list(string)` | `[]` | no |
| s3\_readwrite\_arn\_iam\_list | List of the s3 arns you want the lambda to have read/write iam access to. | `list(string)` | `[]` | no |
| secretsmanager\_arn\_iam\_list | List of the secretsmanager arns you want the lambda to have iam access to. | `list(string)` | `[]` | no |
| sqs\_arn\_iam\_list | List of the sqs arns you want the lambda to have iam access to. | `list(string)` | `[]` | no |
| sqs\_event\_arn | Arn of the SQS Queue you want to trigger on. | `string` | `null` | no |
| subnet\_ids | List of the subnet ids you want the lambda to reside in. | `list(string)` | `null` | no |
| timeout | Timeout of the lambda. | `number` | `30` | no |
| vpc\_security\_group\_ids | List of the security group ids you want the lambda to reside in. | `list(string)` | `null` | no |

## Outputs

No output.
