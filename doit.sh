#!/bin/bash
#

hugo new site . --force

git submodule add https://github.com/McShelby/hugo-theme-relearn.git themes/relearn

echo 'theme = "relearn"' >> hugo.toml

git clone https://github.com/robinmordasiewicz/fortinet-forticnp-hugo-md.git content/



