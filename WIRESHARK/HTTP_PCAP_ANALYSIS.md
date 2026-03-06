# CYBERSECURITY HOME LAB
## WIRESHARK - HTTP PCAP ANALYSIS

**Post LinkedIn:** <a href="https://www.linkedin.com/posts/rafael-salvalagio-ghensev-49671285_cybersecurity-blueteam-socanalyst-activity-7435797824920936448-8qb8?utm_source=share&utm_medium=member_desktop&rcm=ACoAABIUxTIB-gWzPMQPErZHskqDXatNOleOjok" target="_blank" rel="noopener noreferrer"> Link</a>

---

Realizei um teste simples utilizando o Wireshark para capturar e analisar pacotes de rede enquanto acessava um site HTTP. 

Naveguei normalmente pelo site e tentei realizar um login com e-mail e senha. Ao analisar os pacotes capturados pelo Wireshark, os dados enviados no formulário de login apareceram em texto claro dentro da requisição POST. Ou seja, informações sensíveis como e-mail e senha poderiam ser facilmente visualizadas por qualquer pessoa que estivesse interceptando o tráfego da rede. 

Por isso é essencial o uso de HTTPS, pois os dados são criptografados antes de serem enviados pela rede, informações sensíveis como senhas, cookies de sessão e dados pessoais ficam protegidas. 


<img width="1318" height="537" alt="Site_HTTP" src="https://github.com/user-attachments/assets/29e03df2-a296-4a28-b594-3cc9f186e03c" />

---

<img width="1328" height="541" alt="wireshark" src="https://github.com/user-attachments/assets/c5cce9cf-6b2a-4422-a95a-a641f4569699" />

