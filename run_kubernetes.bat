
set dockerpath=eyasutew/project-ml-microservice:v.01

kubectl create deployment project-ml-microservice-first --image=%dockerpath%

kubectl get pods --all-namespaces

kubectl port-forward deployment/project-ml-microservice-first 8000:80



