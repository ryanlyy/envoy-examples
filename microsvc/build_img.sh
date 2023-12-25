#football-envoy-sidecar  football-flask  mainapp-envoy-sidecar  mainapp-flask
WORK_DIR=$(pwd)
cd $WORK_DIR/mainapp-flask
podman build -f docker/Dockerfile -t livescores-microsvc:$1 .
cd $WORK_DIR/mainapp-envoy-sidecar
podman build -f Dockerfile -t mainapp-envoy-sidecar:$1 .
cd $WORK_DIR/football-flask
podman build -f Dockerfile -t footballscores:$1 .
cd $WORK_DIR/football-envoy-sidecar
podman build -f Dockerfile -t football-envoy-sidecar:$1 .

