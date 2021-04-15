docker version
kubeadm
kubectl version
kubectl get nodes
docker version
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
ls -l
cat kubeadm-config.yaml 
kubeadm init --config kubeadm-config.yaml
kubectl version
kubectl get cm -n kube-system | grep kubelet-config
kubeadm init --pod-network-cidr
kubeadm init
swapoff -a
kubeadm init
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf
cat /etc/kubernetes/admin.conf
kubectl get nodes
curl https://docs.projectcalico.org/manifests/calico.yaml -O
kubectl apply -f calico.yaml
kubectl get nodes
kubectl get events
kubectl get pods
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')" 
kubectl get nodes
systemctl status kubelet
sudo kubectl get nodes
kubectl get pods -n kube-system
sudo kubectl get nodes
kubectl get pods -n kube-system
ls -ltr
vi mypod1.yaml
kubectl create -f mypod1.yaml 
kubectl create -f mypod1.yaml --validate=false
vi mypod1.yaml 
kubectl get pods -o wide
vi mypod1.yaml 
kubectl create -f mypod1.yaml --validate=false
vi mypod1.yaml 
kubectl run nginx
docker run nginx
kubectl run nginx --image=nginx
kubectl get pds
kubectl get pods
kubectl describe pods
kubectl describe pods -o wide
kubectl get pods -o wide
vi pod-defination.yml
kubectl create -f pod-defination.yml 
kubectl get pods
kubectl describe myapp-pod
kubectl describe pods myapp-pod
vi rc-defination.yml
cat mypod1.yaml 
vi rc-defination.yml
kubectl create -f rc-defination.yml 
vi rc-defination.yml
cat pod-defination.yml 
vi rc-defination.yml
kubectl create -f rc-defination.yml 
vi rc-defination.yml
kubectl create -f rc-defination.yml 
cat rc-defination.yml 
cat pod-defination.yml 
vi rc-defination.yml
kubectl create -f rc-defination.yml 
kubectl get replicationcontroller
vi rc-defination.yml
kubectl delete myapp-rc
kubectl delete replicationcontroller/myapp-rc
kubectl create -f rc-defination.yml 
kubectl get replicationcontroller
kubectl get pods
kubectl get replicationcontroller
kubectl get pods
kubectl get pods -o wide
kubelet get pods
systemctl status kubelet
kubelet get nodes
kubectl get nodes
kubectl get pods
docker login
ls -ltr
cp rc-defination.yml replicaset-defination.yml
ls -ltr
vi replicaset-defination.yml
kubectl create -f replicaset-defination.yml 
kubectl get replicaset
kubectl get pods
cat replicaset-defination.yml 
kubectl get pods --show-labels
kubectl get pods --show-selectors
kubectl get pods --show-selector
kubectl create -f replicaset-defination.yml 
kubectl create -f pod-defination.yml 
kubectl get pods
kubectl get events
kubectl delete replicaset
kubectl get pods
kubectl delete replicaset myapp-replicaset
kubectl get pods
kubectl delete replicationcontroller myapp-rc
kubectl get pods
kubectl delete pods ngnix
kubectl describe pods nginx
kubectl get pods
kubectl delete pods nginx
kubectl get all
kubectl create -f replicaset-defination.yml 
kubectl get replicaset
kubectl get pods
kubectl get replicaset
pwd
kubectl describe replicaset myapp-replicaset
vi replicaset-defination.yml 
kubectl get replicaset
kubectl describe replicaset myapp-replicaset
kubectl replace -f replicaset-defination.yml 
kubectl get pods
kubectl get replicaset
kubectl get pods
kubectl describe replicaset
kubectl delete replicaset myapp-replicaset-jk6k4
kubectl delete pods myapp-replicaset-jk6k4
kubectl get pods
kubectl get events
kubectl describe replicaset
kubectl create -f pod-defination.yml 
kubectl get pods
kubectl describe replicaset
kubectl scale --replica=8 -f replicaset-defination.yml 
kubectl scale --replica=8 replicaset-defination.yml 
kubectl scale --replicas=8 -f replicaset-defination.yml 
kubectl  get pods
kubectl  get pods -o wide
kubectl scale --replicas=2 -f replicaset-defination.yml 
kubectl  get pods -o wide
kubectl get events
kubectl get pods
kubectl delete pods myapp-replicaset-jw8tc myapp-replicaset-nv6dl
kubectl get pods
kubectl decribe replicaset
kubectl describe replicaset
kubectl get all
kubectl delete replicaset 
kubectl get pods -o wide
curl 172.16.148.22
pwd
kubectl delete replicaset myapp-replicaset
kubectl get pods
kubectl get all
cp replicaset-defination.yml deployment-defination.yml
vi deployment-defination.yml 
kubectl get all
kubectl create -f deployment-defination.yml 
kubectl get all
kubectl deccribe deployment
kubectl describe deployment
kubectl describe deployment | grep Labels
kubectl run nginx --image=nginx
kubectl get pods
kubectl get deployments
kubectl delete deployments
kubectl delete deployments myapp-deployment
kubectl get deployments
kubectl get pods
kubectl delete pods nginx
kubectl get all
kubectl create -f deployment-defination.yml 
kubectl get pods
kubectl get all
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl delete deployment/myapp-deployment
kubectl get all
kubectl create -f deployment-defination.yml --record
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
vi deployment-defination.yml 
kubectl apply -f deployment-defination.yml 
kubectl rollout status deployment/myapp-deployment
kubectl get all
kubectl get pods
kubectl rollout status deployment/myapp-deployment
kubectl describe deployment
kubectl get all
kubectl rollout history deployment/myapp-deployment
kubectl describe deployment
kubectl set image deployment/myapp-deployment nginx-container=nginx:1.18-perl
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl describe deployment/myapp-deployment
kubectl get all
kube get pods -o wide
kubectl get pods -o wide
curl 172.16.148.48
kubectl rollout history deployment/myapp-deployment
kubectl rollout undo deployment/myapp-deployment
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl describe deployment/myapp-deployment
vi deployment-defination.yml 
kubectl apply -f deployment-defination.yml 
kubectl rollout status deployment/myapp-deployment
kubectl get all
kubectl describe deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl get all
kubectl get nodes
systemctl status kubelet
kubectl get all
reboot
