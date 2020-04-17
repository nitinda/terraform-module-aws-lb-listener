# _Terraform Module: terraform-module-aws-lb-listener_
_Terraform module for_ **_Load Balancer Listner_**

<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)
> **_This is a stable example. It should successfully build out of the box_**
>

---
<!--END STABILITY BANNER-->

## General

_This module may be used to create_ **_Load Balancer Listener_** _resources in AWS cloud provider....._

---

## _Prerequisites_

_This module needs_ **_Terraform 0.12.16_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._


---


## _Features_

_Below we are able to check the resources that are being created as part of this module call:_

- **_Load Balancer Listener_**




---



## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

- **_Forward Action_**

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = module.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action = {
    type             = "forward"
    target_group_arn = "${module.alb_target_group.arn}"
  }
}
```

- **_Redirect Action_**

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = module.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}
```

- **_Fixed-response Action_**

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = module.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}
```

- **_Authenticate-cognito Action_**

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = module.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}
```

- **_Authenticate-oidc Action_**

```tf
module "lb_listener" {
  source = "git::https://github.com/nitinda/terraform-module-aws-lb-listener.git?ref=master"
  
  # Providers
  providers = {
    aws = aws.services
  }

  # ALB Listener
  load_balancer_arn = module.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}
```

---



## _Inputs_


_The variables that required in order for the module to be successfully called from the layers are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_load\_balancer\_arn_** | _Load Balancer arn_ | _string_ | **_Required_** |  |
| **_port_** | _Listener port_ | _number_ | **_Required_** |  |
| **_protocol_** | _The protocol for connections from clients to the load balancer_ | _string_ | **_Optional_** | **_null_** |
| **_ssl\_policy_** | _The name of the SSL Policy for the listener.Required if protocol is **HTTPS** or **TLS**_ | _string_ | **_Optional_** | **_null_** |
| **_certificate\_arn_** | _The ARN of the default SSL server certificate.Exactly one certificate is required if the protocol is HTTPS_ | _string_ | **_Optional_** | **_null_** |
| **_default\_action_** | _An Action block_ | _any_ | **_Optional_** | **_{}_** |




## _Outputs_

### _General_

_This module has the following outputs:_


* **_arn_**
* **_id_**


---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**