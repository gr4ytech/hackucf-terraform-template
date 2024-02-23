data "openstack_networking_network_v2" "external_network" {
  name = "External Network"
}

data "openstack_compute_flavor_v2" "test_instance_flavor" {
  name = var.flavor
}

data "openstack_images_image_v2" "test_instance_image" {
  name = var.image
}