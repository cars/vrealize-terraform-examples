provider "vra7" {
    username = "${var.username}"
    password = "${var.password}"
    tenant   = "${var.tenant}"
    host     = "${var.vrahost}"
}

resource "vra7_resource" "TF_Prop_Example"  {
    count = 1
    catalog_name = "TF_VRA_2VM_BP"


  catalog_configuration = {
    //Overwrite default values on properties 
    lab.bp.prop1 = "TF Blueprint Prop 1",
    lab.bp.Prop2 = "TF Blueprint Prop 2"

  }

    resource_configuration = {
        //******* VM 1 ****************
        //props available on all vms
        vm1.cpu = 1
        vm1.memory = 2048
        //custom properties that come from the blueprint
        vm1.lab.vm1.prop1 = "New Value for vm1.prop1"
        vm1.lab.vm1.Prop2 = "New Value for vm1.prop2"

        //Properties for the Software Component on VM1
        vm1.SWComponent1_1.downloadLocation ="https://dl.example.com/SWC11.exe"
        vm1.SWComponent1_1.booleanValue1 = "false"


        // VM Settings/properties
        vm2.cpu = 2
        vm2.memory = 4096
        //properties from the blueprint
        vm2.lab.vm2.prop1 = "Some Property Value on VM2"

        //Properties for the Software Component on VM1
        vm1.SWComponent1_2.downloadLocation ="https://dl.example.com/SWC12.exe"
        vm1.SWComponent1_2.booleanValue1 = "false"
  }
  
}
















