
[ "$(grep LC_ALL /etc/bash.bashrc)" ] && \
cat <<EOF >> /etc/bash.bashrc
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export LANGUAGE="en_US:en"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
EOF

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export LANGUAGE=en_US:en
export LANG=en_US.UTF-8
export LC_ALL=C
locale-gen en_US.UTF-8

apt update
apt install -y curl

# https://yunohost.org/install_manually#/
curl https://install.yunohost.org | bash
