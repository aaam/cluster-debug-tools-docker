# cluster-debug-tools-docker run:

```bash
docker build -t go-debug-oc .
docker run --rm -v .:/app -ti --entrypoint=bash go-debug-oc
```
