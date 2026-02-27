# CYBERSECURITY HOME LAB
## WAZUH INSTALL

**Post LinkedIn:** <a href="https://www.linkedin.com/posts/rafael-salvalagio-ghensev-49671285_cybersecurity-soc-socanalyst-activity-7398466207680479232-qflt?utm_source=share&utm_medium=member_desktop&rcm=ACoAABIUxTIB-gWzPMQPErZHskqDXatNOleOjok" target="_blank" rel="noopener noreferrer"> Link</a>

---


Realizei a instalação do Wazuh e agentes em duas VMs (Kali e Ubuntu) para monitoração de eventos.

Fiz também alguns testes para verificar se os agentes estavam respondendo e reportando corretamente para o Wazuh manager. 

Nas imagens é possível ver que o agente está ativo e reportando os eventos de várias tentativas de login sem sucesso, e por último um login bem sucedido, indicando um possível SSH Brute Force Attack. 
 
O que trabalhei nesse projeto inicial:

🔹Configuração de um ambiente virtualizado (VirtualBox)

🔹Instalação e ajuste do Wazuh Server e agentes

🔹Execução de testes práticos para observar eventos em tempo real

🔹Análise inicial dos alertas gerados 
 
Próximo passo: expandir o SOC homelab, aprofundar e testar novos cenários e seguir evoluindo! 

<img width="1329" height="454" alt="Agent connected" src="https://github.com/user-attachments/assets/5ddfed84-964c-4108-8931-d602e9a59886" />

<img width="1314" height="440" alt="Events" src="https://github.com/user-attachments/assets/22b699f6-3a48-4ee4-9892-6da54a9140db" />

