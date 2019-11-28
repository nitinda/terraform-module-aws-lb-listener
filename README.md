# Terraform Module Name: terraform-module-aws-lb-listener


## General

This module may be used to create **_Load Balancer Listener_** resources in AWS cloud provider..

---

## Prerequisites

This module needs Terraform **_0.11.14_** or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.

---

## Features Branches

Below we are able to check the resources that are being created as part of this module call:

From branch : **_listener-http_**

- **_Load Balancer Listener (HTTP - Terraform 11 supported code)_**



---

## Usage

The variables that required in order for the module to be successfully called from the layers are the following:


|         **_Variable_**          |        **_Description_**            |   **_Type_**   |
|---------------------------------|-------------------------------------|----------------|
| load_balancer_arn               | Load Balancer arn                   | string         |
| listener_port                   | Listener port                       | string         |
| listener_protocol               | Listener protocol                   | string         |
| target_group_arn                | Target Group arn                    | string         |




## Outputs

### General
Below are the variables that Networking Module exposes in order to be used by other layers


- **_id_**
- **_arn_**



### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

If an output variable needs to be exposed on root level in order to be accessed through terraform state file follow the steps below:

- Include the syntax above in the network layer output terraform file.
- Add the code snippet below to the variables/global_variables file.

```tf
data "terraform_remote_state" "<module_name>" {
  backend = "s3"

  config {
    bucket = <bucket_name> (i.e. "uki-s3-terraform-state")
    key    = <state_file_relative_path> (i.e. "env:/${terraform.workspace}/4_Networking/terraform.tfstate")
    region = <bucket_region> (i.e. "eu-central-1")
  }
}
```


- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
"${data.terraform_remote_state.<module_name>.<output_variable_name>}"
```


## Authors
Module maintained by Module maintained by the - **_Nitin Das_**