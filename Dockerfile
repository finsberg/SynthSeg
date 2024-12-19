FROM python:3.8
RUN apt-get update && apt-get install -y libhdf5-serial-dev
COPY . /tmp
WORKDIR /tmp
RUN python3 -m pip install --no-cache-dir -r requirements_python3.8.txt
RUN python3 -m pip install .
ENTRYPOINT ["/bin/bash"]