resource "helm_release" "boardgame" {
  name      = "boardgame"
  chart     = "${path.module}/boardgame"
  namespace = "default"

  set = [
    {
      name  = "image.repository"
    value = var.image_repository
    },
    {
      name  = "image.tag"
    value = "latest"
    },
    {
        name  = "service.type"
        value = "LoadBalancer"
    },
    {
        name  = "service.port"
            value = "8080"
    }
  ]
}
