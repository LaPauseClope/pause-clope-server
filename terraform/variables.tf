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

variable "admin_password" {  
  description = "Clé d'accès pour le compte de stockage du backend Terraform"
}

variable "subscription_id" {  
  description = "ID de la souscription Azure"
}

variable "client_id" {  
  description = "ID du client Azure AD"
}

variable "client_secret" { 
  description = "Secret du client Azure AD"
}

variable "tenant_id" {  
  description = "ID du tenant Azure AD"
}
