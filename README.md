# Web App deployment slots no azure app service
Este projeto provisiona um serviço App Service em Slots e faz o Swap (troca) entre eles no Azure.

O App Service do Azure é PaaS, plataforma como serviço em que podemos criar, implantar e dimensionar aplicativos Web e APIs rapidamente com base em seus requisitos. 

# Diagrama
Este projeto cria os seguintes recursos no Azure:
* Storage para armazenar o terraform.tfstate
* App Service Plan
* Web App 
* Slot Swap (Staging e Prod)
* CI/CD 

A arquitetura final do projeto ficará da seguinte forma:
![WebApp](https://user-images.githubusercontent.com/34435675/126075054-2fb4f0e0-db45-4b81-97bd-1075b5189f29.png)

# Projeto 
![webapp](https://user-images.githubusercontent.com/34435675/126084387-4e85252b-2494-4817-8427-a7db2bb0dd36.gif)

# Referência 
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service

https://docs.microsoft.com/en-us/azure///////app-service/deploy-staging-slots
