
<h3>Nomes dos alunos e RGM:</h3>

<p style="text-align: center;"> •Enzo Freire dos Santos - RGM: 47806303</p>
<p style="text-align: center;"> •Eduardo Vinicius Ribeiro Costa - RGM: 048693855</p>
<p style="text-align: center;"> •Giovanna Ribeiro Souza - RGM: 47952822</p>
<p style="text-align: center;"> •João Victor da Costa Silva - RGM: 4227238</p>
<p style="text-align: center;"> •Paulo Henrique Camilo de Pascoa Souza - RGM: 47806745</p>

## 1. Caracterização da Organização
*(vale 7,5% — Dimensão Conceitual)*

- **Nome e natureza da organização:** 52º Distrito Policial — Parque São Jorge, unidade da Polícia Civil do Estado de São Paulo.
- **Contexto e porte:** Instituição pública, sem fins lucrativos. A entrevista de campo foi realizada com a agente Ivani (35 anos de atuação) e com um complemento respondido pelo responsável pela unidade. A unidade conta com um delegado titular, um investigador/agente responsável pelo registro de ocorrências e 6 escrivães dedicados exclusivamente aos procedimentos de inquérito. O volume de trabalho é alto e crescente: cada delegado responde por, em média, 200 a 300 inquéritos por mês, e o número de ocorrências registradas não é previsível mês a mês, pois cresce ano a ano e é alimentado por dois canais simultâneos — presencial e online.
- **Problemas e necessidades identificados:** A unidade opera com o sistema estadual DESP, que abrange todo o estado de São Paulo, mas apresenta quedas frequentes, prejudicando o registro e o acompanhamento do dia a dia. Não há uma forma estruturada e confiável de rastrear, em um único lugar, todo o ciclo de vida de um caso — desde o registro da ocorrência até a eventual abertura, instrução (depoimentos, evidências, movimentações) e conclusão do inquérito — nem de mensurar o volume real de ocorrências por canal, natureza ou status, já que a instabilidade do sistema atual dificulta esse controle.
- **Justificativa da escolha:** A organização foi escolhida por ser uma instituição pública com processos bem delimitados (registro de ocorrência → possível abertura de inquérito → instrução → conclusão), volume de dados suficiente para sustentar um modelo relacional com múltiplas entidades relacionadas, e por o grupo ter conseguido acesso real a servidores da unidade para a pesquisa de campo (entrevista com a agente Ivani e complemento do responsável pela unidade).
- **Evidências da organização:** R. Dr. Coryntho Baldoíno Costa, 400 - Vila Zilda, São Paulo - SP, 03069-070

---

## 2. Processos de Negócio
*(vale 10% — Dimensão Procedimental)*

- **Principais processos mapeados:**
  1. **Registro de ocorrência** — qualquer pessoa autorizada na delegacia pode registrar uma ocorrência (não é exclusivo dos escrivães), reunindo os relatos e fatos de forma imparcial, pelo canal presencial ou online.
  2. **Análise e conversão em inquérito** — o delegado titular analisa o boletim de ocorrência; a ocorrência só é convertida em inquérito quando há indícios/prova materializada dos fatos. Sem essa comprovação, o caso permanece "em investigação" e não gera inquérito.
  3. **Instrução do inquérito** — coleta de depoimentos (da vítima e, por meio de advogado, do acusado) e de evidências, sempre conduzida pelo escrivão e pelo delegado, tanto no procedimento físico quanto no digital.
  4. **Movimentação processual** — distribuição e demais movimentações do inquérito, registradas pelos 6 escrivães da unidade ou pelo delegado, já que os escrivães atuam somente em procedimentos de inquérito, nunca no registro de ocorrências.
  5. **Acompanhamento do caso** — a vítima pode acompanhar diretamente o andamento do inquérito; o acusado só pode acompanhá-lo por meio de advogado.
  6. **Conclusão do inquérito** — encerramento do procedimento com registro de status e data de conclusão.
