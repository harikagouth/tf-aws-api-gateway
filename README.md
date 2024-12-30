# api-gateway-v2
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=5.23.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=5.23.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api) | resource |
| [aws_apigatewayv2_authorizer.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_authorizer) | resource |
| [aws_apigatewayv2_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_deployment) | resource |
| [aws_apigatewayv2_integration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration) | resource |
| [aws_apigatewayv2_route.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route) | resource |
| [aws_apigatewayv2_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage) | resource |
| [aws_apigatewayv2_vpc_link.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_vpc_link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorizer_credentials_arn"></a> [authorizer\_credentials\_arn](#input\_authorizer\_credentials\_arn) | Required credentials as an IAM role for API Gateway to invoke the authorizer. Supported only for REQUEST authorizers. | `string` | `null` | no |
| <a name="input_authorizer_name"></a> [authorizer\_name](#input\_authorizer\_name) | The name of the authorizer. Must be between 1 and 128 characters in length. | `string` | `""` | no |
| <a name="input_authorizer_payload_format_version"></a> [authorizer\_payload\_format\_version](#input\_authorizer\_payload\_format\_version) | Format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Valid values: 1.0, 2.0. | `string` | `null` | no |
| <a name="input_authorizer_result_ttl_in_seconds"></a> [authorizer\_result\_ttl\_in\_seconds](#input\_authorizer\_result\_ttl\_in\_seconds) | Time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Defaults to 300. Supported only for HTTP API Lambda authorizers. | `number` | `300` | no |
| <a name="input_authorizer_type"></a> [authorizer\_type](#input\_authorizer\_type) | The type of the authorizer.Authorizer type. Valid values: JWT, REQUEST. Specify REQUEST for a Lambda function using incoming request parameters. For HTTP APIs, specify JWT to use JSON Web Tokens. | `string` | `""` | no |
| <a name="input_authorizer_uri"></a> [authorizer\_uri](#input\_authorizer\_uri) | Authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers this must be a well-formed Lambda function URI, such as the invoke\_arn attribute of the aws\_lambda\_function resource. Supported only for REQUEST authorizers. Must be between 1 and 2048 characters in length. | `string` | `null` | no |
| <a name="input_auto_deploy"></a> [auto\_deploy](#input\_auto\_deploy) | Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs. | `bool` | `false` | no |
| <a name="input_client_certificate_id"></a> [client\_certificate\_id](#input\_client\_certificate\_id) | Identifier of a client certificate for the stage. Use the aws\_api\_gateway\_client\_certificate resource to configure a client certificate. Supported only for WebSocket APIs. | `string` | `""` | no |
| <a name="input_context"></a> [context](#input\_context) | (Optional) The context that the resource is deployed in. e.g. devops, logs, lake | `string` | `"01"` | no |
| <a name="input_default_data_trace_enabled"></a> [default\_data\_trace\_enabled](#input\_default\_data\_trace\_enabled) | Whether data trace logging is enabled for the default route. Affects the log entries pushed to Amazon CloudWatch Logs. Defaults to false. Supported only for WebSocket APIs. | `bool` | `false` | no |
| <a name="input_default_detailed_metrics_enabled"></a> [default\_detailed\_metrics\_enabled](#input\_default\_detailed\_metrics\_enabled) | Whether detailed metrics are enabled for the default route. Defaults to false. | `bool` | `false` | no |
| <a name="input_default_logging_level"></a> [default\_logging\_level](#input\_default\_logging\_level) | Logging level for the default route. Affects the log entries pushed to Amazon CloudWatch Logs. Valid values: ERROR, INFO, OFF. Defaults to OFF. Supported only for WebSocket APIs. Terraform will only perform drift detection of its value when present in a configuration. | `string` | `"OFF"` | no |
| <a name="input_default_throttling_burst_limit"></a> [default\_throttling\_burst\_limit](#input\_default\_throttling\_burst\_limit) | Throttling burst limit for the default route | `number` | `0` | no |
| <a name="input_default_throttling_rate_limit"></a> [default\_throttling\_rate\_limit](#input\_default\_throttling\_rate\_limit) | Throttling rate limit for the default route | `number` | `0` | no |
| <a name="input_deployment_description"></a> [deployment\_description](#input\_deployment\_description) | Description for the deployment resource. Must be less than or equal to 1024 characters in length. | `string` | `""` | no |
| <a name="input_enable_simple_responses"></a> [enable\_simple\_responses](#input\_enable\_simple\_responses) | Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. | `bool` | `false` | no |
| <a name="input_identity_sources"></a> [identity\_sources](#input\_identity\_sources) | The identity sources for which authorization is requested. For REQUEST authorizers the value is a list of one or more mapping expressions of the specified request parameters. For JWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests. | `list(string)` | `[]` | no |
| <a name="input_integration_method"></a> [integration\_method](#input\_integration\_method) | Integration's HTTP method. Must be specified if integration\_type is not MOCK. | `string` | `"ANY"` | no |
| <a name="input_integration_type"></a> [integration\_type](#input\_integration\_type) | The type of the integration. Valid values: AWS (supported only for WebSocket APIs), AWS\_PROXY, HTTP (supported only for WebSocket APIs), HTTP\_PROXY, MOCK (supported only for WebSocket APIs). For an HTTP API private integration, use HTTP\_PROXY. | `string` | n/a | yes |
| <a name="input_integration_uri"></a> [integration\_uri](#input\_integration\_uri) | The URI of the integration. URI of the Lambda function for a Lambda proxy integration, when integration\_type is AWS\_PROXY. For an HTTP integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. | `string` | `""` | no |
| <a name="input_jwt_audience"></a> [jwt\_audience](#input\_jwt\_audience) | List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list. | `list(string)` | `[]` | no |
| <a name="input_jwt_issuer"></a> [jwt\_issuer](#input\_jwt\_issuer) | Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws\_cognito\_user\_pool resource. | `string` | `null` | no |
| <a name="input_protocol_type"></a> [protocol\_type](#input\_protocol\_type) | API protocol. Valid values: HTTP, WEBSOCKET | `string` | n/a | yes |
| <a name="input_route_keys"></a> [route\_keys](#input\_route\_keys) | The route keys for the API. For HTTP APIs, the route key can be either $default, or a combination of an HTTP method and resource path, for example, GET /pets. | `map(string)` | n/a | yes |
| <a name="input_route_settings"></a> [route\_settings](#input\_route\_settings) | Route settings for the stage | <pre>list(object({<br>    route_key               = string<br>    data_trace_enabled      = bool<br>    detailed_metrics_enabled = bool<br>    logging_level           = string<br>    throttling_burst_limit  = number<br>    throttling_rate_limit   = number<br>  }))</pre> | `[]` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | The security group IDs for the VPC Link | `list(string)` | n/a | yes |
| <a name="input_stage_description"></a> [stage\_description](#input\_stage\_description) | Description for the stage. Must be less than or equal to 1024 characters in length. | `string` | `""` | no |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Name of the stage. Must be between 1 and 128 characters in length. | `string` | n/a | yes |
| <a name="input_stage_variables"></a> [stage\_variables](#input\_stage\_variables) | Map that defines the stage variables for the stage | `map(string)` | `{}` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | The subnet IDs for the VPC Link | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the stage. If configured with a provider | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_id"></a> [api\_id](#output\_api\_id) | n/a |
| <a name="output_stage_id"></a> [stage\_id](#output\_stage\_id) | n/a |
| <a name="output_vpc_link_id"></a> [vpc\_link\_id](#output\_vpc\_link\_id) | n/a |
<!-- END_TF_DOCS -->