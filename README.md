# How to deploy from GitHub to Siteground using Travis

You can use [Travis CI](https://travis-ci.com/) to deploy to Siteground - or most Cpanel webhosts that let you use SSH.

## Add SSH key to Siteground

The first stage is to generate an key pair to allow you to connect to your account via SSH.

```bash
ssh-keygen -t rsa -b 4096 -C 'build@travis-ci.org' -f ~/.ssh/siteground_rsa
```

When it asks for a password, leave it blank (Travis won't be able to enter the password when prompted).

This will create a `siteground_rsa` private key and a `siteground_rsa.pub` public key in your `~/.ssh/` directory.

In Cpanel, find `SSH/Shell Access` in the `Advanced` section:

![Cpanel SSH/Shell Access](./images/cpanel-advanced.png)

Copy the *public* key to your clipboard using:

```bash
pbcopy < ~/.ssh/siteground_rsa.pub
```

Paste it into the `Public Key` box in the `Upload SSH key` section:

![Cpanel Upload SSH Key](./images/cpanel-upload-ssh-key.png)

Leave `Allowed IP address` blank if you want to allow access from any IP address (less secure).

Travis lists its [IP Addresses](https://docs.travis-ci.com/user/ip-addresses/), which you can add manually to make it more secure.

## Add Travis config
