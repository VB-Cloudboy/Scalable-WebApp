resource "azurerm_dns_zone" "public_dns_zone" {
  name                = var.dnsname
  resource_group_name = var.dnsresgrp
  tags                = var.dnstags
}

resource "azurerm_dns_a_record" "dns_arecord" {
    count               = length(var.dns_a_record)
    name                = element (var.dns_a_record[count.index], 0)
    zone_name           = azurerm_dns_zone.public_dns_zone.name
    resource_group_name = azurerm_dns_zone.public_dns_zone.resource_group_name
    ttl                 = element (var.dns_a_record[count.index], 1)
    records             = element (var.dns_a_record[count.index], 2)
    depends_on = [
      azurerm_dns_zone.public_dns_zone
    ]
    tags                = var.dnstags 
}

resource "azurerm_dns_cname_record" "dns_crecord" {
    count               = length(var.dns_cname_record)
    name                = element(var.dns_cname_record[count.index], 0)
    zone_name           = azurerm_dns_zone.public_dns_zone.name
    resource_group_name = azurerm_dns_zone.public_dns_zone.resource_group_name
    ttl                 = element(var.dns_cname_record[count.index], 1)
    record              = element(var.dns_cname_record[count.index], 2)
    depends_on = [
      azurerm_dns_zone.public_dns_zone
    ]
    tags                = var.dnstags
}