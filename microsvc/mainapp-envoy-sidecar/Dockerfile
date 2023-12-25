FROM envoyproxy/envoy:v1.28.0

# override the existing default envoy.yaml 
COPY envoy.yaml etc/envoy/envoy.yaml

RUN chmod go+r /etc/envoy/envoy.yaml

CMD ["/usr/local/bin/envoy", "-c", "/etc/envoy/envoy.yaml", "--use-dynamic-base-id"]
