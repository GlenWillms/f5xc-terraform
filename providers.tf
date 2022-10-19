terraform {
  required_version = ">=0.12"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
    volterra = {
      source = "volterraedge/volterra"
      version = "0.4.0"
    }
  }

  #Configure the Voleterra provider

}
  provider "volterra" {
      api_p12_file     = "~/git/f5-amer-ent.console.ves.volterra.io.api-creds.p12"
      url              = "https://f5-amer-ent.console.ves.volterra.io/api"
    }