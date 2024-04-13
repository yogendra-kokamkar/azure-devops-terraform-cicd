# CICD Pipeline with Terraform on Azure DevOps
![azure-devops-terraform-diagram-2](https://github.com/yogendra-kokamkar/azure-devops-terraform-cicd/assets/55878086/787f97ed-1893-4f33-a6d7-ff4ab637836c)

This project demonstrates the implementation of a Continuous Integration and Continuous Deployment (CICD) pipeline using Azure DevOps. The pipeline automates the deployment of infrastructure on Azure Cloud using Terraform, with additional features such as email approval for Terraform plan execution.



## Overview

The CICD pipeline orchestrates the following steps:

1. **Source Control Integration:** The project's Terraform code is stored in a source control repository, such as GitHub or Azure Repos.

2. **Build Stage:** Upon changes to the source code repository, Azure DevOps triggers a build stage. In this stage, the Terraform code is validated and formatted using Terraform commands.

3. **Terraform Plan:** After successful validation, the pipeline generates a Terraform plan, outlining the changes to be made to the infrastructure.

4. **Email Approval:** A notification is sent to the project developer via email containing details of the Terraform plan. The developer reviews the plan and approves it.

5. **Terraform Apply:** Upon approval, the pipeline proceeds to apply the Terraform plan, deploying the infrastructure on Azure Cloud.

## Components

- **Azure DevOps:** Used for pipeline orchestration, including source control integration, build triggers, and email notifications.
- **Terraform:** Infrastructure as Code (IaC) tool used for defining and provisioning Azure resources.
- **Azure Cloud:** Target environment for infrastructure deployment.
- **Azure Storage Account:** Used for storing Terraform state files securely.
- **Self-Hosted Runner:** Deployed on Azure Cloud, the self-hosted runner executes pipeline tasks.

## Configuration

To set up a similar pipeline in your Azure DevOps environment, follow these steps:

1. **Azure DevOps Project:** Create a new project or use an existing one for managing the pipeline.

2. **Source Control:** Connect your project to a source control repository containing your Terraform code.

3. **Azure Resources:** Ensure you have an Azure subscription with the necessary permissions to create resources.

4. **Terraform Backend:** Configure Azure Storage Account containers to store Terraform state files securely.

5. **Pipeline Definition:** Define the pipeline YAML file in your Azure DevOps project, specifying stages, tasks, and triggers.

6. **Self-Hosted Runner:** Set up a self-hosted runner on Azure Cloud to execute pipeline tasks.

7. **Email Approval:** Configure Azure DevOps to send email notifications containing Terraform plan details for approval.

## Usage

Once the pipeline is configured:

1. Push changes to the source control repository.
2. Azure DevOps triggers the pipeline automatically.
3. Validate the Terraform plan and review it via email.
4. Upon approval, Azure DevOps applies the Terraform plan, deploying infrastructure on Azure Cloud.

## Resources

- [Azure DevOps Documentation](https://docs.microsoft.com/en-us/azure/devops/?view=azure-devops)
- [Terraform Documentation](https://learn.hashicorp.com/terraform)
- [Azure Cloud Documentation](https://docs.microsoft.com/en-us/azure/?product=featured)
