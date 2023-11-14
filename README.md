# Pi-hole with recursive DNS server

Using [pi-hole](https://pi-hole.net/) with [unbound](https://docs.pi-hole.net/guides/dns/unbound/) to create **my own adblock & high performance DNS server**.

*pt-br:* Usando [pi-hole](https://pi-hole.net/) com [unbound](https://docs.pi-hole.net/guides/dns/unbound/) para criar **meu próprio servidor DNS de alto desempenho e bloqueador de anúncios**.

---

### Instalação

```bash
$ make build-all
```

### Atenção

#### Portas

Ao configurar o DNS no cliente, atentar-se em dois arquivos: `/etc/systemd/resolved.conf` e `/etc/resolv.conf`.
Recomendo comentar a definição do DNS no arquivo da `systemd` e utilizar apenas o arquivo `resolv.conf`.

Estou utilizando a porta `9711` na rede local para definição do DNS, mas redireciono via NAT pelo roteador a porta externa `53` para a porta interna `9711`. Então em meus hardwares estão utilizando como servidor DNS meu ip público, que tem como porta para esse serviço o valor padrão de servidor DNS `53`.

A motivação para não usar diretamente a porta `53` foi que a máquina host já tinha um servidor local (somente nela) de DNS que fazia uso da porta padrão. Então precisei contar esse problema por questões de incompatibildiade.

#### Projeto pi-hole utilizado

Não estou utilizando o projeto original do pi-hole, mas sim uma adaptação fornecido por [@jacklul](https://github.com/jacklul) disponível no repositório [pihole-updatelists](https://github.com/jacklul/pihole-updatelists).

---

### Ref.:

https://pi-hole.net/

https://github.com/jacklul/pihole-updatelists

https://docs.pi-hole.net/guides/dns/unbound/

https://youtu.be/FnFtWsZ8IP0

### 