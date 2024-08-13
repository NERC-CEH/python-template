package_rgx='[_a-zA-Z0-9\-]+'
oldname=$(grep -E "^ *name *= *\"${package_rgx}\"" pyproject.toml | grep -Eo "\"${package_rgx}\"" | sed s/\"//g)

if [ -z "$oldname" ]; then
    echo "old name not found"
    exit 1
fi

find tests docs .github/workflows pyproject.toml README.md Dockerfile -type f -exec sed -i s/$oldname/${1}/g {} +
mv $oldname $1
