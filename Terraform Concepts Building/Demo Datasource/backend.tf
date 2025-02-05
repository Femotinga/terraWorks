terraform {
    backend "s3" {
     bucket = "tf-state-lnd109"
     key    = "development/terraform_state"
     region = "eu-west-2"
     #encrypt = true
    }
    
}