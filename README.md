
# git init

# git remote add origin https://github.com/robinmordasiewicz/fortinet-hugo-theme.git

# git pull origin main --allow-unrelated-histories

# git submodule add https://github.com/McShelby/hugo-theme-relearn.git themes/hugo-theme-relearn

# git clone add https://github.com/McShelby/hugo-theme-relearn.git themes/hugo-theme-relearn

# git submodule update --init --recursive

# git clone https://github.com/robinmordasiewicz/fortinet-forticnp-hugo-md.git content/





# https://github.com/McShelby/hugo-theme-relearn/releases/latest

# https://github.com/McShelby/hugo-theme-relearn/archive/refs/tags/5.16.2.tar.gz

# wget https://github.com/aquasecurity/tfsec/releases/latest/download/tfsec-linux-amd64





LOCATION=$(curl -s https://github.com/McShelby/hugo-theme-relearn/releases/latest \
| grep "zipball_url" \
| awk '{ print $2 }' \
| sed 's/,$//'       \
| sed 's/"//g' )     \
; curl -L -o hugo-theme-relearn.zip $LOCATION
