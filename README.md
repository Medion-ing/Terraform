# Infrastructure AWS avec Terraform

## 📝 Description
Ce projet Terraform permet de déployer une instance EC2 basique dans la région AWS us-east-1.


## Détails de la configuration

### Provider AWS
- **Région**: us-east-1 (Virginie du Nord)

### Instance EC2
- **AMI**: ami-020cba7c55df1f615 (Amazon Linux 2 AMI dans us-east-1)
- **Type d'instance**: t2.micro (éligible au Free Tier)
- **Paire de clés**: devops-nabster (clé SSH pour accéder à l'instance)
- **Tags**:
  - Name: ec2-ciscko

## 🚀 Déploiement

1. **Initialisation**
   ```bash
   terraform init
   ```

2. **Vérification du plan**
   ```bash
   terraform plan
   ```

3. **Application**
   ```bash
   terraform apply
   ```

4. **Nettoyage**
   ```bash
   terraform destroy
   ```

## 🔒 Sécurité
- Utilisez des groupes de sécurité appropriés
- Limitez les accès SSH aux IPs nécessaires
- Mettez à jour régulièrement l'AMI