- **Fluxogramas:** *(opcional — não incluído nesta entrega)*

---

## 3. Requisitos do Sistema

### 3.1 Requisitos Funcionais
- O sistema deve permitir registrar uma ocorrência, identificando a unidade policial, o servidor responsável pelo registro, a natureza do fato, o canal (presencial ou online) e o relato dos fatos.
- O sistema deve permitir vincular uma ou mais pessoas a uma ocorrência, identificando o papel de cada uma (ex.: vítima, testemunha).
- O sistema deve permitir abrir um inquérito a partir de uma ocorrência, apenas quando houver prova materializada dos fatos.
- O sistema deve permitir registrar depoimentos vinculados a um inquérito e à pessoa que depôs.
- O sistema deve permitir registrar evidências vinculadas a um inquérito, incluindo tipo, descrição, data de apreensão e status da cadeia de custódia.
- O sistema deve permitir registrar movimentações de um inquérito, associando o servidor responsável (escrivão ou delegado).
- O sistema deve permitir consultar o status de uma ocorrência ou de um inquérito a qualquer momento.
- O sistema deve permitir gerar relatórios gerenciais, como total de ocorrências por natureza, por canal de registro e total de inquéritos por status.
- O sistema deve permitir atualizar o status e a data de conclusão de um inquérito.

### 3.2 Requisitos Não Funcionais
- **Disponibilidade:** o sistema deve estar disponível de forma contínua, corrigindo o problema de instabilidade observado hoje no sistema estadual DESP, que cai com frequência.
- **Confiabilidade dos dados:** os relatos de ocorrência devem ser registrados de forma íntegra e imparcial, sem possibilidade de alteração posterior sem rastro.
- **Segurança e privacidade:** dados pessoais de vítimas, testemunhas e servidores devem ter acesso restrito e auditável, respeitando o sigilo dos procedimentos policiais.
- **Rastreabilidade:** toda movimentação de um inquérito deve registrar data e responsável, permitindo auditoria completa do histórico do caso.
- **Usabilidade:** o registro de uma ocorrência deve ser simples o suficiente para ser feito por qualquer servidor autorizado, não apenas por escrivães.
- **Escalabilidade:** o modelo deve suportar o crescimento contínuo do volume de ocorrências ano a ano, sem previsibilidade de demanda mensal.

---

## 4. Regras de Negócio

- **Regras operacionais:**
  - Uma ocorrência só pode ser convertida em inquérito quando há prova materializada dos fatos; caso contrário, permanece com status "em investigação".
  - Qualquer servidor autorizado pode registrar uma ocorrência — esse registro não é exclusivo dos escrivães.
  - Escrivães atuam exclusivamente em procedimentos de inquérito (depoimentos, evidências, movimentações); nunca no registro de ocorrências.
  - O acompanhamento do andamento do inquérito pela vítima é direto; pelo acusado, só é permitido por meio de advogado.
  - A data de conclusão de um inquérito só pode ser preenchida quando for igual ou posterior à data de abertura.
  - Toda ocorrência deve ter um relato de fatos registrado, mesmo antes de eventual conversão em inquérito.
  - O canal de registro da ocorrência (presencial ou online) deve ser sempre informado, já que ambos coexistem e impactam o volume de casos.

- **Restrições organizacionais:**
  - A unidade segue o roteiro/numeração institucional de perguntas padronizado usado na entrevista, o que exigiu registrar o complemento do responsável pela unidade em bloco separado (perguntas 10, 11, 13 e 14), evitando conflito com a numeração já usada na entrevista original com a agente Ivani.
  - A quantidade fixa de escrivães da unidade (6) e sua atuação restrita a inquéritos é uma limitação estrutural real da unidade, refletida na modelagem do campo responsável pelas movimentações.
  - Por se tratar de dados de uma unidade policial, todos os dados de pessoas (vítimas, servidores) usados como exemplo no projeto são fictícios, por exigência de privacidade e proteção de dados sensíveis.

