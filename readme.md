# resume

**resume** is a continuous integration pipeline for my public facing resume available at resume.carstonschilds.ca

## Components
### HTML
_html/resume.html_ contains the static html source code for my resume
### NGINX
_src/nginx.conf_ contains the NGINX configuration which presents the static html
### Docker
_Dockerfile_ specifies an NGINX docker image which is populated with the static html and NGINX configuration
### Helm
_chart_ contains a simple set of templates which are used when deploying the NGINX docker image to Kubernetes
### env
_env_ contains Helm value files for each deployment environment
### CI
_.gitlab-ci.yml_ specifies the continuous integration pipeline stages

## External Dependencies
### cs-hosts
**cs-hosts** is a CI pipeline for configuring my internal DNS TLD _.cs_. The hostnames used by K8S Ingresses, specified in _env/${env}/values.yaml_ should be defined in that project.
### AWS Route 53 DNS
The production configuration of this project is available externally at resume.carstonschilds.ca, this DNS record is maintained in AWS Route 53.

### Maintainers
* Carston Schilds <carstonschilds@gmail.com>