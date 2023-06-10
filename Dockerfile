FROM ghcr.io/jamesdbrock/ihaskell-notebook:master

USER root

RUN mkdir /home/$NB_USER/d4
COPY notebook/*.ipynb /home/$NB_USER/d4/
COPY notebook/images /home/$NB_USER/d4/images
RUN chown --recursive $NB_UID:users /home/$NB_USER/d4

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes

