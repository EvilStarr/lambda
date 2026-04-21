resource "aws_apigatewayv2_integration" "python" {
  api_id           = aws_apigatewayv2_api.api.id
  integration_type = "AWS_PROXY"
  integration_uri  = aws_lambda_function.python.invoke_arn
}

resource "aws_apigatewayv2_integration" "node" {
  api_id           = aws_apigatewayv2_api.api.id
  integration_type = "AWS_PROXY"
  integration_uri  = aws_lambda_function.node.invoke_arn
}