---

## 5. Dicionário de Dados Conceitual (Preliminar)

### UNIDADE_POLICIAL
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_unidade | Identificador único da unidade policial | Gerado automaticamente; chave primária |
| nome | Nome oficial da unidade (ex.: 52º Distrito Policial) | Obrigatório |
| endereco | Endereço físico completo | Obrigatório |
| tipo_unidade | Classificação da unidade (ex.: Polícia Civil) | Obrigatório |
| cidade | Cidade/UF onde a unidade está localizada | Obrigatório |

### SERVIDOR
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_servidor | Identificador único do servidor | Gerado automaticamente; chave primária |
| id_unidade | Unidade à qual o servidor está vinculado | Obrigatório; chave estrangeira para UNIDADE_POLICIAL |
| nome_ficticio | Nome fictício do servidor | Dado real substituído por privacidade; obrigatório |
| cargo | Função exercida pelo servidor | Deve ser Delegado, Escrivão ou Investigador/Agente; escrivães atuam somente em procedimentos de inquérito, nunca no registro de ocorrências |
| matricula_ficticia | Matrícula funcional fictícia | Obrigatório |

### PESSOA *(superentidade/generalização de vítima, testemunha, comunicante etc.)*
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_pessoa | Identificador único da pessoa | Gerado automaticamente; chave primária |
| nome_ficticio | Nome fictício da pessoa | Obrigatório |
| documento_ficticio | Documento de identificação fictício | Obrigatório |
| observacao | Observações adicionais sobre a pessoa | Opcional |
| contato_ficticio | Dado de contato da pessoa | Obrigatório |

### NATUREZA_FATO
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_natureza | Identificador único do tipo de fato | Gerado automaticamente; chave primária |
| descricao | Descrição da natureza do fato (ex.: Furto, Estelionato) | Obrigatório; estelionato é o tipo mais frequente, com destaque para golpes do amor e falsas delegacias |
| gravidade | Nível de gravidade do fato | Obrigatório |

### OCORRENCIA
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_ocorrencia | Identificador único da ocorrência | Gerado automaticamente; chave primária |
| id_unidade | Unidade onde a ocorrência foi registrada | Obrigatório; chave estrangeira para UNIDADE_POLICIAL |
| id_natureza | Natureza do fato registrado | Obrigatório; chave estrangeira para NATUREZA_FATO |
| id_servidor_registro | Servidor responsável pelo registro | Obrigatório; chave estrangeira para SERVIDOR; qualquer servidor autorizado pode registrar, não é exclusivo de escrivães |
| canal_registro | Indica se a ocorrência foi registrada presencial ou online | Obrigatório; existe porque a coexistência dos dois canais é o motivo pelo qual não há volume mensal previsível |
| data_registro | Data e hora do registro | Obrigatório |
| localidade | Local onde o fato ocorreu | Obrigatório |
| status | Situação da ocorrência (ex.: Em análise, Em investigação, Convertida em inquérito) | Só avança para "Convertida em inquérito" quando há prova materializada; sem prova, permanece em investigação |
| relato_fatos | Descrição textual e imparcial dos acontecimentos | Obrigatório |

### ENVOLVIMENTO_OCORRENCIA *(entidade associativa que liga pessoa e sua função em cada ocorrência)*
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_pessoa | Identificador da pessoa envolvida | Obrigatório; chave primária composta / chave estrangeira para PESSOA |
| id_ocorrencia | Identificador da ocorrência | Obrigatório; chave primária composta / chave estrangeira para OCORRENCIA |
| papel | Função da pessoa na ocorrência (ex.: Vítima, Testemunha) | Obrigatório |

