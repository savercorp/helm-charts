if [ -z "$1" ]
  then
    echo "ERROR: Archive is not specified"
    exit 1
fi
mkdir tmp
mv $1 tmp/
helm repo index --merge index.yaml tmp
mv tmp/index.yaml index.yaml
rm -rf tmp
git diff
