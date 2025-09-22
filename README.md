# EC2 Wiki Deployment (Pixel Learning Co.)

This project contains my user data script that automatically deploys a DokuWiki instance on AWS EC2 (Ubuntu 22.04).

## Features
- Installs Apache + PHP
- Downloads and extracts DokuWiki
- Fixes permissions
- Creates three wiki pages: `home`, `aws_notes`, `linux_commands`

## How to use
1. Launch an EC2 instance (t2.micro, Ubuntu 22.04).
2. Add this script into the **User data** section under Advanced details.
3. After boot, visit `http://<public-ip>` in your browser to access DokuWiki.

