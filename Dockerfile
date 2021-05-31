FROM python:3-alpine

ENV AWSCLI_VERSION=$version

# RUN pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}
RUN if [[ "${AWSCLI_VERSION}" == "latest" ]] || [[ -z "$AWSCLI_VERSION" ]] ; then pip3 --no-cache-dir install awscliv2 ; else pip3 --no-cache-dir install awscli==${AWSCLI_VERSION} ; fi

# ENTRYPOINT ["awsv2"]