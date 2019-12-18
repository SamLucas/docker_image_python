# Docker + Django
---

Esta imagem foi preparada para desenvolvimento de projetos com o Django e pode ser usado para o ambiente de produção, mas verifique o ```Dockerfile``` detalhes.

## Detalhes da imagem 
---
Recomendo que use o seguinte comando a baixo para montar a imagem 

```
$ sudo docker run -it \
 -p 8000:8000 \
 -v $PWD:/home/python \
 --name PythonDjango \
 samuellucas/python /bin/bash
```

Para rodar o projeto, use o comando a baixo para que você posso vê-lo no seu navegador.

```
$ sudo python3 manage.py runserver 0.0.0.0:8000
```

Deixei uma estrela se esse projeto te ajudou de alguma forma e qual quer dúvida/sugestão entre em contato pelo email **samuellucas0603@gmail.com**
