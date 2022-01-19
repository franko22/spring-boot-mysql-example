# Architecture

I am using GitHub Actions to build Docker Image of the application and then push the image to a private ECR (Elastic Container Image) repository. And then update the version of the new image in the Helm Chart present in the Git repo.
As soon as there is some change in the Helm Chart, ArgoCD detects it and starts rolling out and deploying the new Helm chart in the Kubernetes cluster. One key ingredient to enable GitOps is to have the CI separate from CD. Once CI execution is done, the artifact will be pushed to the repository and ArgoCD will be taking care of the CD. And the best part of this is everything will gonna be private.

![ci-cd](https://user-images.githubusercontent.com/19840066/150108642-cefdafff-3824-4696-bfbd-7999d8218b5d.png)
