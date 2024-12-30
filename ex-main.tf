module "api_gateway" {
  source = "github.com/rio-tinto/rtlh-tf-aws-api-gateway?ref=v1.0.0"

  protocol_type      = "HTTP"
  integration_type   = "HTTP_PROXY"
  integration_uri    = "http://internal-alb-rtlh-sbx-ecs-api-1601846468.ap-southeast-2.elb.amazonaws.com/v1/webhooks/databricks"
  integration_method = "POST"
  route_keys = {
    "POST /"       = "POST /",
    "GET /"        = "GET /",
    "GET /status"  = "GET /status",
    "POST /submit" = "POST /submit",
    "PUT /update"  = "PUT /update"
  }
  /*authorizer_name      = "rtlh-authorizer"
  authorizer_type      = "REQUEST"
  identity_sources     = ["$request.header.Authorization"]*/
  deployment_description = "Initial deployment"
  stage_name             = "dev"
  auto_deploy            = true
  stage_description      = "Development stage"
  #client_certificate_id = "client-cert-id"
  stage_variables = {
    "env" = "dev"
  }

  default_data_trace_enabled       = false
  default_detailed_metrics_enabled = false
  default_logging_level            = "OFF"
  default_throttling_burst_limit   = 5000
  default_throttling_rate_limit    = 10000

  route_settings = [
    {
      route_key                = "POST /"
      data_trace_enabled       = false
      detailed_metrics_enabled = false
      logging_level            = "INFO"
      throttling_burst_limit   = 2000
      throttling_rate_limit    = 5000
    },
    {
      route_key                = "GET /"
      data_trace_enabled       = false
      detailed_metrics_enabled = false
      logging_level            = "INFO"
      throttling_burst_limit   = 2000
      throttling_rate_limit    = 5000
    },
    {
      route_key                = "GET /status"
      data_trace_enabled       = false
      detailed_metrics_enabled = false
      logging_level            = "INFO"
      throttling_burst_limit   = 2000
      throttling_rate_limit    = 5000
    },
    {
      route_key                = "POST /submit"
      data_trace_enabled       = false
      detailed_metrics_enabled = false
      logging_level            = "INFO"
      throttling_burst_limit   = 2000
      throttling_rate_limit    = 5000
    },
    {
      route_key                = "PUT /update"
      data_trace_enabled       = false
      detailed_metrics_enabled = false
      logging_level            = "INFO"
      throttling_burst_limit   = 2000
      throttling_rate_limit    = 5000
    }
  ]
  subnet_ids         = ["subnet-09fb13bd6586bfb4e", "subnet-034f651a610ef029b"]
  security_group_ids = ["sg-0fd359ae165108d6b"]
}