# Projet5-Infrastructure-asCode-AWS
🚀 Projet 5 – Infrastructure as Code avec Terraform & Ansible
🎯 Objectif
Automatiser la création d’une infrastructure cloud AWS et la configuration logicielle (Apache, sécurité, etc.) grâce à :
✅ Terraform (infrastructure)
✅ Ansible (configuration et sécurité)
✅ UFW + fail2ban (protection du serveur)
✅ Ansible Vault (gestion sécurisée des secrets)

⚙️ Étapes principales
1️⃣ Provisionnement de l’infrastructure (Terraform)
EC2 : création d’une instance Amazon Linux/Ubuntu avec un VPC par défaut.

S3 : création d’un bucket pour les sauvegardes ou les partages de fichiers.

Utilisation de modules pour plus de modularité et de réutilisabilité.

Variables, outputs et backend pour centraliser les valeurs.

2️⃣ Configuration logicielle (Ansible)
Playbook Ansible :

Met à jour les paquets.

Installe Apache (serveur web) et déploie une page personnalisée.

Ajoute et configure UFW (pare-feu) pour n’ouvrir que SSH et HTTP.

Ajoute et configure fail2ban pour bloquer les attaques par force brute.

Ansible Vault :

Chiffre les secrets sensibles (ex. : mots de passe DB) pour les protéger dans le dépôt Git.

3️⃣ Organisation professionnelle (Ansible roles/)
Découpage en rôles :

apache : installation et configuration.

ufw : configuration du pare-feu.

fail2ban : protection avancée.

Un fichier site.yml global pour orchestrer l’ensemble.

4️⃣ Automatisation de bout en bout (Terraform ➜ Ansible)
Provisonneur local-exec dans Terraform :

Appelle Ansible après la création des ressources.

Résultat : infra et configuration logicielle sont liées et automatisées.

🗂️ Structure de mon projet
bash
Copier
Modifier
terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── ansible/
│   ├── inventory.ini
│   ├── site.yml
│   ├── roles/
│   │   ├── apache/
│   │   │   ├── tasks/main.yml
│   │   │   ├── handlers/main.yml
│   │   │   └── files/index.html
│   │   ├── ufw/
│   │   │   ├── tasks/main.yml
│   │   └── fail2ban/
│   │       ├── tasks/main.yml
│   ├── group_vars/
│   └── secrets.yml (chiffré avec Ansible Vault)
