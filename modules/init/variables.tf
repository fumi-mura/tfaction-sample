variable "iam_roles" {
  type = map(object({
    env            = string
    exec           = string
    policy         = string
    managed_policy = string
  }))
}
