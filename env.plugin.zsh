# When the current working directory changes, run a method that checks for a .env file, then sources it. Happy days.

autoload -U add-zsh-hook
load-local-conf() {
     # check file exists, is regular file and is readable:
     if [[ -f .env && -r .env ]]; then
       if grep -q "export" ".env"; then
           source "./.env"
        else
          export $(cat .env | grep -v '#' | awk '/=/ {print $1}')
        fi
     fi
}
add-zsh-hook chpwd load-local-conf
