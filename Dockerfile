FROM harbor.cyverse.org/vice/jupyter/datascience:latest
RUN pip3 install cmake==3.18.4
RUN git clone https://github.com/DmitryUlyanov/Multicore-TSNE.git
RUN pip3 install MulticoreTSNE
RUN pip3 install scanpy \
	plotly \
	phenograph \
	seaborn \
	palantir \
        openpyxl \
	xlsxwriter \
	harmony-pytorch\
        watermark \
        scrublet
RUN jupyter labextension install @jupyterlab/toc
