# ZTNA Policy as Code

This repository demonstrates S9 - Policy as Code for a Palo Alto Prisma Access / ZTNA Connector lab.

## Lab application

- Application: GLPI
- Private IP: 192.168.50.4
- Access method: GlobalProtect / Prisma Access / ZTNA Connector

## Goal

The goal is to define an application object and access policy using Terraform instead of only using the Strata Cloud Manager console.

## Terraform-managed objects

- Address object: S9-GLPI-App
- Security rule: S9-Allow-GLPI-ZTNA

## Verification

The policy is verified by:

1. Running terraform fmt, validate, and plan.
2. Applying the configuration.
3. Checking the object and rule in Strata Cloud Manager.
4. Pushing the configuration to Prisma Access.
5. Accessing GLPI from the Windows user.
6. Checking logs for the rule S9-Allow-GLPI-ZTNA.

## Console-only actions

The following actions were performed manually in Strata Cloud Manager:

- Creating the SCM service account.
- ZTNA Connector onboarding.
- License activation.
- Final Push Config.
- Runtime verification through logs.
