# HackUCF Terraform template
This is a terraform template to spin up a virtual machine on Openstack.

## How to use this template

Clone the git repo:
```
git clone https://github.com/gr4ytech/hackucf-terraform-template.git
```

Change into the directory and run terraform init:
```
cd hackucf-terraform-template && terraform init
```

Create a ``terraform.tfvars`` file and add credential id and credential secret variables.

Plan your terraform and make sure everything looks good:
```
terraform plan
```

Run terraform apply and type yes to watch your infrastructure build!
```
terraform apply
```
