terraform {
  required_providers {
    lightstep = {
      source = "lightstep/lightstep"
      version = "1.62.0"
    }
  }
}


api_key         = "your-lightstep-org-api-key"
organization    = "your-lightstep-organization"

provider "lightstep" {
  api_key         = var.lightStepKey
  organization    = var.lightstepOrg
}

variable "lightStepKey" {}
variable "lightstepOrg" {}



variable "sampleTags" {
  default = ["Dev ebs volume with List", "Test ebs volume with List", "Prod ebs volume with List"]
  type = list(string)
}

variable "ebsSizes" {
  type = list(number)
  default = [40, 80, 100]
}
