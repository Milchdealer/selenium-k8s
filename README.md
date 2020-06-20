# selenium-k8s
Quick Selenium Deployment on k8s using helm3

## Deploy
```sh
NAMESPACE=selenium
kubectl create namespace $NAMESPACE
helm3 --namespace $NAMESPACE install selenium ./
```

## Ugrade
```sh
NAMESPACE=selenium
helm3 --namespace $NAMESPACE upgrade selenium ./
```

## Config

| **Value** | **Description** | **Default** |
|---|---|---|
| images.seleniumHub.repository | Repository for the selenium hub image | `selenium/hub` |
| images.seleniumHub.tag | Tag of the selenium hub image | `3.141` |
| images.seleniumHub.pullPolicy | imagePullPolicy for the selenium hub image | `IfNotPresent` |
| images.nodes.firefox.repository | Repository for the firefox node image | `selenium/node-firefox-debug` |
| images.nodes.firefox.tag | Tag of the firefox node image | `3.141` |
| images.nodes.firefox.pullPolicy | imagePullPolicy for the firefox node image | `IfNotPresent` |
| images.nodes.firefox.replicas | amount of firefox node replicas | `1` |
| images.nodes.chrome.repository | Repository for the chrome node image | `selenium/node-chrome-debug` |
| images.nodes.chrome.tag | Tag of the chrome node image | `3.141` |
| images.nodes.chrome.pullPolicy | imagePullPolicy for the chrome node image | `IfNotPresent` |
| images.nodes.chrome.replicas | amount of chrome node replicas | `1` |
| externalNames | Namespaces where to provide a DNS entry for the selenium-hub service | `[]` |
