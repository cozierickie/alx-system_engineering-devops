# 0x1B. Web Stack Debugging #4

This project focuses on debugging and configuring web server setups using Puppet manifests on Ubuntu 14.04 LTS.

## Contents

1. [Description](#description)
2. [Tasks](#tasks)
3. [Requirements](#requirements)
4. [Setup](#setup)
5. [Usage](#usage)
6. [Files](#files)
7. [Author](#author)

## Description

In this project, we address various issues related to web server configurations, focusing on performance optimization and user management using Puppet.

## Tasks

- **Task 0**: Improve the performance of an Nginx web server under load using ApacheBench.
- **Task 1**: Fix the OS configuration to allow the holberton user to log in and open files without encountering "Too many open files" errors.

## Requirements

- All tasks are executed on Ubuntu 14.04 LTS.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without errors.
- Puppet manifests must run without errors.
- Manifest files must end with the extension `.pp`.
- Scripts and configurations must be effective in resolving the specified issues.

## Setup

To run Puppet manifests:
1. Install Ruby and `puppet-lint`:

