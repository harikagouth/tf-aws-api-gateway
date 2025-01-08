output "api_id" {
  value = aws_apigatewayv2_api.this.id
}

output "vpc_link_id" {
  value = aws_apigatewayv2_vpc_link.this.id
}

output "stage_id" {
  value = aws_apigatewayv2_stage.this.id
}

output "url" {
  value = length(var.domain_name) > 0 ? aws_apigatewayv2_domain_name.this[0].domain_name : aws_apigatewayv2_stage.this.invoke_url
}