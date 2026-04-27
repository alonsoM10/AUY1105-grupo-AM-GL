package terraform.policies.ssh

import future.keywords.if
import future.keywords.contains

deny contains msg if {
    resource := input.resource_changes[_]
    resource.type == "aws_security_group"
    ingress := resource.change.after.ingress[_]
    ingress.cidr_blocks[_] == "0.0.0.0/0"
    ingress.from_port <= 22
    ingress.to_port >= 22
    msg := sprintf("ERROR: El Security Group '%v' permite acceso SSH público (0.0.0.0/0). Esto no está permitido.", [resource.address])
}