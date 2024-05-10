# Ensure that password authentication is disabled in SSH client configuration
file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/sshd_config',
  line    => 'PasswordAuthentication no',
  match   => '^#PasswordAuthentication',
  replace => 'PasswordAuthentication',
}

# Add or update the IdentityFile configuration to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^#IdentityFile',
  replace => 'IdentityFile',
}
