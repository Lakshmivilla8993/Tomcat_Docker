node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/', 'docker_hub_credentials') {

        def customImage = docker.build("sai/Tomcat_Docker")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
