### OpenFaaS Example

Um repositório para exemplificar a utilização do OpenFaaS.

---

## First Steps:

 - Entre em [Play With Docker](https://labs.play-with-docker.com)

 - Adicione 4 instancias
Com isso você terá os seguintes hostnames : node1, node2, node3 e node4.

 - Inicie o modo Swarm na instancia node1
```
docker swarm init --advertise-addr eth0
```

 - Copie o docker comando para aderir a swarm
```
docker swarm join --token [TOKEN] [IP]
```

 - Rode o comando nas outras instancias

 - Novamente na instancia node1 faça o clone deste repositório
```
git clone https://github.com/lucasmdrs/openfaas-example.git && cd openfaas-example/
```

 - Execute o script de deploy
```
./deploy_openfaas.sh
```

 - Execute o script de instalação do faas-cli (Opcional)
```
./deploy_faas-cli.sh
