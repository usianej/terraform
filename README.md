# DEVOPS
## Integration of Azure, Terraform and GitActions

> This lab follows  https://learn.microsoft.com/en-us/devops/deliver/iac-github-actions

There are multiple workflow files 
- azure-auth.yml -> This utilizes OIDC to login to azure. The advantage of this, is that no credential is stored, and certiificates don't need to be maintained.

>https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Clinux#use-the-azure-login-action-with-openid-connect

- tf-unit-tests.yml -> carries out unit tests 
- tf-plan-apply.yml -> plans the deployment tasks and executes them 
- tf-drift.yml -> checks for configuration drift..

