# terraform-module-aws-vpc
Terraform module to provide a AWS VPC


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | n/a | `string` | n/a | yes |
| name | Nome da VPC | `string` | n/a | yes |
| azs | Uma lista das zonas de disponibilidade da região. | `list(string)` | `[]` | no |
| enable\_classiclink | n/a | `string` | `""` | no |
| enable\_classiclink\_dns\_support | n/a | `string` | `""` | no |
| enable\_dns\_hostnames | n/a | `string` | `""` | no |
| enable\_dns\_support | n/a | `string` | `""` | no |
| enable\_ipv6 | Habilita ipv6 | `bool` | `false` | no |
| instance\_tenancy | n/a | `string` | `"default"` | no |
| map\_public\_ip\_on\_launch | Se deseja que não seja vinculado automaticamente um IP público ao subir uma instância, deve-se ser informado como false. | `bool` | `true` | no |
| one\_nat\_gateway\_per\_az | Define se será criado um NAT Gateway por zona de disponibilidade da região da VPC. | `bool` | `true` | no |
| private\_subnet\_suffix | Sufixo que será concatenado com o nome das subnets privadas. | `string` | `"private"` | no |
| private\_subnets | Lista de subnets (CIDR) privadas que irão pertecer a VPC. | `list(string)` | `[]` | no |
| public\_subnet\_suffix | Sufixo que será concatenado com o nome das subnets públicas. | `string` | `"public"` | no |
| public\_subnets | Lista de subnets (CIDR) públicas que irão pertencer a VPC. | `list(string)` | `[]` | no |
| single\_nat\_gateway | Se for configurada como true, existirá apenas um NAT Gateway. | `bool` | `false` | no |
| tags | Tags adicionais | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_cidr | VPC CIDR. |
| vpc\_id | ID da VPC. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->