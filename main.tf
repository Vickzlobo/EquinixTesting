resource "equinix_fabric_cloud_router" "FCRRouter_in_SG" {
  name = var.FCRname
  type = var.FCRtype
  notifications {
    type   = "ALL"
    emails = [var.emails]
  }
  order {
    purchase_order_number = var.Equinixpurchaseorder
  }
  location {
    metro_code = var.FCRmetrocode
  }
  package {
    code = var.FCRpackage
  }
  project {
    project_id = var.Equinixprojectid
  }
  account {
    account_number = var.account_number
  }
}

output "fabric_cloud_router_id" {
  value       = equinix_fabric_cloud_router.FCRRouter_in_SG.id
}
