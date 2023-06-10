#!/bin/bash
#


git clone https://github.com/robinmordasiewicz/fortinet-forticnp-hugo-md.git content/
git submodule add https://github.com/McShelby/hugo-theme-relearn.git themes/relearn
hugo new site . --force
echo 'theme = "relearn"' >> hugo.toml




