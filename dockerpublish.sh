NAME=adsempere/thewave
TAG=$(git log -1 --pretty=format:%h)

docker build -f Dockerfile -t $NAME:$TAG .
docker push $NAME:$TAG
