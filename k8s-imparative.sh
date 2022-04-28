#create pod 
kubectl create job hello --image=busybox --labels=app=myapp 
# List Services Sorted by Name
kubectl get services --sort-by=.metadata.name


kubectl scale --replicas=3 rs/foo                                 # Scale a replicaset named 'foo' to 3
#status deployment
kubectl rollout status deployment/nginx-deployment

#update image
kubectl set image deployment/nginx-deployment nginx=nginx:1.16.1

#rollout history
kubectl rollout history deployment/nginx-deployment

#undo 
kubectl rollout undo deployment/nginx-deployment

#undo to version
kubectl rollout undo deployment/nginx-deployment --to-revision=2

#scale deployment 
kubectl scale deployment/nginx-deployment --replicas=10

#auto scale deployment
kubectl autoscale deployment/nginx-deployment --min=10 --max=15 --cpu-percent=80

#pause deployment
kubectl rollout pause deployment/nginx-deployment
#resume deployment 
kubectl rollout resume deployment/nginx-deployment


#set resources to deployment
kubectl set resources deployment/nginx-deployment -c=nginx --limits=cpu=200m,memory=512Mi



