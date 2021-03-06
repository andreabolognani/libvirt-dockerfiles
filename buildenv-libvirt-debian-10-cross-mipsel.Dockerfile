FROM debian:10

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            augeas-tools \
            autoconf \
            automake \
            autopoint \
            bash \
            bash-completion \
            ca-certificates \
            ccache \
            chrony \
            dnsmasq-base \
            dwarves \
            ebtables \
            gcc \
            gdb \
            gettext \
            git \
            iproute2 \
            kmod \
            libc-dev-bin \
            libtool \
            libtool-bin \
            libxml2-utils \
            lsof \
            lvm2 \
            make \
            net-tools \
            nfs-common \
            numad \
            open-iscsi \
            parted \
            patch \
            perl \
            pkgconf \
            policykit-1 \
            qemu-utils \
            radvd \
            screen \
            scrub \
            strace \
            sudo \
            vim \
            xsltproc \
            zfs-fuse && \
    apt-get autoremove -y && \
    apt-get autoclean -y

RUN export DEBIAN_FRONTEND=noninteractive && \
    dpkg --add-architecture mipsel && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-mipsel-linux-gnu \
            libacl1-dev:mipsel \
            libapparmor-dev:mipsel \
            libattr1-dev:mipsel \
            libaudit-dev:mipsel \
            libavahi-client-dev:mipsel \
            libblkid-dev:mipsel \
            libc6-dev:mipsel \
            libcap-ng-dev:mipsel \
            libcurl4-gnutls-dev:mipsel \
            libdbus-1-dev:mipsel \
            libdevmapper-dev:mipsel \
            libfuse-dev:mipsel \
            libglusterfs-dev:mipsel \
            libgnutls28-dev:mipsel \
            libiscsi-dev:mipsel \
            libncurses-dev:mipsel \
            libnl-3-dev:mipsel \
            libnl-route-3-dev:mipsel \
            libnuma-dev:mipsel \
            libparted-dev:mipsel \
            libpcap0.8-dev:mipsel \
            libpciaccess-dev:mipsel \
            librbd-dev:mipsel \
            libreadline-dev:mipsel \
            libsanlock-dev:mipsel \
            libsasl2-dev:mipsel \
            libselinux1-dev:mipsel \
            libssh-gcrypt-dev:mipsel \
            libssh2-1-dev:mipsel \
            libtirpc-dev:mipsel \
            libudev-dev:mipsel \
            libxml2-dev:mipsel \
            libyajl-dev:mipsel \
            xfslibs-dev:mipsel && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "mipsel-linux-gnu"
ENV CONFIGURE_OPTS "--host=mipsel-linux-gnu \
                    --target=mipsel-linux-gnu"
ENV PKG_CONFIG_LIBDIR "/usr/lib/mipsel-linux-gnu/pkgconfig"
