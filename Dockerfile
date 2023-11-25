FROM archlinux
USER root
RUN pacman --noconfirm -Syu 
RUN pacman --noconfirm -S git gcc libinih
RUN git clone https://github.com/domsson/succade
WORKDIR  succade
RUN chmod +x ./build
RUN ./build
