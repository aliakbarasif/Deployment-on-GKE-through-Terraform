resource "helm_release" "cert-manager-release" {
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"

#   values = [
#     "${file("values.yaml")}"
#   ]
  
#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
  
}