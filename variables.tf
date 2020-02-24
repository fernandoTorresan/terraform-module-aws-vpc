# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OBRIGATÓRIAS
# ----------------------------------------------------------------------------------------------------------------------

variable "name" {
  type        = string
  description = "Nome da VPC"
}

variable "cidr_block" {
  type        = string
  description = ""
}



# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OPICIONAIS
# ----------------------------------------------------------------------------------------------------------------------

variable "single_nat_gateway" {
  type        = bool
  default     = false
  description = "Se for configurada como true, existirá apenas um NAT Gateway."
}

variable "one_nat_gateway_per_az" {
  type        = bool
  default     = true
  description = "Define se será criado um NAT Gateway por zona de disponibilidade da região da VPC."
}

variable "private_subnets" {
  type        = list(string)
  description = "Lista de subnets (CIDR) privadas que irão pertecer a VPC."
  default     = []
}

variable "map_public_ip_on_launch" {
  type        = bool
  default     = true
  description = "Se deseja que não seja vinculado automaticamente um IP público ao subir uma instância, deve-se ser informado como false."
}

variable "private_subnet_suffix" {
  type        = string
  default     = "private"
  description = "Sufixo que será concatenado com o nome das subnets privadas."
}

variable "public_subnet_suffix" {
  type        = string
  default     = "public"
  description = "Sufixo que será concatenado com o nome das subnets públicas."
}

variable "public_subnets" {
  type        = list(string)
  default     = []
  description = "Lista de subnets (CIDR) públicas que irão pertencer a VPC."
}

variable "azs" {
  type        = list(string)
  description = "Uma lista das zonas de disponibilidade da região."
  default     = []
}

variable "enable_classiclink" {
  default = ""
}
variable "enable_classiclink_dns_support" {
  default = ""
}
variable "enable_dns_hostnames" {
  default = ""
}

variable "enable_dns_support" {
  default = ""
}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_ipv6" {
  type        = bool
  default     = false
  description = "Habilita ipv6"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags adicionais para todos os recursos do módulo."
}

variable "reuse_nat_ips" {
  type        = bool
  description = "Deve ser true caso deseja que não seja criado um EIPs para o NAT Gateway, e então deve ser informado através da variável `external_nat_ip_ids`."
  default     = false
}

variable "external_nat_ip_ids" {
  type        = list(string)
  description = "Lista dos IDs de EPI para serem vinculados com os NAT Gateways. Deve ser utilizado em conjunto com o a variável `reuse_nat_ips`."
  default     = []
}
