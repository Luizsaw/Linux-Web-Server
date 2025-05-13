# 💻 Linux Web Server - Script de Deploy Automatizado

Este projeto é um script Bash para automatizar a configuração de um servidor web Apache no Linux, realizar o download de um site estático hospedado no GitHub, e publicar o conteúdo no diretório padrão do Apache. Além disso, o script também sobe o conteúdo de infraestrutura como código (IaC) para um repositório GitHub.

---

## ⚙️ O que o script faz?

1. Atualiza o sistema operacional com `apt update` e `apt upgrade`.
2. Instala os pacotes **Apache2** e **Unzip**.
3. Realiza o download do seu site pessoal a partir do GitHub.
4. Descompacta e copia os arquivos para o diretório `/var/www/html`.
5. Inicializa e configura o repositório Git local.
6. Sobe o projeto para o repositório remoto no GitHub.

---

## 📂 Estrutura dos Repositórios

- **Repositório do site**: [`Site-Meu-Portfolio`](https://github.com/Luizsaw/Site-Meu-Portfolio)
- **Repositório do servidor Linux** (este script): [`Linux-Web-Server`](https://github.com/Luizsaw/Linux-Web-Server)

---

## 🚀 Como usar

1. Clone este repositório ou copie o conteúdo do script para seu ambiente Linux.
2. Dê permissão de execução:
   ```bash
   chmod +x script.sh
   ```
3. Execute como root ou com `sudo`:
   ```bash
   ./script.sh
   ```

---

## 🛠️ Pré-requisitos

- Distribuição Linux baseada em Debian (ex: Ubuntu)
- Acesso sudo ou root
- Conexão com a internet
- Git instalado

---

## 📦 Softwares Instalados

- Apache2
- Unzip

---

## 📝 Observações

- O push para o GitHub é forçado (`git push -f`). Use com cautela.
- Certifique-se de que as URLs dos repositórios estejam corretas.
- O conteúdo do site será sobrescrito no `/var/www/html`.

---

## 👨‍💻 Autor

**Luiz Carlos de Araújo Machado**  
[LinkedIn](https://www.linkedin.com/in/luiz-machado-57366a174)  
Email: luizsaw@gmail.com
