#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

./run.sh >out.txt
# sed -i -e '2,4d' -e '$d' out.txt

mdi

# 提取README.md的第一行冒号后的内容
DESCRIPTION=$(awk -F ':' 'NR==1 {print $2}' README.md | sed 's/^[ \t]*//;s/[ \t]*$//')

# 在Cargo.toml中查找并替换description字段的内容
sed -i -E "/\[package\]/,/description/ s~(description\s*=\s*\")[^\"]*~\1$DESCRIPTION~" Cargo.toml

# 提取版本号行
VERSION_LINE=$(grep "^version" Cargo.toml)

# 提取版本号
VERSION=$(echo $VERSION_LINE | cut -d '"' -f2)

# 分割版本号为主版本号.次版本号.修订号
MAJOR=$(echo $VERSION | cut -d '.' -f1)
MINOR=$(echo $VERSION | cut -d '.' -f2)
PATCH=$(echo $VERSION | cut -d '.' -f3)

# 修订号加1
PATCH=$((PATCH + 1))

# 拼接新的版本号
NEW_VERSION="$MAJOR.$MINOR.$PATCH"

# 替换版本号
sed -i "s/^version = \"$VERSION\"/version = \"$NEW_VERSION\"/" Cargo.toml
./clippy.sh
git add -u
git commit -m "v$NEW_VERSION"
git pull
git push
cargo publish
