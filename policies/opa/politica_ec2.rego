package terraform.policies.ec2

import future.keywords.if
import future.keywords.contains

deny contains msg if {
    resource := input.resource_changes[_]
    resource.type == "aws_instance"
    instance_type := resource.change.after.instance_type
    instance_type != "t2.micro"
    msg := sprintf("ERROR: La instancia EC2 '%v' usa tipo '%v'. Solo se permite t2.micro.", [resource.address, instance_type])
}