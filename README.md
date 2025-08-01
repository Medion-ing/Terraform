```markdown
# Déploiement d'instance EC2 AWS avec Terraform

## Description
Cette configuration Terraform permet de déployer une instance EC2 dans la région AWS us-east-1 avec une configuration de base.

## Détails de la configuration

### Provider AWS
- **Région**: us-east-1 (Virginie du Nord)

### Instance EC2
- **AMI**: ami-020cba7c55df1f615 (Amazon Linux 2 AMI dans us-east-1)
- **Type d'instance**: t2.micro (éligible au Free Tier)
- **Paire de clés**: devops-nabster (clé SSH pour accéder à l'instance)
- **Tags**:
  - Name: ec2-ciscko

## Prérequis
- Compte AWS avec les bonnes permissions
- Terraform installé sur votre machine locale
- AWS CLI configuré avec les permissions appropriées
- Paire de clés existante nommée "devops-nabster" dans la région AWS us-east-1

## Utilisation

1. Initialiser Terraform:
   ```bash
   terraform init
   ```

2. Vérifier le plan d'exécution:
   ```bash
   terraform plan
   ```

3. Appliquer la configuration:
   ```bash
   terraform apply
   ```

4. Détruire les ressources lorsqu'elles ne sont plus nécessaires:
   ```bash
   terraform destroy
   ```

## Notes importantes
- Vérifiez bien toutes les ressources avant de les déployer
- Le type d'instance t2.micro est éligible au Free Tier mais vérifiez votre utilisation AWS
- L'ID AMI est spécifique à la région us-east-1
- Assurez-vous que vos credentials AWS ont les permissions nécessaires pour créer des instances EC2

## Variables
Cette configuration utilise des valeurs en dur. Pour un usage en production, envisagez de les convertir en variables pour plus de flexibilité.

## Considérations de sécurité
- L'instance sera lancée avec la paire de clés spécifiée pour l'accès SSH
- Assurez-vous d'associer des security groups appropriés (non montrés dans cette configuration)
- Mettez régulièrement à jour l'AMI vers la dernière version pour les correctifs de sécurité

## Auteur
Medion Mbainaissem Narcisse
