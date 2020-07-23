variable "region" {
  default = "eu-west-2"
}

variable "ec2_ports" {
  type = list(object({
    internal = number
    external = number
  }))
  default = [
    {
      internal = 8585
      external = 8585
    }
  ]
}

