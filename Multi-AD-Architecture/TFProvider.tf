#Provider
provider "oci" {
   tenancy_ocid = "${var.tenancy_ocid}"
   user_ocid = "${var.user_ocid}"
   fingerprint = "${var.fingerprint}"
   private_key_path = "${var.private_key_path}"
   region = "${var.region}"
   bastion_ssh_private_key= "${var.bastion_ssh_private_key}"
   disable_auto_retries = "false"

   //version = "=3.30.0"
}
