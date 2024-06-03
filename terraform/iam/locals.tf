locals {
  tags = merge(
    var.tags,
    {
        company = var.prefix_company
        lob = var.lob
        application = var.application
        env = var.env
    }
  )
}