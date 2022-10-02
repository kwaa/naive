#!/usr/bin/env bash

version=$(curl -s "https://api.github.com/repos/klzgrad/naiveproxy/releases/latest" | grep "tag_name" | cut -d\" -f4)

for arch in x64 arm64
    do
        # download
        curl -fsSLO --compressed "https://github.com/klzgrad/naiveproxy/releases/download/${version}/naiveproxy-${version}-linux-${arch}.tar.xz"
        # unzip
        tar xJvf "naiveproxy-${version}-linux-${arch}.tar.xz"
        # move
        if [[ $arch == 'x64' ]]
        then
            mv "naiveproxy-${version}-linux-${arch}/naive" "naive_amd64"
        else
            mv "naiveproxy-${version}-linux-${arch}/naive" "naive_${arch}"
        fi
        # remove useless file
        rm -r "naiveproxy-${version}-linux-${arch}"
        rm "naiveproxy-${version}-linux-${arch}.tar.xz"
    done

# keep alive
git config --local user.name 'GitHub Action'
git config --local user.email 'action@github.com'
git commit --allow-empty -m "${version}"
git push -v --progress