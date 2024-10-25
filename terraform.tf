terraform {
  required_version = ">= 1.9.8"
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "<= 2.0.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71"
    }
    modtm = {
      source  = "azure/modtm"
      version = "~> 0.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}


provider "azurerm" {
  features {}
}