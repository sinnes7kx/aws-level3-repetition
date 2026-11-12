#!/bin/bash
set -euxo pipefail

# Uppdatera Amazon Linux 2023
dnf update -y

# Installera Ansible
dnf install -y ansible

# Skapa Ansible-playbooken på EC2
cat > /root/config-and-deploy.web.yml <<'EOF'
${playbook_content}
EOF

# Kör Ansible automatiskt
ansible-playbook -i localhost, -c local /root/config-and-deploy.web.yml
