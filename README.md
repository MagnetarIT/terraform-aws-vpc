<a href=https://magnetarconsulting.co.uk><img src="https://magnetarconsulting.co.uk/wp-content/uploads/2020/04/small-helping-you-innovate-magnetar.png" width="300"></a>

# terraform-aws-vpc
Terraform (>= 0.12.0) module to create a [AWS VPC](https://docs.aws.amazon.com/vpc/index.html) 

- [Intro](#Intro)
- [Providers](#Providers)
- [Inputs](#Inputs)
- [Outputs](#Outputs)
- [Support](#Support)
- [License](#License)


----
## Intro
The module will create the below resources using Terraform:
- VPC
- Default Security Group (Optional)
- Internet Gateway (Optional)

---

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

---

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cidr\_block | CIDR for the VPC | `string` | n/a | yes |
| create\_aws\_internet\_gateway | A boolean flag to create an Internet Gateway for the VPC | `bool` | `false` | no |
| enable\_classiclink | A boolean flag to enable/disable ClassicLink for the VPC | `bool` | `false` | no |
| enable\_classiclink\_dns\_support | A boolean flag to enable/disable ClassicLink DNS Support for the VPC | `bool` | `false` | no |
| enable\_default\_security\_group\_with\_custom\_rules | A boolean flag to enable/disable custom and restricive inbound/outbound rules for the default VPC's SG | `bool` | `true` | no |
| enable\_dns\_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC | `bool` | `true` | no |
| enable\_dns\_support | A boolean flag to enable/disable DNS support in the VPC | `bool` | `true` | no |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | `string` | `""` | no |
| instance\_tenancy | A tenancy option for instances launched into the VPC | `string` | `"default"` | no |
| name | Name  (e.g. `app` or `cluster`) | `string` | n/a | yes |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | `string` | `""` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

---

## Outputs

| Name | Description |
|------|-------------|
| igw\_id | The ID of the Internet Gateway |
| ipv6\_cidr\_block | The IPv6 CIDR block |
| vpc\_cidr\_block | The CIDR block of the VPC |
| vpc\_default\_network\_acl\_id | The ID of the network ACL created by default on VPC creation |
| vpc\_default\_route\_table\_id | The ID of the route table created by default on VPC creation |
| vpc\_default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| vpc\_id | The ID of the VPC |
| vpc\_ipv6\_association\_id | The association ID for the IPv6 CIDR block |
| vpc\_main\_route\_table\_id | The ID of the main route table associated with this VPC |

---

## Support

Reach out to me at one of the following places!

- Website at <a href="https://magnetarconsulting.co.uk" target="_blank">`magnetarconsulting.co.uk`</a>
- Twitter at <a href="https://twitter.com/magnetarIT" target="_blank">`@magnetarIT`</a>
- LinkedIn at <a href="https://www.linkedin.com/company/magnetar-it-consulting" target="_blank">`magnetar-it-consulting`</a>

---

## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

