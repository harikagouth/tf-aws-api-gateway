output "api_id" {
  value = aws_apigatewayv2_api.this.id
}

output "vpc_link_id" {
  value = aws_apigatewayv2_vpc_link.this.id
}

output "stage_id" {
  value = aws_apigatewayv2_stage.this.id
}