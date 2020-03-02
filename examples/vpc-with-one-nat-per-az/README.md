# Exemplo de uso - VPC com um NAT GW por zona de disponibilidade

```hcl
module "vpc_with_one_nat_per_az" {
  source = "../../"

  name       = "vpc-one-nat-per-az"
  cidr_block = "20.0.0.0/16"

  one_nat_gateway_per_az = true

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
- Com o nome `vpc-one-nat-per-az`.

## NAT Gateway:
- Nesse caso estamos configurando o parâmetro `one_nat_gateway_per_az` como `true`, será criado **3 NAT Gateway**,
  e cada um vinculado a uma subnet pública.
  
## AWS Elastic IP NAT
- Como teremos 3 NAT Gateway, será criado 3 EIP (Elasti IP), um para cada um deles e associados posteriormente.

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
 



