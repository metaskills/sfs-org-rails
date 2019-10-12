FROM metaskills/lambcicd-build-ruby2.5-nodejs8.10:v3
RUN pip install awscli && \
    pip uninstall --yes aws-sam-cli && \
    pip install aws-sam-cli==0.22.0
WORKDIR /var/task
