# Pi-hole with Recursive DNS Server

Implementação do [Pi-hole](https://pi-hole.net/) com [Unbound](https://docs.pi-hole.net/guides/dns/unbound/) para criar **um servidor DNS de alto desempenho e bloqueador de anúncios e rastreadores personalizado**.

---

### Instalação

Para construir o projeto será necessário o *docker* com o *compose*. Então execute:

```bash
$ make build-all
```

### Considerações Importantes

#### Estratégia de Configuração das Portas

- **Configuração DNS nos Clientes:** Os arquivos `/etc/systemd/resolved.conf` e `/etc/resolv.conf` são fundamentais. Optei por priorizar o `resolv.conf` após experimentar com as configurações do `systemd`.
- **Uso da Porta DNS Local:** Enfrentei um desafio com a porta `53` já em uso no host. A solução? Usei a porta `9711` localmente e configurei um redirecionamento NAT inteligente no roteador, mapeando a porta externa `53` para a `9711`. Assim, mantenho a convenção da porta `53` para os clientes, enquanto contorno a limitação local.
- **Porta do Servidor Web:** Por razões pessoais, escolhi a porta `9705` para o servidor web.

#### Adaptação do Projeto Pi-hole

- Esta implementação é baseada numa versão modificada do Pi-hole, fornecida por [@jacklul](https://github.com/jacklul), disponível em [pihole-updatelists](https://github.com/jacklul/pihole-updatelists).

---

### Referências

- [Site Oficial do Pi-hole](https://pi-hole.net/)
- [Pi-hole Updatelists por jacklul](https://github.com/jacklul/pihole-updatelists)
- [Documentação do Unbound DNS](https://docs.pi-hole.net/guides/dns/unbound/)
- [You'r running Pi-Hole wrong!](https://youtu.be/FnFtWsZ8IP0)
