FROM rockylinux/rockylinux:9

LABEL maintainer="jbcool17"

# UPDATE BASE IMAGE AND INSTALL DEPENDENCIES
RUN dnf update -y && dnf install -y which && dnf clean all

# Install gcloud
# RUN curl -sSL https://sdk.cloud.google.com > install.sh
# RUN bash install.sh --disable-prompts --install-dir=/bin
# ENV PATH=$PATH:/bin/google-cloud-sdk/bin
# RUN gcloud components install kubectl gke-gcloud-auth-plugin --quiet

# PYTHON ENV SETUP
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV UV_NO_DEV=1

# PROJECT SETUP
WORKDIR /app
COPY . .
RUN uv sync

ENTRYPOINT [ "python-project" ]
