# Lab 2 Starter Terraform
provider "aws" { region = var.region }

resource "aws_apigatewayv2_api" "orders" {
  name = "${var.project}-api"
  protocol_type = "HTTP"
}

resource "aws_sqs_queue" "orders" {
  name = "${var.project}-queue"
}

# TODO: Add Lambda integrations + Aurora cluster
