# terraform-module-aws-vpc
Terraform module to provide a AWS VPC


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.50 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | O bloco CIDR para VPC. | `string` | n/a | yes |
| name | Nome a ser utilizado em todos os recursos desse módulo, deve ser utilizado como um identificador. | `string` | n/a | yes |
| azs | Uma lista das zonas de disponibilidade da região. | `list(string)` | `[]` | no |
| enable\_classiclink | n/a | `string` | `""` | no |
| enable\_classiclink\_dns\_support | n/a | `string` | `""` | no |
| enable\_dns\_hostnames | n/a | `string` | `""` | no |
| enable\_dns\_support | n/a | `string` | `""` | no |
| enable\_ipv6 | Habilita ipv6 | `bool` | `false` | no |
| external\_nat\_ip\_ids | Lista dos IDs de EPI para serem vinculados com os NAT Gateways. Deve ser utilizado em conjunto com o a variável `reuse_nat_ips`. | `list(string)` | `[]` | no |
| instance\_tenancy | n/a | `string` | `"default"` | no |
| map\_public\_ip\_on\_launch | Se deseja que não seja vinculado automaticamente um IP público ao subir uma instância, deve-se ser informado como false. | `bool` | `true` | no |
| one\_nat\_gateway\_per\_az | Define se será criado um NAT Gateway por zona de disponibilidade da região da VPC. | `bool` | `true` | no |
| private\_subnet\_suffix | Sufixo que será concatenado com o nome das subnets privadas. | `string` | `"private"` | no |
| private\_subnets | Lista de subnets (CIDR) privadas que irão pertecer a VPC. | `list(string)` | `[]` | no |
| public\_subnet\_suffix | Sufixo que será concatenado com o nome das subnets públicas. | `string` | `"public"` | no |
| public\_subnets | Lista de subnets (CIDR) públicas que irão pertencer a VPC. | `list(string)` | `[]` | no |
| reuse\_nat\_ips | Deve ser true caso deseja que não seja criado um EIPs para o NAT Gateway, e então deve ser informado através da variável `external_nat_ip_ids`. | `bool` | `false` | no |
| single\_nat\_gateway | Se for configurada como true, existirá apenas um NAT Gateway. | `bool` | `false` | no |
| tags | Tags adicionais para todos os recursos do módulo. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_cidr | VPC CIDR. |
| vpc\_id | ID da VPC. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->