resource "docker_image" "image" {
    name = "${var.image_name}"
}

resource "docker_container" "container" {
  image = docker_image.image.latest         
  name = "${var.container_name}"
  must_run = true
  command = [
    "tail",
    "-f",
    "/dev/null"
  ]
}