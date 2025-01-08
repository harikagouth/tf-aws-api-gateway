locals {
  workspace     = split("-", terraform.workspace)
  name          = format("api-%s-%s-aws-%s-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], local.workspace[5], var.context)
  vpc_link_name = format("vpcl-%s-%s-aws-%s-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], local.workspace[5], var.context)
  tags          = merge(var.tags, { Name = local.name })
}