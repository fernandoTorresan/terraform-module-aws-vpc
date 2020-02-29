# Terraform-module-aws-vpc
Terraform module to provide a AWS VPC

## Exemplos de uso

- [simple-vpc](/examples/simple)

## Review Pre Commit

Para manter a documentação das variáveis no README atualizada e revisar a formatação dos arquivos do 
terraform  antes do commit devem ser instalados o pre-commit e o terraform-docs conforme abaixo:

```bash
sudo pip install pre-commit
sudo wget https://github.com/segmentio/terraform-docs/releases/download/v0.8.2/terraform-docs-v0.8.2-linux-amd64 \
     -O /usr/local/bin/terraform-docs
sudo chmod +x /usr/local/bin/terraform-docs
```

Uma vez instalados execute a configuração do pre-commit no repositório corrente:

```bash
pre-commit install
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.50 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cidr\_block | O bloco CIDR para VPC. | `string` | n/a | yes |
| enable\_classiclink | Deve ser true para habilitar ClassicLink para VPC. Válido somente em regiões e contas que tem suporte para EC2 Classic. | `bool` | n/a | yes |
| enable\_classiclink\_dns\_support | Deve ser true para habilitar suporete ao ClassicLink DNS para VPC. Válido somente em regiões e contas que tem suporte para EC2 Classic. | `bool` | n/a | yes |
| name | Nome a ser utilizado em todos os recursos desse módulo, deve ser utilizado como um identificador. | `string` | n/a | yes |
| azs | Uma lista das zonas de disponibilidade da região. | `list(string)` | `[]` | no |
| enable\_dns\_hostnames | Deve ser como true para habilitar DNS hostnames na VPC. | `bool` | `false` | no |
| enable\_dns\_support | Deve estar como true para habilitar suporte de DNS na VPC. | `bool` | `true` | no |
| enable\_ipv6 | Habilita ipv6 | `bool` | `false` | no |
| external\_nat\_ip\_ids | Lista dos IDs de EPI para serem vinculados com os NAT Gateways. Deve ser utilizado em conjunto com o a variável `reuse_nat_ips`. | `list(string)` | `[]` | no |
| instance\_tenancy | Define opção de tenancy para instâncias criadas na VPC. | `string` | `"default"` | no |
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
| default\_network\_acl\_id | O ID do network ACL padrão. |
| default\_route\_table\_id | O ID da tabela de rotas padrão. |
| default\_security\_group\_id | O ID do security group criado por padrão no momento da criação da VPC. |
| igw\_id | O ID do Internet Gateway. |
| nat\_ids | Lista de IDs dos Elastic IPs criados para os NAT Gateways. |
| nat\_public\_ips | Lista dos Elastic IPs criados para os NAT Gateways. |
| natgw\_ids | Lista dos IDs dos NAT Gateways. |
| private\_route\_table\_ids | Lista dos IDs das tabelas de rotas privadas. |
| private\_subnets | Lista dos IDs das subnets privadas. |
| private\_subnets\_arn | Lista dos ARNs das subnets privadas. |
| private\_subnets\_cidr\_blocks | Lista dos blocos CIDR das subnets privadas. |
| public\_route\_table\_ids | Lista dos IDs das tabelas de rotas públicas. |
| public\_subnet\_arns | Lista dos ARNs das subnets públicas. |
| public\_subnets | Lista dos IDs das subnets públicas. |
| public\_subnets\_cidr\_blocks | Lista dos blocos CIDR das subnets públicas. |
| vpc\_arn | O ARN da VPC. |
| vpc\_cidr\_block | O bloco CIDR da VPC. |
| vpc\_id | O ID da VPC. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->