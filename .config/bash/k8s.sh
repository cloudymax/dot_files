# Jessebot's Kubernetes helpful exports and aliases for BASH

# this is for the kubernetes plugin manager, krew
export PATH="${PATH}:${HOME}/.krew/bin"


export KUBECONFIG=~/.config/kube/config


export DOMAIN="example.com"

# change this to what ever search tool you'd like,
# e.g. "grep -i"
export SEARCH_TOOL="ag"

# cluster context shortcut
alias k="kubectl"
alias ka="kubectl apply -f"
alias kc="kubectl config use-context"
alias kd="kubectl describe"
alias ke="kubectl exec -it"
alias kg="kubectl get"
alias kl="kubectl logs -f"
alias kcc="$SEARCH_TOOL current $KUBECONFIG"
alias kdm="kubectl describe nodes -l kubernetes.io/role=master"
alias kdn="kubectl describe nodes -l kubernetes.io/role=node"
alias kgm="kubectl get nodes -l kubernetes.io/role=master"
alias kgn="kubectl get nodes -l kubernetes.io/role=node"

# switch to different k8s envs
function kcs() {
    kubectl config use-context k8s-$1.$domain
    if [ "$?" != "0" ]; then
        kubectl config use-context k8s-$1.$domain
    fi
    kubectl config set-context $(kubectl config current-context) --namespace=default
}

# force delete function
function kfd() {
    kubectl delete pod --grace-period=0 --force $1
}

# help text for k commands
function khelp {
  echo "k                   = kubectl";
  echo "ka                  = kubectl apply -f (applies a k8s yaml file to current cluster)";
  echo "kc                  = kubectl config use-context (switch to EXACT cluster name)";
  echo "kd                  = kubectl describe";
  echo "ke                  = kubectl exec -it";
  echo "kg                  = kubectl get";
  echo "kl                  = kubectl logs -f (follow logs for a pod)";
  echo "k8p                 = switch to prod k8 instance";
  echo "k8dw                = switch to data warehouse k8 instance";
  echo "kcc                 = echoes current k8s cluster you're connecting to";
  echo "kcs <dev/qa/prod>  = switch current context to given namespace";
  echo "kdn                 = kubectl describe nodes";
  echo "kfd <pod-name>      = force delete of pod";
  echo "kns <namespace>     = switch current context to given namespace";
};

# set current namespace function
function kns() {
    kubectl config set-context $(kubectl config current-context) --namespace=$1
}
