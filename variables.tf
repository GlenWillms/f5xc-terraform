variable "namespace" {
  default     = "g-willms"
  description = "Namespace name"
}

variable "lbname" {
  default     = "JDE Demo"
  description = "Friendly name of load balancer"
}

variable "app_fqdn" {
  default     = "demo.steltix.com"
  description = "DNS Domain Name for Load Balancer"
}

variable "api_url" {
  #--- UNCOMMENT FOR TEAM OR ORG TENANTS
  # default = "https://<TENANT-NAME>.console.ves.volterra.io/api"
  #--- UNCOMMENT FOR INDIVIDUAL/FREEMIUM
  default = "https://f5-amer-ent.console.ves.volterra.io/api"
}

# This points the absolute path of the api credentials file you downloaded from Volterra
variable "api_p12_file" {
  default = "~/git/f5-amer-ent.console.ves.volterra.io.api-creds.p12"
}

variable "disable_js_challenge" {
  default = false
}

locals{
  namespace = var.namespace != "" ? var.namespace : var.name
}

