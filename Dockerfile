# Main stage
FROM aroq/toolbox-variant:0.1.48

COPY rootfs/ /
RUN chown root:root /root/.ssh/config && chmod 600 /root/.ssh/config

RUN mkdir -p /toolbox/toolbox-artifact
COPY variant-lib /toolbox/toolbox-artifact/variant-lib
COPY tools /toolbox/toolbox-artifact/tools
COPY hooks /toolbox/toolbox-artifact/hooks

ENV TOOLBOX_TOOL_DIRS toolbox,/toolbox/toolbox-artifact
ENV VARIANT_CONFIG_CONTEXT toolbox
ENV VARIANT_CONFIG_DIR toolbox
