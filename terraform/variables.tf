variable "location" {
  description = "La région Azure où les ressources seront déployées"
  default     = "France Central"  
}

variable "backend_container_name" {  
  description = "Nom du conteneur de stockage pour le backend Terraform"
}

variable "backend_rg_name" {  
  description = "Nom du groupe de ressources pour le backend Terraform"
}

variable "backend_account_name" {  
  description = "Nom du compte de stockage pour le backend Terraform"
}


variable "backend_access_key" {  
  description = "Clé d'accès pour le compte de stockage du backend Terraform"
}
