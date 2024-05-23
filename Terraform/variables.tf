variable "oidc_provider_arn" {
  description = "ARN of the OIDC provider"
  type        = string
}

variable "oidc_audience" {
  description = "Audience for OIDC"
  default     = "sts.amazonaws.com"
  type        = string
}

variable "oidc_federated" {
  description = "Federated"
  type        = string
}

variable "environment" {
  description = "The deployment environment"
  type        = string
}

variable "project" {
  description = "The project name"
  default     = "web3-prime-number"
  type        = string
}

variable "project_longname" {
  description = "Full project name"
  type        = string
}

variable "region" {
  description = "The AWS region"
  type        = string
}

variable "web3-prime-number_s3_name_trip_data" {
  type = string
  description = "bucket name for the trip data"
}

variable "web3-prime-number_s3_name_trip_data_cors_origins" {
  type = list(string)
  description = "bucket cors allowed origins"
}
