# Create a test server
resource "openstack_compute_instance_v2" "test-server" {
  name = var.instance_name
  flavor_id = data.openstack_images_image_v2.test_instance_image.id

  block_device {
    uuid = data.openstack_images_image_v2.test_instance_image.id
    source_type = "image"
    volume_size = data.openstack_compute_flavor_v2.test_instance_flavor.disk
    destination_type = "volume"
    delete_on_termination = "true"
  }

  network {
    port = openstack_networking_port_v2.test_instance_port.id
  }
}