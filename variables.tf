variable "bedrockagentcore_gateway_rules" {
  description = <<EOT
Map of bedrockagentcore_gateway_rules, attributes below
Required:
    - gateway_identifier
    - priority
Optional:
    - description
    - region
    - action (block):
        - configuration_bundle (optional, block):
            - static_override (optional, block):
                - bundle_arn (required)
                - bundle_version (required)
            - weighted_override (optional, block):
                - traffic_split (optional, block):
                    - configuration_bundle (optional, block):
                        - bundle_arn (required)
                        - bundle_version (required)
                    - description (optional)
                    - metadata (optional)
                    - name (required)
                    - weight (required)
        - route_to_target (optional, block):
            - static_route (optional, block):
                - target_name (required)
            - weighted_route (optional, block):
                - traffic_split (optional, block):
                    - description (optional)
                    - metadata (optional)
                    - name (required)
                    - target_name (required)
                    - weight (required)
    - condition (block):
        - match_paths (optional, block):
            - any_of (required)
        - match_principals (optional, block):
            - any_of (optional, block):
                - iam_principal (optional, block):
                    - arn (required)
                    - operator (optional)
EOT

  type = map(object({
    gateway_identifier = string
    priority           = number
    description        = optional(string)
    region             = optional(string)
    action = optional(list(object({
      configuration_bundle = optional(list(object({
        static_override = optional(list(object({
          bundle_arn     = string
          bundle_version = string
        })))
        weighted_override = optional(list(object({
          traffic_split = optional(list(object({
            configuration_bundle = optional(list(object({
              bundle_arn     = string
              bundle_version = string
            })))
            description = optional(string)
            metadata    = optional(map(string))
            name        = string
            weight      = number
          })))
        })))
      })))
      route_to_target = optional(list(object({
        static_route = optional(list(object({
          target_name = string
        })))
        weighted_route = optional(list(object({
          traffic_split = optional(list(object({
            description = optional(string)
            metadata    = optional(map(string))
            name        = string
            target_name = string
            weight      = number
          })))
        })))
      })))
    })))
    condition = optional(list(object({
      match_paths = optional(list(object({
        any_of = list(string)
      })))
      match_principals = optional(list(object({
        any_of = optional(list(object({
          iam_principal = optional(list(object({
            arn      = string
            operator = optional(string)
          })))
        })))
      })))
    })))
  }))
}

