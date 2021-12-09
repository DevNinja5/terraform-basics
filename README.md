# Terraform File Basics

## 1. Create a directory for practice

```bash
mkdir -p ~/terraform-practice/local
cd ~/terraform-practice/local
vim local.tf
```
## 2. Copy the below text and paste it in local.tf file
```hcl
resource "local_file" "demo" {
  filename = "./demo.txt"
  content = "this is my first terraform"
}
```
**Explanation:**
1. First line is block because it has curly braces`{ ... }`
2. `resource` is Type of Block/block Name
3. `local_file` is Resource Type. It's fixed value and depends upn provider where we want to create resource.

    This provides two bits of information local & file

    * `local` is provider.
    * `file` is type of resource.
4. `demo` is resources name to identify the resource. Can be named anything.