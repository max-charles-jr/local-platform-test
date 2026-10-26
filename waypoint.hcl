project = "local-platform-test"

app "web-service" {
  labels = {
    "service" = "web-service"
  }

  build {
    use "docker" {
      context = "./app"
    }
    
    # Tag registry for local testing (e.g., local docker daemon)
    registry {
      use "docker" {
        image = "local-registry/web-service"
        tag   = "latest"
      }
    }
  }

  # Instead of direct deployment, Waypoint acts as a template compiler 
  # for our GitOps repository layout
  deploy {
    use "kubernetes-apply" {
      path = "./gitops/deployment.yaml"
      template = true
    }
  }
}
