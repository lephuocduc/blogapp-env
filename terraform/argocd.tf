data "kubectl_file_documents" "namespace" {
 content = file("../manifests/argocd/namespace.yaml")
 }
 data "kubectl_file_documents" "argocd" {
 content = file("../manifests/argocd/install.yaml")
 }

 resource "kubectl_manifest" "namespace" {
  for_each  = data.kubectl_file_documents.namespace.manifests
  yaml_body = each.value
  override_namespace = "argocd"
 }

 resource "kubectl_manifest" "argocd" {
  depends_on = [
    kubectl_manifest.namespace,
  ]
  for_each  = data.kubectl_file_documents.argocd.manifests
  yaml_body = each.value
  override_namespace = "argocd"
 }