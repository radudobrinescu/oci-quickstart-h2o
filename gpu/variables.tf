# ---------------------------------------------------------------------------------------------------------------------
# Environmental variables
# You probably want to define these as environmental variables.
# Instructions on that are here: https://github.com/cloud-partners/oci-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

# Required by the OCI Provider
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}

# Key used to SSH to OCI VMs
variable "ssh_public_key" {}

# ---------------------------------------------------------------------------------------------------------------------
# Optional variables
# The defaults here will give you a cluster.  You can also modify these.
# ---------------------------------------------------------------------------------------------------------------------

variable "h2o" {
  type = "map"
  default = {
    shape = "BM.GPU2.2"
    node_count = 1
    key = "K1fRDabPJk_07hGhVE7OWtztFBFn-By_qNOT5eEUB6yKVUj5KTqGopv9_-oYsLv7cO1TGh1XqzY5_Lo9zHGAKUcNx8RPoT1hOrV75ZkxZSEVRaa-Ix-Uu9PVgEJ4E63fW_x4Fx7DFLfFnzMmMIwxGkpyQOHDuqPQe2jOwIsdZBRnQm_cfDtZnoDvndsswNzdL-sDPaLYrLdxzKoVCRdvH6UJO0mRFIGwwHIjb5dmxTT277jwwGn3HM-3PM2xTd_iuUTb_m9aqyWJJa3yp1yspVph8xPBs6_K8xLNK2j6k9vwchGRvYyYzE8Id4MPnQG8vZdQut0VktJcGUoCQrl0VmxpY2Vuc2VfdmVyc2lvbjoxCnNlcmlhbF9udW1iZXI6MzE3ODgKbGljZW5zZWVfb3JnYW5pemF0aW9uOk9yYWNsZSBDb3Jwb3JhdGlvbgpsaWNlbnNlZV9lbWFpbDpiZW4ubGFja2V5QG9yYWNsZS5jb20KbGljZW5zZWVfdXNlcl9pZDozMTc4OAppc19oMm9faW50ZXJuYWxfdXNlOmZhbHNlCmNyZWF0ZWRfYnlfZW1haWw6YWoua3Jlc2hvY2tAaDJvLmFpCmNyZWF0aW9uX2RhdGU6MjAxOS8wMy8xMwpwcm9kdWN0OkRyaXZlcmxlc3NBSQpsaWNlbnNlX3R5cGU6cGlsb3QKZXhwaXJhdGlvbl9kYXRlOjIwMTkvMDQvMzAK"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# Constants
# You probably don't need to change these.
# ---------------------------------------------------------------------------------------------------------------------

// https://docs.cloud.oracle.com/iaas/images/image/e4de7fce-d505-4c4c-a94a-0e9a72f3a259/
// Oracle-Linux-7.6-Gen2-GPU-2019.01.17-0
variable "images" {
  type = "map"
  default = {
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaau2dbdv7pdz2ove442ixqfi2a4ngir7sjt3nqa25ykqjc4mw36qiq"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaasmqd4eownxal3jw3mg5p3kpg2vhg2wh2uix56eabvzdsnqzb27ma"
    us-ashburn-1 = "ocid1.image.oc1.iad.aaaaaaaakzhli25jz7qb7papgx7cn2ssmfq347s23uqfxwhimz7wx7ewti6q"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaalzupbu66pqfc2e57oxbyqkjzeygiiec4nhehfnq4acrkly2l3aya"
    uk-london-1  = "ocid1.image.oc1.uk-london-1.aaaaaaaairsn23mmdyz6qa6payovc6fwadsd5wunwz6lxb3obqkixmj45oca"
  }
}