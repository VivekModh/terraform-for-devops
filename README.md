# 🚀 Terraform for DevOps

This repository documents my journey of **learning Terraform from basics** and implementing **Infrastructure as Code (IaC)** to automate AWS resources.  

The project provisions:
- ✅ **EC2 instance** with customizable variables (Region, AMI ID, Instance Type, Root Storage)
- ✅ **Automated Nginx installation** on successful instance creation
- ✅ **S3 bucket automation**

---

## 📚 What I Learned

- Fundamentals of **Terraform (IaC)** — providers, resources, variables, outputs, state management
- Writing **modular Terraform code** by splitting configuration into multiple `.tf` files
- Using **custom variables** to make infrastructure reusable and flexible
- Automating **server provisioning** with Bash scripts (`install_nginx.sh`)
- Creating and managing **AWS S3 buckets** via Terraform
- Following **DevOps best practices** for automation and reproducibility

---

## 🏗️ Project Structure
terraform-for-devops/
│── main.tf # Root Terraform configuration
│── provider.tf # AWS provider setup
│── variable.tf # Input variables (region, ami_id, instance_type, etc.)
│── outputs.tf # Outputs after apply (e.g., public IP)
│── ec2.tf # EC2 instance automation
│── s3.tf # S3 bucket automation
│── install_nginx.sh # Script to install & configure Nginx
│── terraform.tfstate # State file (ignored in .gitignore)
│── .terraform.lock.hcl # Provider lock file
│── .gitignore # Ignore state & sensitive files



---

## ⚙️ Customization

You can easily customize the infrastructure by modifying **variables** in `variable.tf` or passing them via CLI.

Supported variables:
- `region` → AWS region  
- `ami_id` → Amazon Machine Image ID  
- `instance_type` → EC2 type (e.g., t2.micro, t3.medium)  
- `root_block_size` → Root volume storage size  
- `bucket_name` → S3 bucket name  

Example:

```bash
terraform apply \
  -var="region=us-east-1" \
  -var="ami_id=ami-1234567890abcdef0" \
  -var="instance_type=t3.micro" \
  -var="root_block_size=20" \
  -var="bucket_name=my-terraform-bucket"


---

𝐈𝐧𝐬𝐭𝐚𝐥𝐥𝐚𝐭𝐢𝐨𝐧 𝐬𝐭𝐞𝐩𝐬 𝐨𝐟 𝐭𝐞𝐫𝐫𝐢𝐟𝐨𝐫𝐦 𝐟𝐫𝐨𝐦 𝐨𝐟𝐟𝐢𝐜𝐢𝐚𝐥 𝐡𝐚𝐬𝐡𝐢𝐜𝐨𝐫𝐩 𝐰𝐞𝐛𝐬𝐢𝐭𝐞-
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform
terraform --version

𝐂𝐨𝐦𝐦𝐚𝐧𝐝𝐬 𝐢 𝐮𝐬𝐞𝐝 𝐦𝐚𝐢𝐧𝐥𝐲 -
terraform init
terraform plan
terraform fmt
terraform validate
terraform apply
terraform apply -auto-approve
terraform destroy
terraform destroy -auto-approve
