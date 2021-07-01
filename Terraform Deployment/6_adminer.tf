resource "helm_release" "adminer-release" {
  name       = "adminer"
  repository = "https://cetic.github.io/helm-charts"
  chart      = "adminer"

#   values = [
#     "${file("values.yaml")}"
#   ]
  
#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
  
}