terraform{    
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "DucLe"

        workspaces {
          name ="blogapp-env"
        }
    }
}