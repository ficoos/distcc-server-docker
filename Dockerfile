FROM fedora:27

LABEL image=ficoos/distcc-server
MAINTAINER Saggi Mizrahi "saggi@mizrahi.cc"

RUN dnf upgrade -y && dnf install distcc-server gcc gcc-c++ binutils -y

EXPOSE 3632/tcp
ENTRYPOINT ["distccd", "--no-detach", "--allow", "0.0.0.0/0"]
