# Summary

Enables you to manage DNS zones within Azure DNS. These zones are hosted on Azure's name servers to which you can delegate the zone from the parent domain.

---

Enables you to manage DNS A Records within Azure DNS.

---

Enables you to manage DNS CNAME Records within Azure DNS.

---



## Argument Reference

- name - (Required) The name of the DNS Zone. Must be a valid domain name.

- resource_group_name - (Required) Specifies the resource group where the resource exists. Changing this forces a new resource to be created.

- tags - (Optional) A mapping of tags to assign to the resource. 

- name - (Required) The name of the DNS A Record.

- resource_group_name - (Required) Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.

- zone_name - (Required) Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.

- TTL - (Required) The Time To Live (TTL) of the DNS record in seconds.

- records - (Optional) List of IPv4 Addresses. Conflicts with target_resource_id.

- tags - (Optional) A mapping of tags to assign to the resource.

- name - (Required) The name of the DNS CNAME Record.

- resource_group_name - (Required) Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.

- zone_name - (Required) Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.

- TTL - (Required) The Time To Live (TTL) of the DNS record in seconds.

- record - (Required) The target of the CNAME.

- tags - (Optional) A mapping of tags to assign to the resource.

