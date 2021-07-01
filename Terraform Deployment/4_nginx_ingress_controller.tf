#deploy local chart

# resource "helm_release" "example" {
#   name       = "my-local-chart"
#   chart      = "./charts/example"
# }

resource "helm_release" "nginx-ingress-controller-release" {
  name       = "nginx-ingress-controller"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx-ingress-controller"

#   values = [
#     "${file("values.yaml")}"
#   ]
  
#   set {
#     name  = "service.type"
#     value = "ClusterIP"
#   }
  
}