# Terraform: AWS EC2 and GitHub Repository Project

## Project Objectives

In this project, I demonstrate how to use Terraform to manage infrastructure as code (IaC) by:
1. Defining AWS and GitHub providers.
2. Creating an AWS EC2 instance.
3. Automating the creation of a GitHub repository.

## Skills Learned

- Understanding and configuring Terraform providers.
- Using Terraform to provision AWS EC2 instances.
- Generating and using GitHub Personal Access Tokens (PAT).
- Automating GitHub repository creation with Terraform.
- Managing multiple providers and using Terraform provider aliases.

## Tools Used

- Terraform
- AWS
- GitHub

## Step-by-Step Instructions

### 1. Defining the AWS Provider

In my Terraform configuration file, I define the AWS provider with the desired region:

provider "aws" {
  region = "us-east-1"
}

### 2. Creating an AWS EC2 Instance Using Terraform
I define a resource block for an AWS EC2 instance:

resource "aws_instance" "web" {
  ami           = "ami-04b70fa74e45c3917"  #ubuntu
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

### 3. Defining the GitHub Provider
I define the GitHub provider using a Personal Access Token:


provider "aws" {
  region     = "us-east-1"
    #access key
  #secret key 
}

provider "github" {
#token
}

### 4. Creating a Token for GitHub
- I go to my GitHub account settings.
- I navigate to Developer settings > Personal access tokens.
- I click Generate new token.
- I select the required scopes (e.g., repo) and generate the token.
- I save the token securely.

### 5. Creating a GitHub Repository Using Terraform 
I define a resource block for a GitHub repository:

resource "github_repository" "example" {
  name        = "my_nice_github_repo"
  description = "This resource was created using terraform"

  visibility = "public"
}
### How I Applied the Configuration
```hcl
Initialize Terraform:
- terraform init

- terraform apply 
