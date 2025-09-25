echo "Outer container working"
echo
podman build -t inner-test /inner && \
podman run inner-test
