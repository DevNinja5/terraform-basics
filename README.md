# Terraform Basics

## Installation - Terraform

**In this case I'm using ubuntu-20.04**

1. Download the .zip file of terraform
    ```bash
    cd ~/Desktop
    wget https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip
    ```
2. Unzip the downloaded zip file
    ```bash
    unzip $(ls | grep terraform*.zip| head -1)
    ```
3. Move the binary into /bin dir
    ```bash
    sudo mv terraform /usr/local/bin
    ```
4. Install Terraform Auto-Completion
    ```bash
    terraform -install-autocomplete
    source ~/.bashrc
    ```
5. Check terraform is successfully installed.
    ```bash
    terraform version
    ```
---


# Terraform File

## 1. Create a directory for practice

```bash
mkdir -p ~/terraform-practice/local
cd ~/terraform-practice/local
```

## 2. Open a file in Vim editor or any editor or any IDE 

```bash
vim local.tf
```

## 3. Copy the below text and paste it in local.tf file
```hcl
resource "local_file" "demo" {
  filename = "./demo.txt"
  content = "this is my first terraform"
}
```
**Explanation:**
1. First line is block because it has curly braces`{ ... }`
2. `resource` is Type of Block/Block Name
3. `local_file` is Resource Type. It's fixed value and depends upn provider where we want to create resource.

    This provides two bits of information local & file

    * `local` is provider.
    * `file` is type of resource.
4. `demo` is resources name to identify the resource. Can be named anything.
5. Arguements: `filename` & `content` are arguements for resource which are written in K-V format. These are specific to the type of resource that we are creating that is `local_file` in this case.
    * `filename`: In this we assign name of file along with path. 
    * `content`: It will add content in above file we created that is `demo.txt`

## 4. Initiallize terraform

```bash
terraform init
```

## 5. Check Plan 

```bash
terraform plan
```

## 6. Apply to Ceate resources

```bash
terraform apply
```
Type `yes` to confirm.
