## Install Djinn specific version of Caffe
export CPU_ONLY=1

if [ -z "$THREADS" ]; then
  THREADS=4
fi

git clone https://github.com/jhauswald/caffe.git \
  && cd caffe \
  && git checkout ipa \
  && cp Makefile.config.example Makefile.config \
  && make -j$THREADS \
  && make distribute
