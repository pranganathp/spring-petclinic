node()
{
    stage("git clone")
    {
        git 'https://github.com/pranganathp/spring-petclinic.git'
    }

    stage('build package')
    {   
        sh 'mvn package'
    }
    
    stage('build image')
    {
        sh 'docker image build -t dockerranganath/demo_repo_spc:0222 .'
    }
    /**
    stage('create container')
    {
        sh 'docker container run -d --name spc_0218_1 dockerranganath/demo_repo_spc:0222'
    }
    **/
    stage('push image')
    {
        withCredentials([string(credentialsId: 'DOCKER_HUB_CREDENTIALS', variable: 'DOCKER_HUB_CREDENTIALS')]) {
        sh 'docker login -u dockerranganath -p ${DOCKER_HUB_CREDENTIALS}'
        }    
        sh 'docker push dockerranganath/demo_repo_spc:0222'
    }
    
    stage('deploy_spc_app')
    {
        kubernetesDeploy(
            configs: "mywebspc.yaml", 
            kubeconfigId: "KUBERNETES_CONFIG")
    }
}