### INQUERITO
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_inquerito | Identificador único do inquérito | Gerado automaticamente; chave primária |
| id_ocorrencia | Ocorrência que originou o inquérito | Obrigatório; chave estrangeira para OCORRENCIA; só existe quando a ocorrência tem prova materializada |
| data_abertura | Data de abertura do inquérito | Obrigatório |
| data_conclusao | Data de conclusão do inquérito | Opcional; pode ficar em branco enquanto em andamento; quando preenchida, deve ser ≥ data_abertura |
| status | Situação do inquérito (ex.: Em investigação, Concluído) | Obrigatório |
| prioridade | Nível de prioridade do inquérito | Obrigatório |

### DEPOIMENTO
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_depoimento | Identificador único do depoimento | Gerado automaticamente; chave primária |
| id_inquerito | Inquérito ao qual o depoimento pertence | Obrigatório; chave estrangeira para INQUERITO |
| id_pessoa | Pessoa que prestou o depoimento | Obrigatório; chave estrangeira para PESSOA |
| data_depoimento | Data em que o depoimento foi prestado | Obrigatório |
| resumo_ficticio | Resumo fictício do conteúdo do depoimento | Obrigatório |

### EVIDENCIA
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_evidencia | Identificador único da evidência | Gerado automaticamente; chave primária |
| id_inquerito | Inquérito ao qual a evidência pertence | Obrigatório; chave estrangeira para INQUERITO |
| tipo_evidencia | Tipo da evidência (documento, objeto, etc.) | Obrigatório |
| descricao | Descrição da evidência | Obrigatório |
| data_apreensao | Data em que a evidência foi apreendida | Obrigatório |
| status_custodia | Situação da cadeia de custódia da evidência | Obrigatório |

### MOVIMENTACAO
| Atributo | Descrição | Regra de negócio associada |
|----------|-----------|------------------------------|
| id_movimentacao | Identificador único da movimentação | Gerado automaticamente; chave primária |
| id_inquerito | Inquérito ao qual a movimentação pertence | Obrigatório; chave estrangeira para INQUERITO |
| id_servidor | Servidor responsável pela movimentação | Obrigatório; chave estrangeira para SERVIDOR; restrito aos 6 escrivães e ao delegado |
| data_movimentacao | Data da movimentação | Obrigatório |
| tipo_movimentacao | Tipo de movimentação (ex.: Distribuição) | Obrigatório |
| descricao | Descrição da movimentação | Obrigatório |

---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

- **Entidades reconhecidas:**
  - **UNIDADE_POLICIAL** — representa a delegacia (o 52º DP); necessária para futura expansão a múltiplas unidades.
  - **SERVIDOR** — representa delegados, escrivães e investigadores/agentes, vinculados a uma unidade.
  - **PESSOA** — generalização de qualquer pessoa civil envolvida (vítima, testemunha, comunicante), evitando duplicar estrutura para cada papel possível.
  - **NATUREZA_FATO** — tabela de domínio que classifica o tipo de fato (ex.: Furto, Estelionato).
  - **OCORRENCIA** — registro inicial do boletim, ponto de partida de todo o processo.
  - **ENVOLVIMENTO_OCORRENCIA** — entidade associativa (N:N) entre PESSOA e OCORRENCIA, pois uma pessoa pode se envolver em várias ocorrências e uma ocorrência pode ter várias pessoas, cada uma com um papel diferente.
  - **INQUERITO** — procedimento formal aberto a partir de uma ocorrência com prova materializada.
  - **DEPOIMENTO** — depoimentos colhidos durante a instrução do inquérito.
  - **EVIDENCIA** — evidências físicas/documentais associadas ao inquérito, com controle de custódia.
  - **MOVIMENTACAO** — histórico de tramitação/auditoria do inquérito.

- **Atributos e classificações:** detalhados integralmente no Dicionário de Dados (Seção 5), com cada atributo classificado por tipo de dado, obrigatoriedade e papel de chave (PK/FK).

