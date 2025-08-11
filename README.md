# is-form3-task
Form3 Platform Interview - Ignacio Spinosa

A detailed README.md file has been added into the tf/ directory where the code has been updated.

## Here the output of the code applied


```
    f3-interview: Apply complete! Resources: 45 added, 0 changed, 0 destroyed.

 nacho@MILLIEs-MacBook-Air ~/GIT/is-form3-task (main) $ vagrant ssh
Welcome to Ubuntu 22.04.5 LTS (GNU/Linux 5.15.0-144-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Mon Aug 11 14:49:09 UTC 2025

  System load:  0.26               Processes:               160
  Usage of /:   13.4% of 38.70GB   Users logged in:         0
  Memory usage: 50%                IPv4 address for enp0s3: 10.0.2.15
  Swap usage:   0%


Expanded Security Maintenance for Applications is not enabled.

17 updates can be applied immediately.
17 of these updates are standard security updates.
To see these additional updates run: apt list --upgradable

Enable ESM Apps to receive additional future security updates.
See https://ubuntu.com/esm or run: sudo pro status

New release '24.04.3 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


vagrant@f3-interview:~$ docker ps
CONTAINER ID   IMAGE                                COMMAND                  CREATED         STATUS         PORTS                                         NAMES
8782223c9bb6   nginx:latest                         "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes   0.0.0.0:4080->80/tcp                          frontend_development
d2d21b888285   nginx:latest                         "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes   0.0.0.0:4082->80/tcp                          frontend_staging
57e7a3d176d7   nginx:1.22.0-alpine                  "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes   0.0.0.0:4081->80/tcp                          frontend_production
e8106788b240   form3tech-oss/platformtest-gateway   "/go/bin/gateway"        4 minutes ago   Up 4 minutes                                                 gateway_production
fe9d17c3829c   form3tech-oss/platformtest-account   "/go/bin/account"        4 minutes ago   Up 4 minutes                                                 account_production
f1da8a443541   form3tech-oss/platformtest-payment   "/go/bin/payment"        4 minutes ago   Up 4 minutes                                                 payment_production
f1a5f3f2fa5f   form3tech-oss/platformtest-payment   "/go/bin/payment"        4 minutes ago   Up 4 minutes                                                 payment_development
f999fe3b55ba   form3tech-oss/platformtest-gateway   "/go/bin/gateway"        4 minutes ago   Up 4 minutes                                                 gateway_development
fbe171fc86d9   form3tech-oss/platformtest-account   "/go/bin/account"        4 minutes ago   Up 4 minutes                                                 account_development
602820d61ae6   form3tech-oss/platformtest-gateway   "/go/bin/gateway"        4 minutes ago   Up 4 minutes                                                 gateway_staging
b1d67bb25083   form3tech-oss/platformtest-payment   "/go/bin/payment"        4 minutes ago   Up 4 minutes                                                 payment_staging
b0aa35b20a95   form3tech-oss/platformtest-account   "/go/bin/account"        4 minutes ago   Up 4 minutes                                                 account_staging
208d1bfd010a   hashicorp/vault:1.19                 "docker-entrypoint.s…"   5 minutes ago   Up 5 minutes   0.0.0.0:8301->8200/tcp, [::]:8301->8200/tcp   vagrant-vault-production-1
30f5368b838f   hashicorp/vault:1.19                 "docker-entrypoint.s…"   5 minutes ago   Up 5 minutes   0.0.0.0:8201->8200/tcp, [::]:8201->8200/tcp   vagrant-vault-development-1
fc90241cc5bd   hashicorp/vault:1.19                 "docker-entrypoint.s…"   5 minutes ago   Up 5 minutes   0.0.0.0:8401->8200/tcp, [::]:8401->8200/tcp   vagrant-vault-staging-1
vagrant@f3-interview:~$

```



