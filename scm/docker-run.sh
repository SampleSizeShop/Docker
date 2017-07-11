docker run -it \
  -v $(pwd)/../../GlimmpseWWW:/sample-size-shop/GlimmpseWWW \
  -v $(pwd)/../../JavaStatistics:/sample-size-shop/JavaStatistics \
  -v $(pwd)/../../WebServiceCommon:/sample-size-shop/WebServiceCommon \
  -v $(pwd)/../../PowerSvc:/sample-size-shop/PowerSvc \
  -v $(pwd)/../../thirdparty:/sample-size-shop/thirdparty \
  glimmpse/scm /bin/bash
