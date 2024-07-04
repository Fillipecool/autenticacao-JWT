# autenticacao-JWT
API REST para autenticação e autorização de usuários usando tokens JWT em PHP

## Instalando o Composer Localmente
Antes de construir a imagem Docker, certifique-se de que você tenha o Composer instalado localmente para configurar seu projeto PHP.

Passos para Instalar o Composer no Linux
Baixe o Composer:

```
curl -sS https://getcomposer.org/installer | php
```
Mova o Composer para um diretório global:

```
sudo mv composer.phar /usr/local/bin/composer
```
Verifique a instalação do Composer:

```
composer --version
```
## Iniciando o Projeto
Abra um terminal na raiz do seu projeto e execute:
```
docker-compose up --build
```