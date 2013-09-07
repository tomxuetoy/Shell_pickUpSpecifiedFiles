rm pure.manifest
rm pure.tar
DATE=$(date "+%Y-%m-%d-%H-%M-%S")
mkdir $DATE
find . -iname "*.c" -o -iname "*.cpp" -o -iname "*.h" -o -iname "*.hpp" -o -iname "*.p" > pure.manifest
tar -cvf pure.tar --files-from pure.manifest
tar xvf pure.tar -C $DATE
