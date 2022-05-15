FROM ghcr.io/jamesdbrock/ihaskell-notebook:master@sha256:78e7f89d2ffc716da2ca46f4f02efcc3d3f26147c5f4603686dfff0c3a28dd3d

USER root

RUN mkdir /home/$NB_USER/d4
COPY notebook/*.ipynb /home/$NB_USER/d4/
COPY notebook/images /home/$NB_USER/d4/images
RUN chown --recursive $NB_UID:users /home/$NB_USER/d4

USER $NB_UID

ENV JUPYTER_ENABLE_LAB=yes

