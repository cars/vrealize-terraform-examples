variable username  {
    description = "The vRealize Automation user id. (Ex: user1@ad.example.com)"
    default = "administrator@vsphere.local"
}
variable password {
    description = "The password of the vRA user being used"
    default = ""
}
variable tenant {
    description = "The name of the tenant whose catalog items are being requested"
    default = "vsphere.local"
}
variable vrahost {
    description = "The Path to the vRA Server (ex: https://vra1.examples.com)"
    default = ""
}
