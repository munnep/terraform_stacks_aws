# Terraform Stacks AWS — Authentication Examples

This repository contains two examples demonstrating different methods of authenticating to AWS when using [Terraform Stacks](https://developer.hashicorp.com/terraform/language/stacks).

## Examples

### 1. Variable Sets — Static AWS credentials via a Terraform variable set

Uses a pre-configured Terraform variable set (`aws-credentials`) to supply static AWS access keys to the stack.

→ [varsets/README.md](varsets/README.md)

---

### 2. OIDC — Dynamic AWS credentials via OpenID Connect (OIDC)

Uses dynamic, short-lived credentials generated through OIDC federation between HCP Terraform / Terraform Enterprise and AWS, removing the need to store long-lived secrets.

→ [oidc/README.md](oidc/README.md)
