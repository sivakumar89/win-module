resource "bofav_resource" "vm_instance_windows_appserver" {
  template        = "windows_iis_70294_cest"
  ait             = var.ait
  ou              = var.ou
  env             = var.env
  deploymentid    = var.deployment_id
  hostnamepattern = var.hostnamepattern
  hostname        = var.hostname
  os = {
    ostype    = "windows"
    osversion = var.osversion
  }
  shape = {
    cpucores = var.cpucores
    meminmb  = var.meminmb
  }
  networkplacement = {
    availabilityzone  = var.availabilityzone
    networkzonetype   = var.networkzonetype
    networkzonename   = var.networkzonename
    zonepartitionname = var.zonepartitionname
  }
  iops             = var.iops
  hostgroupname    = var.hostgroupname
  backup           = var.backup
  timezone         = var.timezone
  systemdisks      = var.default_windows_system_disks
  applicationdisks = concat(var.default_windows_application_disks, var.additional_disks)
  userdisks        = var.user_disks
  lifecycle {
    precondition {
      condition     = var.env != null || var.deployment_id != null
      error_message = "When 'env' is not informed, 'deployment_id' is required."
    }
    precondition {
      condition     = var.hostnamepattern == 0 || var.hostname != null
      error_message = "hostname is required"
    }
    precondition {
      condition     = var.hostnamepattern != 0 || var.hostname == null
      error_message = "hostname must not be informed when hostnamepattern == 0"
    }
  }
}