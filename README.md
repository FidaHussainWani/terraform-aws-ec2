<<<<<<< HEAD
# 🚀 Terraform AWS EC2 Instance — Student Assignment

Deploy an Amazon Linux EC2 instance on AWS using Terraform (Infrastructure as Code).

---

## 📋 Project Overview

| Parameter       | Value                        |
|----------------|------------------------------|
| Cloud Provider  | AWS                          |
| Region          | ap-south-1 (Mumbai)          |
| AMI             | Amazon Linux 2               |
| Instance Type   | t2.micro (Free Tier eligible)|
| Instance Name   | Terraform-Student-Instance   |
| IaC Tool        | Terraform ≥ 1.0              |

---

## 📁 Project Structure

```
terraform-aws-ec2/
├── main.tf         # EC2 resource + provider config
├── variables.tf    # Input variables (region, AMI, type)
├── outputs.tf      # Output values (IP, ID, state)
├── versions.tf     # Terraform & AWS provider versions
├── .gitignore      # Excludes state files & credentials
└── README.md       # This file
```

---

## ✅ Prerequisites

Before running this project, make sure you have:

1. **Terraform installed** — [Download here](https://developer.hashicorp.com/terraform/downloads)
   ```bash
   terraform -version   # Should be >= 1.0.0
   ```

2. **AWS CLI installed & configured** — [Download here](https://aws.amazon.com/cli/)
   ```bash
   aws configure
   # Enter: AWS Access Key ID
   # Enter: AWS Secret Access Key
   # Enter: Default region (ap-south-1)
   # Enter: Output format (json)
   ```

3. **AWS Account** with permissions to create EC2 instances.

---

## 🛠️ Steps to Deploy

### Step 1 — Clone the Repository

```bash
git clone https://github.com/<your-username>/terraform-aws-ec2.git
cd terraform-aws-ec2
```

### Step 2 — Initialize Terraform

Downloads the AWS provider plugin and sets up the working directory.

```bash
terraform init
```

**Expected output:**
```
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/aws v5.x.x...
Terraform has been successfully initialized!
```

---

### Step 3 — Preview the Plan

Shows what Terraform *will* create — no changes are made yet.

```bash
terraform plan
```

**Expected output:**
```
Terraform will perform the following actions:

  # aws_instance.my_instance will be created
  + resource "aws_instance" "my_instance" {
      + ami           = "ami-0f58b397bc5c1f2e8"
      + instance_type = "t2.micro"
      + tags = {
          + "Name" = "Terraform-Student-Instance"
        }
      ...
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```

---

### Step 4 — Apply (Deploy the EC2 Instance)

Creates the actual resources on AWS.

```bash
terraform apply
```

Type `yes` when prompted to confirm.

**Expected output:**
```
aws_instance.my_instance: Creating...
aws_instance.my_instance: Still creating... [10s elapsed]
aws_instance.my_instance: Creation complete after 32s [id=i-0abc123def456]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

instance_id         = "i-0abc123def456"
instance_public_ip  = "13.232.xxx.xxx"
instance_private_ip = "172.31.x.x"
instance_state      = "running"
availability_zone   = "ap-south-1a"
```

---

### Step 5 — Verify in AWS Console

1. Go to **AWS Console → EC2 → Instances**
2. Search for `Terraform-Student-Instance`
3. Confirm state is **running** ✅

---

### Step 6 — Destroy Resources (Clean Up)

⚠️ **Important:** Always destroy resources after the assignment to avoid AWS charges.

```bash
terraform destroy
```

Type `yes` when prompted.

---

## 📤 Output Values

After `terraform apply`, the following outputs are displayed:

| Output               | Description                        |
|---------------------|------------------------------------|
| `instance_id`        | Unique EC2 instance ID             |
| `instance_public_ip` | Public IP to SSH into the instance |
| `instance_private_ip`| Private IP within the VPC          |
| `instance_state`     | Current state (running/stopped)    |
| `availability_zone`  | AZ where instance is deployed      |

---

## ⚙️ Customizing Variables

You can override defaults without editing files:

```bash
# Use a different region
terraform apply -var="aws_region=us-east-1"

# Use a different instance type
terraform apply -var="instance_type=t3.micro"
```

Or create a `terraform.tfvars` file:
```hcl
aws_region    = "ap-south-1"
instance_type = "t2.micro"
```

---

## 🔒 Security Notes

- **Never commit** `*.tfstate` files — they may contain sensitive data.
- **Never commit** AWS credentials or `.pem` key files.
- The `.gitignore` in this repo already excludes these files.

---

## 📚 Key Terraform Commands Reference

| Command              | Purpose                                      |
|---------------------|----------------------------------------------|
| `terraform init`     | Initialize project & download providers      |
| `terraform plan`     | Preview changes before applying              |
| `terraform apply`    | Create/update real infrastructure            |
| `terraform destroy`  | Delete all managed resources                 |
| `terraform output`   | Show output values after apply               |
| `terraform show`     | Inspect current state                        |
| `terraform fmt`      | Auto-format `.tf` files                      |
| `terraform validate` | Check configuration syntax                   |

---

## 🧠 What I Learned

- How to write Terraform configuration files (`.tf`)
- Difference between `init`, `plan`, `apply`, and `destroy`
- How to define variables, outputs, and provider configs
- How to use Terraform to provision AWS EC2 instances
- Importance of `.gitignore` for state files and credentials

---

## 👤 Author

**Student Name** | Terraform Basics Assignment
=======
# terraform-aws-ec2
>>>>>>> 626df2492edf427bdd9bb5374acbd99361b20770
