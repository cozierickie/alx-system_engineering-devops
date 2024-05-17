 SSL
DevOps, SysAdmin, Security
This project covers concepts related to setting up HTTPS and SSL/TLS for secure web traffic, debugging the web stack, and understanding DNS configurations. By the end of the project, you will have configured subdomains, set up SSL termination with HAProxy, and enforced HTTPS traffic.

Learning Objectives
What is HTTPS SSL: Understand the two main roles of HTTPS SSL.
Purpose of Encrypting Traffic: Learn why encrypting traffic is crucial for security.
SSL Termination: Understand what SSL termination means and how to implement it.
Requirements
Use of vi, vim, emacs editors.
All scripts interpreted on Ubuntu 16.04 LTS.
Scripts end with a new line.
Mandatory README.md file in the project root.
Bash scripts must be executable and pass Shellcheck (version 0.3.7) without errors.
The first line of Bash scripts should be #!/usr/bin/env bash.
The second line should be a comment explaining the script's function.
Tasks
Task 0: World Wide Web
Objective: Configure your domain zone to include subdomains and write a Bash script to display subdomain information.

Steps:
DNS Configuration:

Add subdomain www pointing to the IP of lb-01.
Add subdomain lb-01 pointing to the IP of lb-01.
Add subdomain web-01 pointing to the IP of web-01.
Add subdomain web-02 pointing to the IP of web-02.
Bash Script:

Accepts two arguments: domain (mandatory) and subdomain (optional).
Outputs the record type and destination of the subdomain(s).
Example:

#!/usr/bin/env bash
# Script to fetch DNS information for subdomains

get_subdomain_info() {
    local DOMAIN=$1
    local SUBDOMAIN=$2

    if [ -z "$SUBDOMAIN" ]; then
        SUBDOMAIN_LIST=("www" "lb-01" "web-01" "web-02")
    else
        SUBDOMAIN_LIST=($SUBDOMAIN)
    fi

    for SUB in "${SUBDOMAIN_LIST[@]}"; do
        RECORD=$(dig +short $SUB.$DOMAIN)
        if [ -n "$RECORD" ]; then
            echo "The subdomain $SUB is an A record and points to $RECORD"
        else
            echo "No record found for $SUB.$DOMAIN"
        fi
    done
}

DOMAIN=$1
SUBDOMAIN=$2
get_subdomain_info $DOMAIN $SUBDOMAIN


Task 1: HAProxy SSL Termination
Objective: Configure HAProxy to handle SSL termination.

Steps:
Install HAProxy 1.5 or higher:
sudo apt-get update
sudo apt-get install -y haproxy

Generate SSL Certificate using Certbot:
sudo apt-get install -y certbot
sudo certbot certonly --standalone -d yourdomain.com -d www.yourdomain.com

Configure HAProxy:

Edit /etc/haproxy/haproxy.cfg to include SSL termination settings.
Example Configuration:
frontend http_front
    bind *:80
    redirect scheme https code 301 if !{ ssl_fc }

frontend https_front
    bind *:443 ssl crt /etc/ssl/certs/your_cert.pem
    default_backend http_back

backend http_back
    balance roundrobin
    server web01 34.198.248.145:80 check
    server web02 54.89.38.100:80 check

Task 2: No Loophole in Your Website Traffic
Objective: Enforce HTTPS by redirecting HTTP traffic to HTTPS.

Steps:
Update HAProxy Configuration:
Ensure HTTP traffic is redirected to HTTPS.
Example Configuration:
frontend http_front
    bind *:80
    redirect scheme https code 301 if !{ ssl_fc }

frontend https_front
    bind *:443 ssl crt /etc/ssl/certs/your_cert.pem
    default_backend http_back

backend http_back
    balance roundrobin
    server web01 34.198.248.145:80 check
    server web02 54.89.38.100:80 check


Files
0-world_wide_web: Bash script to fetch DNS information.
1-haproxy_ssl_termination: HAProxy configuration file for SSL termination.
100-redirect_http_to_https: HAProxy configuration file to enforce HTTPS.
GitHub Repository
Repository: alx-system_engineering-devops
Directory: 0x10-https_ssl
