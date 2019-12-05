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

From branch : **_terraform-11/listener-http_**

- **_Load Balancer Listener (HTTP - Terraform 11 supported code)_**


From branch : **_terraform-11/listener-https_**

- **_Load Balancer Listener (HTTPS - Terraform 11 supported code)_**


From branch : **_terraform-11/listener-tcp_**

- **_Load Balancer Listener (TCP - Terraform 11 supported code)_**



---



## Usage

## Using this repo

To use this module, add the following call to your code:

```tf
module "<layer>-lb-listener-<AccountID>" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"


}
```


---



## Inputs


The variables that required in order for the module to be successfully called from the layers are the following:


* **_Details are in respective branch._**


## Outputs

### General
Below are the variables that Networking Module exposes in order to be used by other layers


* **_Details are in respective branch._**


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