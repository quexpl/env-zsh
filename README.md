Env-zsh
=======

Automatically load environment variables from a .env file in your current working directory, triggered when you change directory.

Example of unix shell `.env` file:
```
export AWS_ACCESS_KEY_ID="asd"
export AWS_SECRET_ACCESS_KEY="qwe"
export AWS_REGION="eu-central-1"
```

Example of application `.env` file:
```
AWS_ACCESS_KEY_ID="asd"
AWS_SECRET_ACCESS_KEY="qwe"
AWS_REGION="eu-central-1"
```

**Note: only use one format, don't mix them!**

How to install
=============

```
cd ~/.oh-my-zsh/plugins
git clone https://github.com/quexpl/env-zsh.git env
vi ~/.zshrc && reload

# edit your plugin list by adding 'env'
...
plugins=(git ... env)
...

```

save and you are done \o/
