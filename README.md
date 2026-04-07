# Terraform Labs – Final Deliverables

## Overview

This repository contains a sequence of introductory Terraform labs focused on two providers:

- **GitHub**
- **AWS**

The purpose of these labs is to help students understand the basic Terraform workflow, including:

- provider configuration
- initialization with `terraform init`
- validation with `terraform validate`
- execution planning with `terraform plan`
- infrastructure creation with `terraform apply`
- update of existing resources
- cleanup with `terraform destroy`

Throughout the labs, students will work with real infrastructure resources such as:

- GitHub repositories
- AWS EC2 instances

---

## Important Naming Convention

To avoid conflicts between resources created by different students, **every resource name must include the student identifier using the format**:

`firstname-lastname`

### Example
- `sara-palacios`

This convention must be used whenever the lab asks you to create or name resources, for example:

- GitHub repositories
- EC2 instance names
- tags and other identifiers when requested

### Examples of valid names
- `terraform-example-sara-palacios`
- `terraform-course-repo-sara-palacios`
- `terraform-free-tier-ec2-sara-palacios`

Do **not** use generic names without your identifier, because duplicate names may create conflicts with other students’ work.

---

## Labs Included

## 1. GitHub Lab 01 – Provider Configuration

In this lab, students configure the **GitHub provider** in Terraform and verify that the Terraform project is correctly initialized.

At a high level, this lab covers:

- installation and verification of Terraform
- project folder setup
- creation of the `main.tf` file
- provider configuration
- execution of:
  - `terraform init`
  - `terraform validate`
  - `terraform plan`

---

## 2. GitHub Lab 02 – Repository Creation and Update

In this lab, students use Terraform to create and later update a **GitHub repository**.

At a high level, this lab covers:

- GitHub authentication setup
- repository creation with Terraform
- verification of the created repository
- modification of repository attributes
- re-application of Terraform changes

PLEASE ensure that the repository name includes  identifier using the format `firstname-lastname`.

Examples:
- `terraform-example-firstname-lastname`
- `terraform-course-repo-firstname-lastname`

---

## 3. AWS Lab 01 – Provider Configuration

In this lab, students configure the **AWS provider** in Terraform and verify that the project is ready to work with AWS.

At a high level, this lab covers:

- installation and verification of Terraform
- creation of the Terraform project
- provider configuration for AWS
- execution of:
  - `terraform init`
  - `terraform validate`
  - `terraform plan`


---

## 4. AWS Lab 02 – EC2 Instance Creation and Update

In this lab, students use Terraform to create and later update an **AWS EC2 instance**.

At a high level, this lab covers:

- AMI lookup
- use of the default VPC and subnet
- creation of an EC2 instance
- use of tags to identify resources
- verification of the instance with AWS CLI
- update of instance tags using Terraform

PLEASE ensure that the EC2 instance tag `Name` includes their identifier using the format `firstname-lastname`.

Examples:
- `terraform-free-tier-ec2-firstname-lastname`
- `terraform-free-tier-ec2-updated-firstname-lastname`

---

## Submission Checklist

Before submitting, verify that your submission includes:

- screenshots of the outputs of **all commands executed**
- screenshot of the **GitHub repository created**
- screenshot of the **GitHub repository after the changes**
- screenshot of the **EC2 instance created**
- screenshot of the **EC2 instance tags after the changes**
- evidence that your created resources use the `firstname-lastname` naming convention


