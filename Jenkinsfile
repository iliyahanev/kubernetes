
def label = "myTestLabel";
podTemplate(
    containers: [
        containerTemplate(name: 'node', 
        image: 'gts01.azurecr.io/snyk-go:chrome1', 
        command: 'cat',
        ttyEnabled: true
    ]) {
        
    }
    

node {
  stage('List pods') {
    withKubeConfig([credentialsId: 'kubeconfig' ]) {
        sh "curl -LO 'https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl'"
        sh "install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl"
        sh "kubectl version --client"
    }
  }
}

sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"'  
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"


