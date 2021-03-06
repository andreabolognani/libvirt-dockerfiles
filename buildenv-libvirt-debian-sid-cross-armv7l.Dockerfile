FROM debian:sid

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
    dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
            gcc-arm-linux-gnueabihf \
            libacl1-dev:armhf \
            libapparmor-dev:armhf \
            libattr1-dev:armhf \
            libaudit-dev:armhf \
            libavahi-client-dev:armhf \
            libblkid-dev:armhf \
            libc6-dev:armhf \
            libcap-ng-dev:armhf \
            libcurl4-gnutls-dev:armhf \
            libdbus-1-dev:armhf \
            libdevmapper-dev:armhf \
            libfuse-dev:armhf \
            libglusterfs-dev:armhf \
            libgnutls28-dev:armhf \
            libiscsi-dev:armhf \
            libncurses-dev:armhf \
            libnl-3-dev:armhf \
            libnl-route-3-dev:armhf \
            libparted-dev:armhf \
            libpcap0.8-dev:armhf \
            libpciaccess-dev:armhf \
            librbd-dev:armhf \
            libreadline-dev:armhf \
            libsanlock-dev:armhf \
            libsasl2-dev:armhf \
            libselinux1-dev:armhf \
            libssh-gcrypt-dev:armhf \
            libssh2-1-dev:armhf \
            libtirpc-dev:armhf \
            libudev-dev:armhf \
            libxen-dev:armhf \
            libxml2-dev:armhf \
            libyajl-dev:armhf \
            xfslibs-dev:armhf && \
    apt-get autoremove -y && \
    apt-get autoclean -y

ENV ABI "arm-linux-gnueabihf"
ENV CONFIGURE_OPTS "--host=arm-linux-gnueabihf \
                    --target=arm-linux-gnueabihf"
ENV PKG_CONFIG_LIBDIR "/usr/lib/arm-linux-gnueabihf/pkgconfig"
