#!/bin/bash
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter serverextension enable --py nbresuse
#jupyter labextension install @jupyterlab/statusbar
jupyter lab --generate-config
cp jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
#jupyter notebook password
