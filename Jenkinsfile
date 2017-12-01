pipeline {
  parameters {
    string(name: 'DOCKERIMAGE', defaultValue: 'debian:stretch')
  }

  agent {
    docker {
      image "${params.DOCKERIMAGE}"
      args '-u root'	# XXX could you do most operations
			# XXX as normal user?
    }
  }

  stages {
    stage('Prepare') {
      steps {
        sh '''
          apt-get update
          apt-get dist-upgrade
          apt-get install -y devscripts dpkg-dev make
          make install-build-deps
        '''
      }
    }

    stage('Build') {
      steps {
        sh 'make deb'
      }
    }
  }
}
