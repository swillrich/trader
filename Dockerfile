FROM jupyter/datascience-notebook
RUN jupyter notebook --generate-config -y
RUN echo "c.NotebookApp.password='sha1:ac26f7df55f4:6b2c4964ef8d1a3ac06c445f8448383bb299011b'">>/home/jovyan/.jupyter/jupyter_notebook_config.py
RUN pip install python-constraint
RUN pip install numpy
RUN pip install pandas
RUN pip install pydoe
RUN pip install diversipy
USER root
RUN sudo apt-get update
RUN sudo apt-get install -y swig
RUN sudo apt-get install -y libpq-dev python-dev
RUN pip install psycopg2
RUN pip install statsmodels
RUN pip install yfinance
#RUN pip install matplotlib
#RUN pip install OApackage