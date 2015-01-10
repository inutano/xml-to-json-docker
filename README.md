# Dockerfile for xml-to-json

Convert xml to json inside container

```
docker run --rm -v "$(pwd)":/data -w /data inutano/xml-to-json xml-to-json mydata.xml > mydata.json
```
