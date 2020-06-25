terraform {
backend "s3" {
bucket = "terraform-state-april-class-nargiza"
key = "jenkins/us-east-1/tools/frankfurt/jenkins.tfstate"
region = "us-east-1"
  }
}
