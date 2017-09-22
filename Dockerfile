FROM google/cloud-sdk:alpine

RUN yes Y | gcloud components install docker-credential-gcr kubectl

# Install docker
RUN apk add --no-cache docker

# Install helm
ADD https://storage.googleapis.com/kubernetes-helm/helm-v2.6.1-linux-amd64.tar.gz /helm.tar.gz
RUN tar xzvf /helm.tar.gz --strip-components=1 -C /bin linux-amd64/helm

