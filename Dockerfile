FROM fluent/fluent-bit:2.1
# Put your exact configs into this repo
COPY fluent-bit.conf /fluent-bit/etc/fluent-bit.conf
COPY parsers.conf /fluent-bit/etc/parsers.conf
# Default command can be overridden by compose
CMD ["/fluent-bit/bin/fluent-bit","-c","/fluent-bit/etc/fluent-bit.conf"]

