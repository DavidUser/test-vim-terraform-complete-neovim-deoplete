FROM fedora:27
USER root
WORKDIR /root
RUN dnf install -y ruby rubygem-msgpack neovim git
RUN gem install neovim
RUN pip3 install neovim
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ADD . /root

ENTRYPOINT /usr/bin/bash
