output "registry_name" {
    value= module.acr.container-name
}

output "aks_name" {
    value= module.aks.aks_name
}

output "rg_name" {
    value= module.rg.RG_Name
}