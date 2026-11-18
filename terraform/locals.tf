# Locals

locals {
  common_tags = merge(
    var.common_tags,
    {
      ProjectName   = var.project_name
      CreatedBy     = lookup(var.common_tags, "CreatedBy", "Terraform")
      Repository    = "terraform-aws-ecs-blue-green"
      Branch        = var.dev_branch_name
      ResourceGroup = var.project_name
    }
  )
}
