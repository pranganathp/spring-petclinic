node("$LABLE") {
    stage('SCM') {
        //GIT CLONE
        git '$PROJECT_URL' 
        }
        
    stage('PACKAGE') {
        // BUILD PACKAGE
        sh '$ACTIVITY'
    }

    stage('ARCHIVAL') {
        //ARCHIVAL ARTIFACTS
        archiveArtifacts '$ARCHIVAL'
    }
}
