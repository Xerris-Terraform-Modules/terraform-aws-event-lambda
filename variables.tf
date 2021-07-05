////////Base Lambda Variables//////////////////////////////////////////////////
variable "entrypoint" {
    type        = string
    description = "The entrypoint of the lambda."
}
variable "command" {
    default     = []
    type        = list(string)
    description = "The container commands for the lambda. Probably will depricate so don't use this"
}
variable "env" {
    type        = string
    description = "The environment of the lambda. (dev, stage, prod)"
}
variable "image" {
    type        = string
    description = "The id of the image for the lambda."
}
variable "function_name" {
    type        = string
    description = "The name for this lambda."
}
variable "description" {
    type        = string
    description = "The description for this lambda."
}

////////S3 Event Variables//////////////////////////////////////////////////
variable "enable_s3_event" {
    default     = false
    type        = bool
    description = "If you want this lambda to be triggered by an S3 upload event."
}
variable "timeout" {
    default     = 30
    type        = number
    description = "Timeout of the lambda."
}
variable "memory_size" {
    default     = 128
    type        = number
    description = "Memory size of the lambda."
}
variable "bucket_event_arn" {
    default     = null
    type        = string
    description = "Arn of the bucket you want to trigger on."
}
variable "bucket_event_id" {
    default    = null
    type        = string
    description = "Id of the bucket you want to trigger on."
}
////////SQS Event Variables
variable "enable_sqs_event" {
    default     = false
    type        = bool
    description = "If you want to trigger the lambda on an item in an SQS Queue event."
}
variable "sqs_event_arn" {
    default     = null
    type        = string
    description = "Arn of the SQS Queue you want to trigger on."
}
///////Chron Variables
variable "enable_chron" {
    default     = false
    type        = bool
    description = "If you want to enable the lambda to be triggered on a regular(chron) scheduale"
}
variable "cron_expression" {
    default     = null
    type        = string
    description = "Chron expression you want the lambda to be triggered on"
}
///////IAM Variables//////////////////////////////////////////////////
variable "s3_readwrite_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the s3 arns you want the lambda to have read/write iam access to."
}
variable "s3_read_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the s3 arns you want the lambda to have read iam access to."
}
variable "sqs_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the sqs arns you want the lambda to have iam access to."
}
variable "dynamodb_readwrite_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the dynamodb arns you want the lambda to have read/write iam access to."
}
variable "dynamodb_read_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the dynamodb arns you want the lambda to have read iam access to."
}
variable "secretsmanager_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the secretsmanager arns you want the lambda to have iam access to."
}
variable "lambda_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the lambda arns you want the lambda to have iam access to. Probably will depricate, use with caution"
}
variable "sns_arn_iam_list" {
    default     = []
    type        = list(string)
    description = "List of the sns arns you want the lambda to have iam access to."
}
////////Private Networking Variables//////////////////////////////////////////////////
variable "subnet_ids" {
    default     = null
    type        = list(string)
    description = "List of the subnet ids you want the lambda to reside in."
}
variable "vpc_security_group_ids" {
    default     = null
    type        = list(string)
    description = "List of the security group ids you want the lambda to reside in."
}