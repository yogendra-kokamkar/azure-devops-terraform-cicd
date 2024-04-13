terraform {
  backend "azurerm" {
    storage_account_name = "randombitdevopsterraformcicd"
    container_name       = "backend"
    key                  = "terraform.tfstate"
    access_key           = ""
  }
}
  