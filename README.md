
# AWS Level 3 – Repetition

DevOps-projekt med Terraform, Bash, Ansible och Git.

## Tekniker
- Terraform – Infrastructure as Code
- AWS EC2 – Virtuell server
- Bash – Automatisk installation
- Ansible – Konfiguration av Nginx
- Git och GitHub – Versionshantering

## Så fungerar projektet
1. Terraform definierar en EC2-instans.
2. Bash User Data installerar Ansible.
3. Ansible installerar Nginx och Git.
4. Git hämtar webbplatsens kod från GitHub.
5. Nginx serverar webbplatsen.

## Status
Konfigurationen är validerad lokalt.
Ingen EC2-instans har skapats under repetitionen.

## CI/CD – GitHub Actions

Projektet använder GitHub Actions för automatisk kodkontroll.

Vid varje push till main eller vid en Pull Request körs:

- Terraform Format Check
- Terraform Init
- Terraform Validate
- Bash Syntax Check
- Ansible Syntax Check

Pipelinen kontrollerar koden utan att skapa AWS-resurser.

## Git-arbetsflöde

Ändringar utvecklas i separata feature branches.
En Pull Request används för att granska och sammanfoga
ändringarna till main.
