set -x 
echo ++++++++++++ entering app dir +++++++++++
cd app
echo ++++++++++++ docker build ++++++++++++
docker build -t "lightapp:$BUILD_TAG" .
docker tag lightapp:$BUILD_TAG lightapp:latest
echo +++++++++++++++++++++++++++++++++++++
docker images
echo ""
echo +++++++++++++starting docker +++++++++++++++++
docker ps
echo ""
echo "++++++++++++++++++++++++++++++++++++"

docker stop $(docker ps | grep 3000 | awk '{print $1}')
sleep 1
docker run -p 3000:3000 -d lightapp &

