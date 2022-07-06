# gke-org-policies

Disables/loosens up a set of restrictive ogranizational policies to enable the deployment of a Google Kubernetes Engine Cluster:

```
  compute.requireOsLogin                = do not enforce
  compute.requireShieldedVm             = do not enforce
  compute.vmCanIpForward                = allow all
  compute.vmExternalIpAccess            = allow all
  compute.restrictVpcPeering            = allow all
```

To run requires Terraform and `Organization Policy Administrator` (`roles/orgpolicy.policyAdmin`) role.

## Usage

```
module "gke-org-policies" {
  source = "github.com/mrbuk/gke-org-policies"
  project = var.project
}
```