- **Relacionamentos pertinentes:**
  - UNIDADE_POLICIAL (1) — (N) SERVIDOR
  - UNIDADE_POLICIAL (1) — (N) OCORRENCIA
  - NATUREZA_FATO (1) — (N) OCORRENCIA
  - SERVIDOR (1) — (N) OCORRENCIA (como servidor de registro)
  - OCORRENCIA (1) — (N) ENVOLVIMENTO_OCORRENCIA — (N) — (1) PESSOA (relação N:N materializada)
  - OCORRENCIA (1) — (0/1) INQUERITO
  - INQUERITO (1) — (N) DEPOIMENTO — (N) — (1) PESSOA
  - INQUERITO (1) — (N) EVIDENCIA
  - INQUERITO (1) — (N) MOVIMENTACAO
  - SERVIDOR (1) — (N) MOVIMENTACAO

- **Restrições e políticas organizacionais aplicadas ao modelo:**
  - Uma OCORRENCIA só gera um INQUERITO quando há prova materializada dos fatos (refletido na regra de negócio do relacionamento OCORRENCIA–INQUERITO).
  - O campo `cargo` de SERVIDOR e a chave estrangeira de MOVIMENTACAO refletem a restrição real de que apenas escrivães e o delegado atuam em procedimentos de inquérito.
  - O campo `canal_registro` de OCORRENCIA foi incluído para refletir a coexistência de registro presencial e online, que explica a imprevisibilidade do volume mensal de ocorrências.

---

## 7. Diagrama Entidade-Relacionamento (DER)

*(vale 20% — é o item de maior peso da entrega)*

- Anexe o DER (em imagem).
- O diagrama deve representar corretamente:
  - Entidades
  - Atributos
  - Relacionamentos
  - **Cardinalidades**
- O modelo deve ser **consistente** e já demonstrar potencial de **escalabilidade e integração** (pensando nas próximas etapas do projeto).
---

## 8. Justificativa Técnica

O modelo adota **PESSOA** como uma generalização única para vítimas, testemunhas e comunicantes, em vez de criar uma entidade separada para cada papel (ex.: VITIMA, TESTEMUNHA). Essa escolha evita duplicação de atributos comuns (nome, documento, contato) e usa a entidade associativa **ENVOLVIMENTO_OCORRENCIA** para registrar o papel específico de cada pessoa em cada ocorrência — permitindo, inclusive, que a mesma pessoa tenha papéis diferentes em ocorrências distintas, algo comum na prática policial.

A separação entre **OCORRENCIA** e **INQUERITO** como entidades distintas (em vez de uma única tabela) reflete diretamente a regra de negócio confirmada na entrevista: nem toda ocorrência se torna um inquérito, apenas aquelas com prova materializada dos fatos. Modelar como duas entidades relacionadas por 1:0/1 evita inconsistência (campos de inquérito vazios em ocorrências que nunca avançaram) e representa fielmente o funcionamento real da unidade.

As entidades **DEPOIMENTO**, **EVIDENCIA** e **MOVIMENTACAO** foram vinculadas diretamente a **INQUERITO** (e não a OCORRENCIA), pois, segundo a entrevista, essas atividades só ocorrem durante a instrução do inquérito, conduzidas por escrivães e pelo delegado — nunca na fase de registro da ocorrência.

O campo `cargo` em **SERVIDOR**, combinado com a chave estrangeira `id_servidor` em **MOVIMENTACAO**, foi mantido como uma restrição de regra de negócio documentada (e não uma restrição rígida de banco), pois a aplicação da regra "somente escrivães e delegado movimentam inquéritos" é responsabilidade da camada de aplicação, mantendo o modelo relacional flexível.

