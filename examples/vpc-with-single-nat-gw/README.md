# Exemplo de uso - VPC com um único NAT GW

```hcl
module "vpc_with_single_nat_gw" {
  source = "../../"

  name       = "vpc-with-single-nat-gw"
  cidr_block = "20.0.0.0/16"

  single_nat_gateway = true

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["20.0.1.0/24", "20.0.2.0/24", "20.0.3.0/24"]
  public_subnets  = ["20.0.101.0/24", "20.0.102.0/24", "20.0.103.0/24"]

  tags = {
    ManagedBy = "Terraform"
  }
}
```

## VPC

- 1 VPC na região de Ohio (us-east-2) com CIDR block `20.0.0.0/16`.
- Com o nome `vpc-with-single-nat-gw`.

## NAT Gateway:
- Como estamos definindo o parâmetro `single_nat_gateway` como `true`, será criado somente 1 NAT Gateway,
  e o mesmo vinculado a uma das subnets públicas.
 
## AWS Elastic IP NAT
- Como teremos somente 1 NAT Gateway será criado um EIP para ser associado com o NAT Gateway.

## Subnets privadas

- 3 subnets privadas.
- Com os respectivos CIDR blocks: `20.0.1.0/24`, `20.0.2.0/24`, `20.0.3.0/24`.
- Cada subnet relacionada a uma dessas zonas de disponibilidade: `us-east-2a`, `us-east-2b`, `us-east-2c`.

## Subnets públicas

- 3 subnets públicas.
- Com os respectivos CIDR blocks: `20.0.101.0/24`, `20.0.102.0/24`, `20.0.103.0/24`.
- Cada subnet relacionada a uma dessas zonas de disponibilidade: `us-east-2a`, `us-east-2b`, `us-east-2c`.

## Internet Gateway
- Será criado 1 internet gateway para ser associado a VPC
  e utilizado como rota na route table que será associado às subnets públicas.

## Tabelas de Rotas

- 1 route table com uma rota de saída NAT Gateway, associada com as 3 subnets privadas
- 1 route table com uma rota de saída Internet Gateway, associada com as 3 subnets públicas.
 