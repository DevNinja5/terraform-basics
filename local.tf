resource "local_file" "demo" {
  filename = "./demo.txt"
  content = "this is my first terraform"
}