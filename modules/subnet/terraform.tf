terraform {
  required_version = ">= 1.9.8"
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = ">= 2.0.1"
    }
  }
}
