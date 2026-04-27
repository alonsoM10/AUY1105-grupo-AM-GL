# AUY1105-grupo-AM-GL

Repositorio del grupo AM-GL para la asignatura **Infraestructura como Código II (AUY1105)**.

## 👥 Integrantes
- Alonso Mieres
- Giancarlos Loaiza

## 🎯 Objetivo del Repositorio
Este repositorio contiene el código de infraestructura como código (IaC) 
usando Terraform para desplegar recursos en AWS, junto con un pipeline 
automatizado mediante GitHub Actions para análisis de calidad y seguridad.

## 📁 Estructura del Repositorio
\`\`\`
AUY1105-grupo-AM-GL/
├── .github/
│   └── workflows/
│       └── terraform-ci.yml   # Pipeline GitHub Actions
├── terraform/
│   ├── main.tf                # Recursos principales
│   ├── variables.tf           # Variables
│   ├── outputs.tf             # Outputs
│   └── providers.tf           # Configuración proveedor AWS
├── policies/
│   └── opa/                   # Políticas Open Policy Agent
├── .gitignore
├── CHANGELOG.md
└── README.md
\`\`\`

## 🏗️ Infraestructura definida
Los recursos de AWS definidos en Terraform son:

| Recurso | Nombre | Descripción |
|---|---|---|
| VPC | AUY1105-amgl-vpc | Red privada CIDR 10.1.0.0/16 |
| Subnet | AUY1105-amgl-subnet | Subred con máscara /24 |
| Security Group | AUY1105-amgl-sg | Solo permite SSH entrante |
| EC2 | AUY1105-amgl-ec2 | Ubuntu 24.04 LTS t2.micro |

## 🚀 Instrucciones de uso

### Requisitos previos
- Terraform instalado
- AWS CLI configurado con credenciales válidas

### Inicializar Terraform
\`\`\`bash
cd terraform
terraform init
terraform validate
terraform plan
\`\`\`

## 🔄 Pipeline CI/CD
El workflow se activa automáticamente en cada Pull Request hacia \`main\` y ejecuta:
1. **TFLint** — Análisis estático del código
2. **Checkov** — Análisis de seguridad
3. **terraform validate** — Validación del código