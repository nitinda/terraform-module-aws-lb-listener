# Terraform Module: terraform-module-aws-lb-listener


## General

_This module may be used to create_ **_Load Balancer Listener_** _resources in AWS cloud provider....._

---

## Prerequisites

_This module needs_ **_Terraform 0.12.16_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---


## Features

_Below we are able to check the resources that are being created as part of this module call:_

- **_Load Balancer Listener_**




---



## Usage

## Using this repo

_To use this module, add the following call to your code:_

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=terraform-12/listener-http"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = var.load_balancer_arn
  port              = 80
  protocol          = "HTTP"
  target_group_arn  = var.target_group_arn
}
```


---



## Inputs


_The variables that required in order for the module to be successfully called from the layers are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Comments_** |
|:----|:----|-----:|-----:|
| **_load\_balancer\_arn_** | _Load Balancer arn_ | _string_ | **_Required_** |
| **_listener\_port_** | _Listener port_ | _number_ | **_Required_** |
| **_listener\_protocol_** | _Listener protocol_ | _string_ | **_Required_** |
| **_target\_group\_arn_** | _Target Group arn_ | _string_ | **_Required_** |


## Outputs

### General
_Below are the variables that Networking Module exposes in order to be used by other layers_


* **_arn_**
* **_id_**



### Usage
_In order for the variables to be accessed on module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```
_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>
```


## Authors
_Module maintained by Module maintained by the -_ **_Nitin Das_**