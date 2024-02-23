resource "openstack_networking_secgroup_v2" "test_instance_secgroup" {
  name = "${var.instance_name} Security Group"
}

resource "openstack_networking_secgroup_rule_v2" "allow_icmp" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "icmp"
  remote_group_id = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.test_instance_secgroup.id
}

resource "openstack_networking_secgroup_rule_v2" "allow_ssh" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  port_range_max = 22
  port_range_min = 22
  remote_group_id = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.test_instance_secgroup.id
}

resource "openstack_networking_port_v2" "test_instance_port" {
  name = "${var.instance_name} Port"
  network_id = data.openstack_networking_network_v2.external_network.id
  admin_state_up = true
  security_group_ids = [ openstack_networking_secgroup_v2.test_instance_secgroup.id ]
}