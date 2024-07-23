package_rgx='[_a-zA-Z0-9\-]+'
oldname=$([_a-zA-Z0-9\-]+)
find tests src docs .github/workflows pyproject.toml README.md -type f -exec sed -i s/$oldname/${1}/g {} +
mv src/myproject $1