variable "env" {
  type = string
}

variable "account_id" {
  type = string
}

variable "iam_roles" {
  type = map(object({
    exec           = string
    policy         = string
    managed_policy = string
  }))
}
