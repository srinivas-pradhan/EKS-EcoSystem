locals {
  name               = "EKS-EcoSystem"
  kubernetes_version = "1.33"
  vpc_id             = base64decode("dnBjLTA1ZTBlNzhlNjI5MDM3YjQ2")
  subnets            = split(",",base64decode("c3VibmV0LTAyMzU3MWI4M2Y3MmQzYzM1LHN1Ym5ldC0wNTM1MTQxYzMyNWI0MDBjMyxzdWJuZXQtMGU5OGQyNzI5YWE3ZGYzZDY="))
  tags = {
    "purpose" = "Testing and Validating application deployments."
  }
}
