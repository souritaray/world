provider "azurerm" {
  # skip_provider_registration = true
  features {}
}

data "azurerm_resource_group" "rg-ACT" {
  name = "rg-ACT"
}

resource "azurerm_data_factory" "azuredf" {
  name                = "dummydemoazureDF-500"
  # location = azurerm_resource_group.demo_resourcegroup.location
  # resource_group_name = azurerm_resource_group.demo_resourcegroup.name

  location            = data.azurerm_resource_group.rg-ACT.location
  resource_group_name = data.azurerm_resource_group.rg-ACT.name
  tags = {
    Name        = "dummy_demoazureDF"
  }
}

resource "azurerm_storage_account" "azure-storage-accnt" {
  name                     = "dummystorageaccount500"
  resource_group_name      = data.azurerm_resource_group.rg-ACT.name
  location                 = data.azurerm_resource_group.rg-ACT.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    Name        = "dummy_azure_storageaccount"
  }
}

resource "azurerm_databricks_workspace" "azure-databricks-workspace" {
  name                = "dummydatabricks-500"
  resource_group_name = data.azurerm_resource_group.rg-ACT.name
  location            = data.azurerm_resource_group.rg-ACT.location
  sku                 = "standard"

  tags = {
    Name        = "dummy_databricks_workspace"
  }
}

resource "azurerm_eventhub_namespace" "azure-eventhub-namespace" {
  name                = "dummyacceptanceTestEventHubNamespace-500"
  location            = data.azurerm_resource_group.rg-ACT.location
  resource_group_name = data.azurerm_resource_group.rg-ACT.name
  sku                 = "Standard"
  capacity            = 1

  tags = {
    Name = "dummy_azure_eventhub"
  }
}

resource "azurerm_eventhub" "azure-eventhub" {
  name                = "dummyacceptanceTestEventHub-500"
  namespace_name      = azurerm_eventhub_namespace.azure-eventhub-namespace.name
  resource_group_name = data.azurerm_resource_group.rg-ACT.name
  partition_count     = 2
  message_retention   = 1
}
