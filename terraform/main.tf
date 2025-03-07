module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "adam.koyuncu@live.com"
    AccountName               = "sandbox-adam-dev"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "adam.koyuncu@live.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "Adam-Dev"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "sandbox-2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "adam.koyuncu+sandbox-2@live.com"
    AccountName               = "sandbox-adam-dev-2"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "adam.koyuncu+sandbox-2@live.com"
    SSOUserFirstName          = "Sandbox-2"
    SSOUserLastName           = "Adam-Dev-2"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-2"
}
