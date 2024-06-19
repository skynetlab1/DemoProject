# Project Description

This project code is used to provision and configure an Fully  Azure Kubernetes Service (AKS) cluster with a private network setup. It creates the necessary Azure resources such as resource groups, virtual networks, subnets, firewall, route table, and AKS cluster.

## Resources Created

- azurerm_resource_group: Creates the resource groups for the virtual networks and AKS cluster.
- module "hub_network": Creates the virtual network for the hub network with subnets for Azure Firewall and jumpbox.
- module "firewall": Creates an Azure Firewall resource.
- module "routetable": Creates a route table for the firewall.
- module "kube_network": Creates the virtual network for the AKS cluster with a subnet for AKS nodes.
- module "vnet_peering": Establishes peering between the hub network and the AKS network.
- azurerm_kubernetes_cluster: Creates the AKS cluster with a private network configuration.
- azurerm_role_assignment: Assigns the "Network Contributor" role to the AKS subnet.
- module "jumpbox": Creates a jumpbox VM for accessing the AKS cluster.

## Usage

1. Set the desired values for the variables in the variables.tf file.
2. Run terraform init to initialize the Terraform configuration.
3. Run terraform plan to see the planned changes.
4. Run terraform apply to provision the Azure resources.
5. After the resources are provisioned, you can access the AKS cluster using the jumpbox VM.

## Requirements

- Terraform version 0.12 or later.
- Azure subscription and appropriate permissions to create resources.
