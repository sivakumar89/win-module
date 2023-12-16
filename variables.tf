variable "env" {
  description = "Defines the environment (lane) of the VM. Accepted values are: dev"
  type        = string
  default     = null
}

variable "deployment_id" {
  description = "ID of the deployment in the BofA Cloud Portal. It must be informed"
  type        = string
  default     = null
}

variable "ait" {
  description = "Ait Number"
  type        = number
}

variable "ou" {
  description = "Full OU of the VM"
  type        = string
}

variable "availabilityzone" {
  description = "VM Availability Zone. Can be obtained from: https:-services"
  type        = string
}

variable "networkzonetype" {
  description = "VM Network Zone Type. Ex. Standard / DZ. Can be obtained from: ht"
  type        = string
  default     = "Standard"
}

variable "networkzonename" {
  description = "VM Network Zone Name. Ex. Baronet. Can be obtained from: httpcloud-serv"
  type        = string
  default     = "Baronet"
}

variable "zonepartitionname" {
  description = "VM Zone Partition Name. Ex. Baronet / Secure / Presentation. Can be obtained from: https"
  type        = string
  default     = "Baronet"
}

variable "iops" {
  description = "VM Storage IOPs. Ex.5k / 10k"
  type        = string
  default     = "5k"
}

variable "hostnamepattern" {
  description = "Custom Pattern applied to the Hostname \ne - Auto (Hostname is auto-generated) \n1 - RPGI"
  type        = number
}

variable "hostname" {
  description = "Custom hostname. Needs to be informed if the hostnamepattern is different than 0(Auto)"
  default     = null
}

variable "hostgroupname" {
  description = "Name of the Reserve Maintenance Window Group. Can be obtained from: ht"
  type        = string
}

variable "osversion" {
  description = "Windows OS Version"
  type        = string
  default     = "Windows 2022"
}

variable "cpucores" {
  description = "Quantity of cpu cores"
  type        = number
  default     = 2
}

variable "meminmb" {
  description = "Amount of Memory in MB"
  type        = number
  default     = 8192
}

variable "backup" {
  type    = string
  default = "none"
}

variable "timezone" {
  description = "Timezone name. Ex: US/Central, US/Eastern, Europe/London"
  type        = string
  default     = null
}

variable "tags" {
  description = "VM Tags"
  type        = map(string)
  default     = {}
}

variable "additional_disks" {
  description = "Add new disks to application disks list"
  type        = list(any)
  default     = []
}

variable "user_disks" {
  description = "Add new user managed disks"
  type        = list(any)
  default     = []
}

variable "default_windows_system_disks" {
  description = "Default System Disks for Windows"
  type        = list(any)
  default     = [{ sizeingb = 100, mount = "C" }]
}

variable "default_windows_application_disks" {
  description = "Default Application Disks for Windows"
  type        = list(any)
  default     = [{ sizeingb = 10, mount = "D" }]
}