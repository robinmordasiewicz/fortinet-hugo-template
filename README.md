
hugo new site .
rm -rf content

git init

git remote add origin https://github.com/robinmordasiewicz/fortinet-theme.git
git pull origin main --allow-unrelated-histories

git submodule add https://github.com/robinmordasiewicz/fortinet-forticnp-hugo-md.git content/
git submodule add https://github.com/McShelby/hugo-theme-relearn.git themes/hugo-theme-relearn
git submodule update --init --recursive
echo 'theme = "relearn"' >> hugo.toml




