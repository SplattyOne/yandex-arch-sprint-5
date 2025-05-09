# yandex-arch-sprint-5

## Структура проекта
1. ui - фронтенд приложение AI-Архитектор на ReactJS
2. rasa_platfrom - проект rasa с обученной моделью, реализующий функционал общения с ботом AI-Архитектор
4. rasa_logs - папка с логами запуска и общения с моделью AI-Архитектор через ui
3. cloud - проект развертывания виртуалки в Yandex Cloud с помощью Terraform

## Запуск проекта
1. make ui_start - запустить frontend
2. make rasa_start - запустить backend
3. make show_logs - показать дамп логов от 2025-05-10

## Шаги для развертывания в облаке Yandex Cloud
1. Установка Yandex cloud: https://yandex.cloud/ru/docs/cli/quickstart
2. Установка Terraform: https://developer.hashicorp.com/terraform/install
3. Создать сервисный аккаунт и получить его ключ (далее sa_key.json) в Yandex Cloud
4. Настроить в cli:
  - yc config set service-account-key ~/.yc/sa_key.json
  - yc config set cloud-id <cloud_id>
  - yc config set folder-id <folder_id>
  - export YC_TOKEN=$(yc iam create-token)
	- export YC_CLOUD_ID=$(yc config get cloud-id)
	- export YC_FOLDER_ID=$(yc config get folder-id)
5. terraform plan
6. terraform apply
