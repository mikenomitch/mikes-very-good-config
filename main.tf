variable "aws_region" {
  type    = string
}

variable "aws_key" {
  type    = string
}

variable "aws_secret_key" {
  type    = string
}

resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}