Todas as chaves primárias adotadas são **chaves substitutas (surrogate) simples** (um único campo inteiro por entidade). Essa escolha elimina, por construção, dependências parciais em relação a chaves compostas, simplificando a verificação de 1ª, 2ª e 3ª formas normais — todas as nove entidades foram verificadas e confirmadas nas três formas normais, já que nenhum atributo não-chave depende de apenas parte de uma chave composta (exceto na tabela associativa ENVOLVIMENTO_OCORRENCIA, cujo único atributo não-chave, `papel`, depende do par completo `id_pessoa + id_ocorrencia`).

---

## 9. Uso de Inteligência Artificial

O grupo utilizou a IA Claude (Anthropic) em etapas de apoio à organização e formatação do trabalho. Os usos identificados nesta etapa da entrega foram:

| Item | Registro |
|------|------------------|
| **Ferramenta e etapa** | Claude — geração do script SQL do banco de dados (`db_52dp_v2`), conversão do script e do dicionário de dados/entrevista para documentos HTML de apoio, e redação deste README a partir do esqueleto fornecido pelo professor. |
| **Motivação** | Organizar em SQL as tabelas definidas a partir do dicionário de dados levantado na entrevista de campo, produzir versões em HTML mais legíveis desses materiais para consulta do grupo, e estruturar a redação do README dentro do modelo exigido pela disciplina. |
| **Prompt(s) utilizados** | Entre outros: "deixe esse documento em html", "deixa o fundo todo preto pfvr", "complete o readme" — a partir do script SQL e do documento HTML com a entrevista/dicionário de dados já produzidos pelo grupo. |
| **Resposta recebida** | A IA gerou uma página HTML estilizada com o script SQL (DDL, INSERTs, consultas, UPDATE/DELETE e relatórios gerenciais) e, nesta etapa, um rascunho completo do README com as seções de caracterização, processos, requisitos, regras de negócio, dicionário de dados, modelagem conceitual e justificativa técnica, com base no conteúdo já levantado pelo grupo na entrevista e no dicionário de dados. |
| **Fontes consultadas e verificadas** | Nenhuma fonte externa foi usada pela IA — todo o conteúdo do README foi gerado a partir dos documentos produzidos pelo próprio grupo (entrevista de campo e dicionário de dados), não de pesquisa na internet. |
| **Trechos rejeitados ou corrigidos** | *[preencher pelo grupo — registrar o que foi revisado, editado ou removido do rascunho gerado pela IA antes da entrega final, incluindo os metadados (nomes/RGM) e as evidências da organização, que precisam ser preenchidos manualmente]* |
| **Justificativa da escolha final** | *[preencher pelo grupo — por que o conteúdo gerado foi mantido, adaptado ou descartado]* |
| **Reflexão crítica** | A IA não teve acesso direto à organização; todo o conteúdo depende inteiramente da precisão do que o grupo registrou na entrevista e no dicionário de dados. Eventuais lacunas ou imprecisões na interpretação das regras de negócio (ex.: nuances sobre quando exatamente uma ocorrência se torna inquérito) devem ser conferidas pelo grupo com a fonte original da entrevista antes da entrega. |

*Caso o grupo tenha usado outra ferramenta de IA em etapas anteriores (pesquisa sobre o setor, redação de partes específicas, revisão ortográfica), registrar aqui, seguindo o mesmo formato de tabela.*

---

## Critérios Atitudinais (20%)
Avaliados via **Avaliação 360º** entre os integrantes e, para Colaboração, também pelo histórico de commits do GitHub — não preenchidos neste documento.

- **Participação (5%)**
- **Comprometimento (5%)**
- **Colaboração (5%)**
- **Autonomia (5%)**

---

## Resumo dos Pesos

| Dimensão | Peso total |
|----------|-----------|
| Conceitual (contexto, requisitos/regras, modelagem, justificativa técnica) | 30% |
| Procedimental (requisitos, fluxogramas, dicionário de dados, DER) | 50% |
| Atitudinal (participação, comprometimento, colaboração, autonomia) | 20% |

**Entrega final:** README.md completo + DER + Dicionário de Dados em HTML anexado no repositório GitHub do grupo.
