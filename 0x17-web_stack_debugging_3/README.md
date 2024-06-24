0x17. Web Stack Debugging #3
Project Overview
This project focuses on debugging a WordPress website running on a LAMP stack. Specifically, you will use strace to identify and fix an issue causing Apache to return a 500 error. The fix will be automated using Puppet.

0. Strace is your Friend
Using strace, find out why Apache is returning a 500 error. Once you identify the issue, fix it and automate the fix using Puppet.

Hints:

strace can attach to a currently running process.
You can use tmux to run strace in one window and curl in another.
Example:
root@e514b399d69d:~# curl -sI 127.0.0.1
HTTP/1.0 500 Internal Server Error
Date: Fri, 24 Mar 2017 07:32:16 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Connection: close
Content-Type: text/html

1- Steps to Complete the Task
Use strace to Identify the Issue:

Attach strace to the Apache process and analyze the output to identify the source of the 500 error.
Command to use strace on Apache process:
strace -p $(pgrep apache2) -o /tmp/strace_apache.log

In another terminal window, trigger the error by accessing the website:
curl -sI 127.0.0.1

2- Analyze the strace Output:

Review /tmp/strace_apache.log to find any system call failures or errors related to file access or permissions.

3- Fix the Issue:

Once you identify the problem (e.g., a missing or misconfigured file), manually fix it to ensure the 500 error is resolved.

4- Automate the Fix Using Puppet:

Create a Puppet manifest to automate the fix. Here is an example Puppet manifest (0-strace_is_your_friend.pp):
# This Puppet manifest fixes the issue causing Apache to return a 500 error

exec { 'fix-wordpress':
  command => 'chmod 755 /var/www/html/wordpress/wp-content/uploads',
  onlyif  => 'test $(stat -c "%a" /var/www/html/wordpress/wp-content/uploads) != 755',
}

5- Test the Puppet Manifest:

Apply the Puppet manifest and verify that the issue is resolved:
puppet apply 0-strace_is_your_friend.pp
curl -sI 127.0.0.1
puppet apply 0-strace_is_your_friend.pp
curl -sI 127.0.0.1


Example Output:
root@e514b399d69d:~# puppet apply 0-strace_is_your_friend.pp
Notice: Compiled catalog for e514b399d69d.ec2.internal in environment production in 0.02 seconds
Notice: /Stage[main]/Main/Exec[fix-wordpress]/returns: executed successfully
Notice: Finished catalog run in 0.08 seconds
root@e514b399d69d:~# curl -sI 127.0.0.1:80
HTTP/1.1 200 OK
Date: Fri, 24 Mar 2017 07:11:52 GMT
Server: Apache/2.4.7 (Ubuntu)
X-Powered-By: PHP/5.5.9-1ubuntu4.21
Link: <http://127.0.0.1/?rest_route=/>; rel="https://api.w.org/"
Content-Type: text/html; charset=UTF-8

Conclusion
By using strace to identify the issue and Puppet to automate the fix, you ensure a reliable and repeatable solution to the problem. This approach not only resolves the immediate issue but also provides a framework for handling similar problems in the future.
