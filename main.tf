resource "volterra_http_loadbalancer" "example" {
  name      = "${var.lbname}"
  namespace = "${var.namespace}"

  // One of the arguments from this list "do_not_advertise advertise_on_public_default_vip advertise_on_public advertise_custom" must be set
  do_not_advertise = true

  // One of the arguments from this list "disable_api_definition api_definition api_definitions" must be set
  disable_api_definition = true

  // One of the arguments from this list "enable_api_discovery disable_api_discovery" must be set

  enable_api_discovery {
    // One of the arguments from this list "disable_learn_from_redirect_traffic enable_learn_from_redirect_traffic" must be set
    disable_learn_from_redirect_traffic = true
  }

  // One of the arguments from this list "no_challenge js_challenge captcha_challenge policy_based_challenge" must be set

  policy_based_challenge {
    // One of the arguments from this list "default_captcha_challenge_parameters captcha_challenge_parameters" must be set
    default_captcha_challenge_parameters = true

    // One of the arguments from this list "no_challenge always_enable_js_challenge always_enable_captcha_challenge" must be set
    no_challenge = true

    // One of the arguments from this list "js_challenge_parameters default_js_challenge_parameters" must be set

    js_challenge_parameters {
      cookie_expiry   = "1000"
      custom_page     = "string:///PHA+IFBsZWFzZSBXYWl0IDwvcD4="
      js_script_delay = "1000"
    }
    // One of the arguments from this list "default_mitigation_settings malicious_user_mitigation" must be set
    default_mitigation_settings = true
    rule_list {
      rules {
        metadata {
          description = "Virtual Host for acmecorp website"
          disable     = true
          name        = "acmecorp-web"
        }

        spec {
          arg_matchers {
            invert_matcher = true

            // One of the arguments from this list "check_present check_not_present item presence" must be set
            check_not_present = true
            name              = "name"
          }

          // One of the arguments from this list "any_asn asn_list asn_matcher" must be set
          any_asn = true

          body_matcher {
            exact_values = ["['new york', 'london', 'sydney', 'tokyo', 'cairo']"]

            regex_values = ["['^new .*$', 'san f.*', '.* del .*']"]

            transformers = ["transformers"]
          }

          // One of the arguments from this list "disable_challenge enable_javascript_challenge enable_captcha_challenge" must be set
          disable_challenge = true

          // One of the arguments from this list "client_selector client_name_matcher any_client client_name" must be set
          any_client = true

          cookie_matchers {
            invert_matcher = true

            // One of the arguments from this list "presence check_present check_not_present item" must be set
            presence = true

            name = "Session"
          }

          domain_matcher {
            exact_values = ["['new york', 'london', 'sydney', 'tokyo', 'cairo']"]

            regex_values = ["['^new .*$', 'san f.*', '.* del .*']"]
          }

          expiration_timestamp = "0001-01-01T00:00:00Z"

          headers {
            invert_matcher = true

            // One of the arguments from this list "presence check_present check_not_present item" must be set
            presence = true

            name = "Accept-Encoding"
          }

          http_method {
            invert_matcher = true

            methods = ["['GET', 'POST', 'DELETE']"]
          }

          // One of the arguments from this list "any_ip ip_prefix_list ip_matcher" must be set
          any_ip = true

          path {
            exact_values = ["['/api/web/namespaces/project179/users/user1', '/api/config/namespaces/accounting/bgps', '/api/data/namespaces/project443/virtual_host_101']"]

            prefix_values = ["['/api/web/namespaces/project179/users/', '/api/config/namespaces/', '/api/data/namespaces/']"]

            regex_values = ["['^/api/web/namespaces/abc/users/([a-z]([-a-z0-9]*[a-z0-9])?)$', '/api/data/namespaces/proj404/virtual_hosts/([a-z]([-a-z0-9]*[a-z0-9])?)$']"]

            suffix_values = ["['.exe', '.shtml', '.wmz']"]

            transformers = ["transformers"]
          }

          query_params {
            invert_matcher = true
            key            = "sourceid"

            // One of the arguments from this list "check_not_present item presence check_present" must be set
            presence = true
          }

          tls_fingerprint_matcher {
            classes = ["classes"]

            exact_values = ["['ed6dfd54b01ebe31b7a65b88abfa7297', '16efcf0e00504ddfedde13bfea997952', 'de364c46b0dfc283b5e38c79ceae3f8f']"]

            excluded_values = ["['fb00055a1196aeea8d1bc609885ba953', 'b386946a5a44d1ddcc843bc75336dfce']"]
          }
        }
      }
    }
    // One of the arguments from this list "default_temporary_blocking_parameters temporary_user_blocking" must be set
    default_temporary_blocking_parameters = true
  }
  // One of the arguments from this list "enable_ddos_detection disable_ddos_detection" must be set
  enable_ddos_detection = true
  domains = "${var.app_fqdn}"
  // One of the arguments from this list "least_active random source_ip_stickiness cookie_stickiness ring_hash round_robin" must be set
  random = true

  // One of the arguments from this list "http https_auto_cert https" must be set

  http {
    dns_volterra_managed = false
    port                 = "443"
  }
  // One of the arguments from this list "enable_malicious_user_detection disable_malicious_user_detection" must be set
  enable_malicious_user_detection = true
  // One of the arguments from this list "rate_limit disable_rate_limit api_rate_limit" must be set
  disable_rate_limit = true

  // One of the arguments from this list "service_policies_from_namespace no_service_policies active_service_policies" must be set

//  active_service_policies {
//   policies {
//      name      = "test1"
//      namespace = "staging"
//      tenant    = "acmecorp"
//    }
//  }
  // One of the arguments from this list "disable_trust_client_ip_headers enable_trust_client_ip_headers" must be set
  disable_trust_client_ip_headers = true
  // One of the arguments from this list "user_id_client_ip user_identification" must be set
  user_id_client_ip = true

  // One of the arguments from this list "app_firewall disable_waf waf waf_rule" must be set

//  waf {
//    name      = "test1"
//    namespace = "staging"
//    tenant    = "acmecorp"
//  }
}