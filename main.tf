resource "google_project_organization_policy" "compute_requireOsLogin" {
  project = var.project
  constraint = "compute.requireOsLogin"

  boolean_policy {
    enforced = false
  }
}

resource "google_project_organization_policy" "compute_requireShieldedVm" {
  project = var.project
  constraint = "compute.requireShieldedVm"

  boolean_policy {
    enforced = false
  }
}

resource "google_project_organization_policy" "compute_vmCanIpForward" {
  project = var.project
  constraint = "compute.vmCanIpForward"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_project_organization_policy" "compute_vmExternalIpAccess" {
  project = var.project
  constraint = "compute.vmExternalIpAccess"

  list_policy {
    allow {
      all = true
    }
  }
}

resource "google_project_organization_policy" "compute_restrictVpcPeering" {
  project = var.project
  constraint = "compute.restrictVpcPeering"

  list_policy {
    allow {
      all = true
    }
  }
}