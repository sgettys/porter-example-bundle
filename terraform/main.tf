terraform {
	required_providers {
		random = {
  			source  = "hashicorp/random"
  		 	version = "~> 3.1.0"
  		}
	}
}

resource "random_string" "name_suffix" {
	length = 4
	upper = false
	special = false
	number = false
}

locals {
	random_name = "${var.name}-${random_string.name_suffix.result}"
}