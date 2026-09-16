terraform {
  cloud {
    organization = "dpredaconsulting"

    workspaces {
      name = "terraform-localstack-first"
    }
  }
}

resource "aws_s3_bucket" "meu_bucket_local" {
  bucket = "bucket-de-teste-modify"
}

resource "aws_sqs_queue" "minha_fila_local" {
  name = "fila-de-mensagens"
}
