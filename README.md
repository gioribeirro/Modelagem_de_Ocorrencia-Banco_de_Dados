# Modelagem de Banco de Dados para o 52º Distrito Policial

## Integrantes do grupo

| Nome | RGM | GitHub |
|---|---|---|
| Enzo Freire dos Santos | 47806303 | [enzofreire-cmd](https://github.com/enzofreire-cmd) |
| Eduardo Vinicius Ribeiro Costa | 48693855 | [EduardoRibeiro-007](https://github.com/EduardoRibeiro-007) |
| Giovanna Ribeiro Souza | 47952822 | [gioribeirro](https://github.com/gioribeirro) |
| João Victor da Costa Silva | 49227238 | [Thevic69](https://github.com/Thevic69) |
| Paulo Henrique Camilo de Pascoa Souza | 47806745 | [phpascoa](https://github.com/phpascoa) |

---

## 1. Introdução e caracterização da organização

### 1.1 Introdução

Este trabalho apresenta a modelagem de um banco de dados para o 52º Distrito Policial de São Paulo, com o objetivo de organizar e representar os processos envolvidos no registro e acompanhamento de ocorrências e inquéritos policiais.

A proposta considera todas as etapas do procedimento, desde o registro inicial da ocorrência, sua análise e eventual conversão em inquérito, até a instrução, o registro de depoimentos, o controle de evidências, as movimentações e a conclusão.

Para compreender o funcionamento da unidade, o grupo realizou entrevistas de campo com uma agente policial, que possui 35 anos de atuação na área, e complementou o levantamento com informações fornecidas pelo responsável pela unidade.

Durante a pesquisa, foi identificada a dependência do DESP, sistema estadual utilizado em São Paulo, que apresenta quedas frequentes e prejudica o registro e o acompanhamento dos procedimentos.

### 1.2 Nome e contexto da organização

**Organização:** 52º Distrito Policial de São Paulo.

Trata-se de uma instituição pública, sem fins lucrativos, responsável pelo atendimento e registro de ocorrências e pela condução de procedimentos de investigação policial.

Segundo as informações levantadas durante a entrevista, a unidade conta com um delegado titular, um investigador/agente responsável pelo registro de ocorrências e seis escrivães dedicados aos procedimentos de inquérito.

O volume de trabalho é elevado e crescente. Segundo o relato obtido, cada delegado responde, em média, por 200 a 300 inquéritos por mês. A quantidade de ocorrências registradas não apresenta previsibilidade mensal, pois existe crescimento ao longo dos anos e os registros acontecem por dois canais: presencial e online.

### 1.3 Problemas e necessidades identificados

A unidade utiliza o DESP, sistema estadual que abrange todo o estado de São Paulo e apresenta instabilidades frequentes, prejudicando o registro e o acompanhamento das atividades.

Também foi identificada a necessidade de melhorar a organização e a rastreabilidade dos casos. As etapas, desde o registro da ocorrência até a eventual abertura, instrução e conclusão do inquérito, precisam ser acompanhadas de maneira estruturada.

A concentração das informações em um sistema instável dificulta o acompanhamento dos procedimentos e a obtenção de indicadores sobre o volume de ocorrências por canal, natureza e status.

Diante disso, o projeto propõe um modelo relacional capaz de organizar essas informações, representar os relacionamentos entre as pessoas envolvidas e permitir consultas gerenciais e verificações de integridade.

### 1.4 Incentivo da escolha da organização

O 52º Distrito Policial foi escolhido por ser uma instituição pública com processos bem definidos, envolvendo registro de ocorrência, possível abertura de inquérito, instrução e conclusão.

Além disso, a unidade apresenta volume de informações suficiente para sustentar um modelo relacional com múltiplas entidades relacionadas.

Outro fator importante foi a possibilidade de acesso real a servidores da unidade para a realização da pesquisa de campo, por meio da entrevista com a agente Ivani e do complemento das informações com o responsável pela unidade.

### 1.5 Evidências da organização

**Endereço:** R. Dr. Coryntho Baldoíno Costa, 400 - Vila Zilda, São Paulo - SP, 03069-070.

[Localização do 52º Distrito Policial](https://maps.app.goo.gl/KpnnQxBFQmJx874c8)

**Registros da pesquisa de campo:**

<a href="PrimeiraParteDoTrabalho/Audio da entrevista 1.mp4" target="_blank">
  Registro em Áudio
</a>
<br>
<br>

<p>
  <img src="PrimeiraParteDoTrabalho/Registro%201.jpeg" width="40%" alt="Registro 1 da entrevista">
  <br>
  <a href="PrimeiraParteDoTrabalho/Registro%201.jpeg">Registro da Entrevista 1</a>
</p>

<br>

<p>
  <img src="PrimeiraParteDoTrabalho/Registro%202.jpeg" width="40%" alt="Registro 2 da entrevista">
  <br>
  <a href="PrimeiraParteDoTrabalho/Registro%202.jpeg">Registro da Entrevista 2</a>
</p>

<br>

<p>
  <img src="PrimeiraParteDoTrabalho/Registro%203.jpeg" width="40%" alt="Registro 3 da entrevista">
  <br>
  <a href="PrimeiraParteDoTrabalho/Registro%203.jpeg">Registro da Entrevista 3</a>
</p>

---

## 2. Processos de negócio

A partir das informações levantadas na pesquisa de campo, foram identificados seis processos principais.

### 2.1 Registro de ocorrência

Qualquer servidor autorizado pode registrar uma ocorrência, não sendo uma atividade exclusiva dos escrivães.

O registro reúne os relatos e acontecimentos de forma imparcial, podendo ser realizado presencialmente ou online. As pessoas envolvidas são vinculadas à ocorrência de acordo com seus respectivos papéis, como vítima, testemunha e comunicante.

### 2.2 Análise e conversão em inquérito

O delegado titular analisa o boletim de ocorrência. A conversão em inquérito acontece somente quando existem indícios ou provas materializadas dos fatos.

Quando não há essa comprovação, a ocorrência permanece em investigação e não gera um inquérito.

### 2.3 Instrução do inquérito

A instrução envolve a coleta de depoimentos e evidências relacionadas ao procedimento.

A vítima pode prestar depoimento diretamente. O acusado realiza o acompanhamento por intermédio de advogado, respeitadas as condições legais de acesso.

As atividades são conduzidas pelo escrivão e pelo delegado, tanto em procedimentos físicos quanto digitais.

### 2.4 Movimentação processual

As movimentações correspondem à distribuição e às demais alterações realizadas durante a tramitação do inquérito.

Na unidade pesquisada, essas atividades são realizadas pelos seis escrivães ou pelo delegado, uma vez que os escrivães atuam exclusivamente nos procedimentos de inquérito.

### 2.5 Acompanhamento do caso

A vítima pode acompanhar diretamente o andamento do inquérito. O acusado realiza esse acompanhamento por intermédio de advogado, observadas as regras legais de acesso aos autos.

### 2.6 Conclusão do inquérito

O procedimento é encerrado com o registro de seu status e da respectiva data de conclusão.

---

## 3. Requisitos do sistema

### 3.1 Requisitos funcionais (RF)

- **RF01:** Permitir o registro de uma ocorrência, identificando a unidade policial, o servidor responsável, a natureza do fato, o canal de registro e o relato dos acontecimentos.
- **RF02:** Permitir vincular uma ou mais pessoas a uma ocorrência, identificando o papel de cada uma.
- **RF03:** Permitir a abertura de um inquérito a partir de uma ocorrência, somente quando houver prova materializada dos fatos.
- **RF04:** Permitir registrar depoimentos vinculados a um inquérito e à pessoa que prestou o depoimento.
- **RF05:** Permitir registrar evidências vinculadas a um inquérito, incluindo tipo, descrição, data de apreensão e status da cadeia de custódia.
- **RF06:** Permitir registrar movimentações de um inquérito, identificando o servidor responsável.
- **RF07:** Permitir consultar o status de uma ocorrência ou de um inquérito a qualquer momento.
- **RF08:** Permitir gerar relatórios gerenciais, como total de ocorrências por natureza, canal de registro e total de inquéritos por status.
- **RF09:** Permitir atualizar o status e a data de conclusão de um inquérito.
- **RF10:** Permitir registrar a representação de uma pessoa acusada por advogado, vinculando o profissional à ocorrência correspondente.

### 3.2 Requisitos não funcionais (RNF)

- **Disponibilidade:** O sistema deve permanecer disponível de maneira contínua, reduzindo os problemas de instabilidade observados no DESP.
- **Confiabilidade dos dados:** Os relatos devem ser registrados de forma íntegra e imparcial, sem alterações posteriores sem rastreabilidade.
- **Segurança e privacidade:** Os dados de vítimas, testemunhas, servidores e demais envolvidos devem possuir acesso restrito e auditável, respeitando o sigilo dos procedimentos policiais.
- **Rastreabilidade:** Toda movimentação de inquérito deve registrar data e responsável, permitindo consultar o histórico do procedimento.
- **Usabilidade:** O registro de ocorrências deve ser simples e acessível a qualquer servidor autorizado.
- **Escalabilidade:** O modelo deve suportar o crescimento do volume de ocorrências ao longo dos anos, sem depender de uma demanda mensal previsível.

---

## 4. Regras de negócio

### 4.1 Regras operacionais

- **RN01:** Uma ocorrência somente pode ser convertida em inquérito quando houver prova materializada dos fatos. Caso contrário, permanece em investigação.
- **RN02:** Qualquer servidor autorizado pode registrar uma ocorrência, não sendo essa atividade exclusiva dos escrivães.
- **RN03:** Os escrivães atuam exclusivamente nos procedimentos de inquérito, incluindo depoimentos, evidências e movimentações.
- **RN04:** A vítima pode acompanhar diretamente o andamento do inquérito; o acusado realiza o acompanhamento por meio de advogado, respeitadas as condições legais.
- **RN05:** A data de conclusão de um inquérito deve ser igual ou posterior à data de abertura.
- **RN06:** Toda ocorrência deve possuir um relato dos fatos registrado.
- **RN07:** O canal de registro da ocorrência deve ser obrigatoriamente informado, podendo ser presencial ou online.
- **RN08:** A pessoa acusada pode possuir um advogado associado ao acompanhamento do procedimento, devendo a representação ser registrada separadamente.
- **RN09:** As movimentações dos inquéritos devem ser realizadas por servidores autorizados, respeitando as funções de escrivães e delegado.

### 4.2 Restrições organizacionais

- A unidade utiliza um roteiro institucional de perguntas padronizado durante as entrevistas. Por esse motivo, o complemento do responsável pela unidade, referente às perguntas 10, 11, 13 e 14, foi registrado separadamente para evitar conflitos com a numeração da entrevista original.
- A quantidade de seis escrivães e sua atuação exclusiva nos procedimentos de inquérito representam uma característica organizacional considerada na modelagem.
- Todos os dados pessoais utilizados como exemplos no projeto são fictícios, respeitando a privacidade e a proteção de dados.

---

## 5. Dicionário de dados conceitual

O dicionário de dados apresenta as entidades, seus atributos e as respectivas regras de negócio.

O modelo final considera 11 entidades, incluindo PESSOA como superentidade e SERVIDOR e ADVOGADO como especializações.

### 5.1 UNIDADE_POLICIAL

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_unidade | Identificador único da unidade | Chave primária |
| nome | Nome oficial da unidade | Obrigatório |
| endereco | Endereço físico completo | Obrigatório |
| tipo_unidade | Classificação da unidade | Obrigatório |
| cidade | Cidade e UF | Obrigatório |

### 5.2 PESSOA

Superentidade que representa as pessoas envolvidas no sistema, permitindo especializações e evitando a repetição de informações comuns.

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_pessoa | Identificador único da pessoa | Chave primária |
| nome_ficticio | Nome fictício | Obrigatório |
| documento_ficticio | Documento fictício | Obrigatório |
| observacao | Informações adicionais | Opcional |
| contato_ficticio | Contato fictício | Obrigatório |

### 5.3 SERVIDOR

Especialização de PESSOA, destinada à representação dos profissionais da unidade policial.

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_pessoa | Identificador da pessoa correspondente | Chave primária e estrangeira para PESSOA |
| id_unidade | Unidade à qual o servidor pertence | Chave estrangeira para UNIDADE_POLICIAL |
| cargo | Função exercida | Delegado, Escrivão ou Investigador/Agente |
| matricula_ficticia | Matrícula funcional fictícia | Obrigatório |

### 5.4 ADVOGADO

Especialização de PESSOA, destinada à identificação dos advogados que representam pessoas envolvidas nos procedimentos.

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_pessoa | Identificador da pessoa correspondente | Chave primária e estrangeira para PESSOA |
| id_oab | Identificação de inscrição na OAB | Identificador do advogado |

### 5.5 NATUREZA_FATO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_natureza | Identificador da natureza do fato | Chave primária |
| descricao | Descrição da natureza, como furto e estelionato | Obrigatório |
| gravidade | Nível de gravidade | Obrigatório |

O estelionato foi destacado durante a entrevista como uma das naturezas mais frequentes, incluindo golpes do amor e falsas delegacias.

### 5.6 OCORRENCIA

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_ocorrencia | Identificador único da ocorrência | Chave primária |
| id_unidade | Unidade onde foi registrada | Chave estrangeira para UNIDADE_POLICIAL |
| id_natureza | Natureza do fato | Chave estrangeira para NATUREZA_FATO |
| id_servidor_registro | Servidor responsável pelo registro | Chave estrangeira para SERVIDOR |
| canal_registro | Canal utilizado | Presencial ou online; obrigatório |
| data_registro | Data e hora do registro | Obrigatório |
| localidade | Local onde ocorreu o fato | Obrigatório |
| status | Situação da ocorrência | Obrigatório |
| relato_fatos | Descrição imparcial dos acontecimentos | Obrigatório |

### 5.7 ENVOLVIMENTO

Entidade associativa responsável por relacionar as pessoas às ocorrências e registrar o papel de cada uma, incluindo a associação com o advogado quando aplicável.

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_pessoa | Pessoa envolvida | Chave primária composta e estrangeira para PESSOA |
| id_ocorrencia | Ocorrência correspondente | Chave primária composta e estrangeira para OCORRENCIA |
| papel | Papel desempenhado na ocorrência | Vítima, testemunha, acusado etc. |
| id_oab | Advogado associado à representação | Referência ao advogado em ADVOGADO |

A chave primária composta é formada por `id_pessoa` e `id_ocorrencia`. O campo `id_oab` permite identificar o advogado relacionado à pessoa representada.

### 5.8 INQUERITO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_inquerito | Identificador único do inquérito | Chave primária |
| id_ocorrencia | Ocorrência que originou o inquérito | Chave estrangeira para OCORRENCIA |
| data_abertura | Data de abertura | Obrigatório |
| data_conclusao | Data de conclusão | Opcional enquanto estiver em andamento |
| status | Situação do inquérito | Obrigatório |
| prioridade | Nível de prioridade | Obrigatório |

### 5.9 DEPOIMENTO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_depoimento | Identificador único do depoimento | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| id_pessoa | Pessoa que prestou o depoimento | Chave estrangeira para PESSOA |
| data_depoimento | Data do depoimento | Obrigatório |
| resumo_ficticio | Resumo fictício do conteúdo | Obrigatório |

### 5.10 EVIDENCIA

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_evidencia | Identificador único da evidência | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| tipo_evidencia | Tipo da evidência | Documento, objeto etc. |
| descricao | Descrição da evidência | Obrigatório |
| data_apreensao | Data da apreensão | Obrigatório |
| status_custodia | Situação da cadeia de custódia | Obrigatório |

### 5.11 MOVIMENTACAO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_movimentacao | Identificador da movimentação | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| id_servidor | Servidor responsável | Chave estrangeira para SERVIDOR |
| data_movimentacao | Data da movimentação | Obrigatório |
| tipo_movimentacao | Tipo de movimentação | Obrigatório |
| descricao | Descrição da movimentação | Obrigatório |

**Observação:** a nomenclatura e os tipos definitivos dos atributos devem acompanhar o script SQL principal do projeto.

---

## 6. Modelagem conceitual

### 6.1 Entidades reconhecidas

O modelo conceitual foi desenvolvido considerando as seguintes 11 entidades:

1. **UNIDADE_POLICIAL:** representa a unidade policial, permitindo a identificação e a vinculação dos servidores e das ocorrências.
2. **PESSOA:** superentidade que representa as pessoas envolvidas no sistema.
3. **SERVIDOR:** especialização de PESSOA, representando os profissionais da unidade.
4. **ADVOGADO:** especialização de PESSOA, representando os profissionais responsáveis pela representação jurídica.
5. **NATUREZA_FATO:** classifica a natureza das ocorrências.
6. **OCORRENCIA:** representa o registro inicial do fato.
7. **ENVOLVIMENTO:** relaciona pessoas e ocorrências, identificando o papel de cada pessoa.
8. **INQUERITO:** representa o procedimento formal originado de uma ocorrência.
9. **DEPOIMENTO:** armazena os depoimentos relacionados ao inquérito.
10. **EVIDENCIA:** representa os elementos de prova relacionados ao inquérito.
11. **MOVIMENTACAO:** registra o histórico de tramitação do inquérito.

### 6.2 Relacionamentos e cardinalidades

- UNIDADE_POLICIAL (1) — (N) SERVIDOR.
- UNIDADE_POLICIAL (1) — (N) OCORRENCIA.
- NATUREZA_FATO (1) — (N) OCORRENCIA.
- SERVIDOR (1) — (N) OCORRENCIA, como responsável pelo registro.
- PESSOA (1) — (N) ENVOLVIMENTO.
- OCORRENCIA (1) — (N) ENVOLVIMENTO.
- OCORRENCIA (1) — (0,1) INQUERITO.
- PESSOA (1) — (0,1) SERVIDOR, considerando a especialização.
- PESSOA (1) — (0,1) ADVOGADO, considerando a especialização.
- INQUERITO (1) — (N) DEPOIMENTO.
- PESSOA (1) — (N) DEPOIMENTO.
- INQUERITO (1) — (N) EVIDENCIA.
- INQUERITO (1) — (N) MOVIMENTACAO.
- SERVIDOR (1) — (N) MOVIMENTACAO.
- ADVOGADO (1) — (N) ENVOLVIMENTO, conforme a associação de representação.

### 6.3 Restrições e políticas organizacionais aplicadas ao modelo

- Uma ocorrência somente pode originar um inquérito quando houver prova materializada dos fatos.
- SERVIDOR e ADVOGADO são especializações de PESSOA, evitando duplicação de informações comuns.
- O papel de vítima, testemunha ou acusado é registrado em ENVOLVIMENTO, e não como uma entidade independente.
- O campo `canal_registro` representa a coexistência dos canais presencial e online.
- As movimentações devem respeitar as funções autorizadas de escrivães e delegado.
- A associação de advogado deve representar a pessoa e a ocorrência correspondentes.

---

## 7. Diagrama Entidade-Relacionamento (DER)

O DER representa graficamente as entidades, os atributos, as especializações e os relacionamentos identificados durante a modelagem conceitual.

<p align="center">
  <a href="PrimeiraParteDoTrabalho/DER Modelo Conceitual.png">
    <img
      src="PrimeiraParteDoTrabalho/DER Modelo Conceitual.png"
      alt="Diagrama Entidade-Relacionamento - 52º DP"
      width="100%"
    >
  </a>
</p>


## 8. Justificativa técnica

O modelo utiliza PESSOA como superentidade para representar os indivíduos envolvidos no sistema, evitando a repetição de informações comuns, como nome, documento e contato.

A partir dessa estrutura, SERVIDOR e ADVOGADO foram definidos como especializações de PESSOA. Essa organização permite representar os profissionais da unidade e os advogados sem confundi-los com os demais envolvidos nas ocorrências.

A entidade ENVOLVIMENTO foi estruturada para relacionar pessoas e ocorrências, registrando o papel de cada indivíduo. Dessa maneira, uma mesma pessoa pode assumir funções diferentes em ocorrências distintas, sem a necessidade de criar entidades separadas para vítima, testemunha ou acusado.

A inclusão de ADVOGADO ocorreu após a revisão do modelo conceitual, a partir da necessidade identificada na pergunta 9 da entrevista. O levantamento indicou que a vítima pode acompanhar diretamente o andamento do inquérito, enquanto o acusado realiza esse acompanhamento por intermédio de advogado.

O vínculo com o advogado é registrado em ENVOLVIMENTO, permitindo identificar a pessoa representada e a ocorrência correspondente. O campo `papel` continua identificando a função da pessoa na ocorrência, por exemplo, acusado, enquanto a identificação do advogado é realizada separadamente.

A decisão também considera o art. 3º do Estatuto da Advocacia, que estabelece a inscrição na OAB como requisito para o exercício da advocacia, e o art. 7º, XIV, da Lei nº 8.906/1994. O § 10 trata da apresentação de procuração para acesso a autos sigilosos, enquanto o § 11 estabelece condições relacionadas a diligências em andamento ainda não documentadas.

A Súmula Vinculante 14 do STF também foi considerada, pois assegura ao defensor, no interesse do representado, acesso aos elementos de prova já documentados e pertinentes ao exercício da defesa.

**Limite da modelagem:** o registro do identificador `id_oab` permite associar um advogado à pessoa representada, mas não comprova, por si só, a existência de procuração ou a autorização de acesso aos autos. Essas condições devem ser verificadas pela aplicação e pelos mecanismos de controle de acesso.

**Fontes oficiais:**

- [Lei nº 8.906/1994 — Estatuto da Advocacia](https://www2.camara.leg.br/legin/fed/lei/1994/lei-8906-4-julho-1994-349751-normaatualizada-pl.html).
- [Súmula Vinculante 14 — Supremo Tribunal Federal](https://portal.stf.jus.br/jurisprudencia/sumariosumulas.asp?base=26%20&sumula=1230).

### 8.1 Separação entre ocorrência e inquérito

OCORRENCIA e INQUERITO foram representados como entidades distintas porque nem toda ocorrência resulta na abertura de um inquérito. Essa separação respeita a regra de negócio identificada durante a entrevista e evita armazenar informações de inquérito em ocorrências que não avançaram para essa etapa.

### 8.2 Organização dos depoimentos, evidências e movimentações

DEPOIMENTO, EVIDENCIA e MOVIMENTACAO foram relacionadas diretamente a INQUERITO, pois representam atividades realizadas durante a instrução e a tramitação do procedimento.

### 8.3 Chaves e normalização

As entidades utilizam identificadores próprios como chaves primárias, enquanto as relações entre elas são estabelecidas por chaves estrangeiras.

A entidade associativa ENVOLVIMENTO utiliza chave primária composta por `id_pessoa` e `id_ocorrencia`, pois o atributo `papel` depende da combinação desses dois identificadores.

A normalização foi considerada para evitar redundâncias e dependências inadequadas, observando a 1ª, 2ª e 3ª Formas Normais. A validação definitiva deve acompanhar a estrutura final do modelo lógico e do script SQL.

---

## 9. Limitações, verificação e rastreabilidade

### 9.1 Padronização do banco de dados e dos scripts

Para eliminar divergências entre os arquivos do projeto, o grupo padronizou o nome do banco de dados como `db_52dp`. Essa nomenclatura também foi adotada no arquivo de BI, garantindo consistência entre os materiais desenvolvidos.

A referência ao antigo "Script V3" foi removida, estabelecendo o script principal como referência para a criação da estrutura do banco.

Os códigos das consultas também foram padronizados:

- **Gxx:** consultas gerenciais, utilizadas para apresentar indicadores e informações relevantes.
- **Vxx:** verificações de integridade, destinadas a identificar possíveis inconsistências nos dados.
- **Axx:** consultas de auditoria, relacionadas às regras de negócio identificadas como `RNxx`.

Essa organização permite relacionar cada regra de negócio à respectiva consulta de auditoria, facilitando a conferência e a manutenção do banco.

### 9.2 Verificação da execução

Até a elaboração desta documentação, o grupo ainda não havia executado os scripts completos em uma instância MySQL. Portanto, a sintaxe e os resultados das consultas permanecem não verificados em uma execução integral.

A validação deverá ser realizada em um banco vazio, seguindo esta ordem:

1. Criação do banco de dados `db_52dp`.
2. Criação das tabelas e respectivas restrições.
3. Inserção dos dados fictícios.
4. Testes de operações `JOIN`, `UPDATE` e `DELETE`.
5. Execução das consultas gerenciais `Gxx`.
6. Execução das verificações de integridade `Vxx`.
7. Execução das consultas de auditoria `Axx`.

Essa sequência permitirá verificar a estrutura do banco, os relacionamentos entre as entidades e o funcionamento das consultas desenvolvidas.

### 9.3 Origem das informações e evidências da entrevista

A pesquisa de campo foi realizada no 52º Distrito Policial em duas ocasiões:

- 04/09/2026, às 17h10.
- 24/09/2026, às 16h09.

O segundo encontro teve como objetivo complementar as informações levantadas inicialmente.

A entrevistada não autorizou a divulgação de seu nome nem forneceu contato pessoal. Por esse motivo, sua identificação foi omitida da documentação.

O grupo dispõe do telefone institucional da unidade: (11) 2293-6036.

As evidências disponíveis incluem o áudio da entrevista e as fotografias realizadas durante as visitas. Esses registros demonstram a realização da pesquisa de campo, mas não permitem confirmar diretamente com a entrevistada todas as informações relatadas.

Por isso, as informações foram documentadas com base nos registros produzidos pelo grupo, respeitando as limitações de acesso e autorização.

### 9.4 Massa de dados

Todos os registros utilizados no banco de dados são fictícios e foram construídos com base nos processos e nas informações levantadas durante a entrevista.

Os dados não representam registros reais do 52º Distrito Policial e foram elaborados exclusivamente para fins acadêmicos, permitindo demonstrar o funcionamento das entidades, dos relacionamentos e das consultas SQL.

Portanto, a massa de dados possui caráter ilustrativo e não deve ser interpretada como reprodução do volume real de ocorrências ou inquéritos da unidade.

### 9.5 Rastreabilidade

A rastreabilidade foi organizada para relacionar os problemas identificados durante o levantamento de requisitos, os indicadores-chave de desempenho (KPIs), as tabelas responsáveis pelo armazenamento das informações e as respectivas consultas SQL.

Essa estrutura permite identificar a origem dos dados utilizados em cada indicador e compreender como as informações são obtidas pelo banco.

As consultas de auditoria também indicam a regra de negócio `RNxx` correspondente, permitindo relacionar os requisitos levantados, as regras estabelecidas e os testes previstos.

Dessa forma, a rastreabilidade contribui para a organização, a transparência e a manutenção do projeto, facilitando futuras revisões e a identificação de inconsistências.

---

## 10. Uso de Inteligência Artificial

Durante o desenvolvimento do projeto, foram utilizadas ferramentas de inteligência artificial como apoio à organização, elaboração, revisão e desenvolvimento dos materiais técnicos.

### 10.1 Ferramentas utilizadas

| Ferramenta | Etapa de utilização |
|---|---|
| Claude | Geração e organização do script SQL, conversão de documentos para HTML e elaboração inicial do README. |
| ChatGPT | Apoio ao desenvolvimento do SQL, esclarecimento de dúvidas, revisão textual e organização da documentação. |
| Gemini | Apoio à pesquisa, organização de ideias e desenvolvimento de materiais do projeto. |
| Replit | Apoio ao desenvolvimento e à organização do DER e de seus relacionamentos. |

### 10.2 Motivação

As ferramentas foram utilizadas para auxiliar na organização das tabelas definidas a partir do dicionário de dados, produzir documentos HTML de apoio, esclarecer dúvidas sobre SQL e estruturar o README conforme o modelo solicitado pelo professor.

Também foram utilizadas para revisar a consistência entre o DER, o modelo lógico, a normalização, as chaves e a documentação.

### 10.3 Prompts utilizados

Entre os comandos utilizados durante o desenvolvimento, destacam-se:

- "Deixe esse documento em HTML."
- "Deixe o fundo todo preto."
- "Complete o README."
- Solicitações de revisão e organização do script SQL.
- Solicitações de explicação e conferência das entidades, relacionamentos e dicionário de dados.

Os comandos foram adaptados conforme as necessidades identificadas durante cada etapa do projeto.

### 10.4 Respostas recebidas

As ferramentas auxiliaram na criação de páginas HTML para consulta do script SQL, incluindo DDL, INSERTs, consultas, UPDATE, DELETE e relatórios gerenciais.

Também foram produzidos rascunhos da documentação, com seções de caracterização da organização, processos de negócio, requisitos, regras, dicionário de dados, modelagem conceitual e justificativa técnica.

Além disso, foram obtidas explicações sobre SQL, relacionamentos, normalização e estruturação do banco.

### 10.5 Trechos rejeitados ou corrigidos e contribuições dos integrantes

Durante o desenvolvimento, as sugestões das ferramentas foram revisadas e adaptadas conforme as necessidades do projeto. As principais alterações e contribuições individuais foram:

**Eduardo Vinicius Ribeiro Costa — RGM 48693855**

Revisou os prefixos e os dicionários de dados, realizou testes com comandos SQL, incluindo UPDATE, INSERT e DELETE, adicionou KPIs e comentários e reorganizou a estrutura do SQL para melhorar sua organização e visualização.

**Enzo Freire dos Santos — RGM 47806303**

Realizou alterações significativas no DER, incluindo a criação de novas entidades de especialização e a inclusão da entidade ADVOGADO, que não estavam presentes no modelo original, buscando melhorar a representação e a compreensão da estrutura do sistema.

**Paulo Henrique Camilo de Pascoa Souza — RGM 47806745**

Adicionou prefixos e realizou ajustes no modelo lógico, buscando adequar sua estrutura aos conteúdos e requisitos estabelecidos no projeto.

**Giovanna Ribeiro Souza — RGM 47952822**

Participou ativamente da elaboração das perguntas da entrevista, conduziu a maior parte da entrevista e realizou as anotações em tempo real. Também criou o repositório, revisou e organizou o README e executou comandos DELETE necessários para viabilizar alterações e implementações no banco de dados.

No DER, participou do desenvolvimento inicial no Draw.io e posteriormente no DBDesigner. O modelo foi continuado e aprimorado por Enzo, que conduziu sua estrutura até a versão final no brModelo.

**João Victor da Costa Silva — RGM 49227238**

Eliminou a entidade VITIMA, que representava apenas um papel, e reorganizou a estrutura para utilizar PESSOA como superentidade, com SERVIDOR e ADVOGADO como especializações.

Também reorganizou a entidade ENVOLVIMENTO, que passou a utilizar chave primária composta por `id_pessoa` e `id_ocorrencia`, ambas também chaves estrangeiras. Incluiu o campo obrigatório `relato_fatos` do tipo TEXT em OCORRENCIA e incorporou o campo `canal_registro`, originado das perguntas 10, 11, 13 e 14 da entrevista.

As alterações também foram refletidas no dicionário de dados, na normalização e nas chaves, além da retirada do antigo campo "Id pessoa", considerado inadequado após a orientação do professor.

### 10.6 Justificativa da escolha final

O conteúdo produzido com auxílio das ferramentas foi mantido, adaptado ou descartado conforme a necessidade de adequação aos requisitos do projeto e à consistência das informações levantadas.

A maior parte das informações já havia sido obtida pelo próprio grupo durante a entrevista e a elaboração do dicionário de dados. Dessa forma, as ferramentas foram utilizadas principalmente para organizar, revisar e estruturar os materiais.

As principais adaptações envolveram a eliminação da entidade VITIMA, a utilização de PESSOA como superentidade, a inclusão de SERVIDOR e ADVOGADO como especializações, a reorganização de ENVOLVIMENTO e a atualização dos atributos de OCORRENCIA.

Também foram revisados os prefixos, os relacionamentos, as regras de negócio e a estrutura dos comandos SQL.

As decisões finais sobre entidades, atributos, cardinalidades e regras de negócio foram tomadas pelo grupo, considerando as informações levantadas na pesquisa de campo e as orientações do professor.

### 10.7 Reflexão crítica

As ferramentas de inteligência artificial utilizadas, como Claude, ChatGPT, Gemini e Replit, serviram como apoio durante o desenvolvimento, a organização e a revisão dos materiais do projeto.

Entretanto, não tiveram acesso direto à organização nem participaram da entrevista de campo. Dessa forma, as informações sobre os processos e as regras de funcionamento do 52º Distrito Policial foram fundamentadas nos registros produzidos pelo grupo.

As sugestões e alterações realizadas com auxílio das ferramentas foram revisadas pelos integrantes para garantir sua coerência com os dados levantados e os requisitos estabelecidos.

Também foi necessário corrigir inconsistências entre as diferentes versões do modelo, principalmente em relação à quantidade de entidades, à eliminação de VITIMA e à inclusão de ADVOGADO como especialização de PESSOA.

Assim, a inteligência artificial foi utilizada como ferramenta de apoio, enquanto as decisões de modelagem, as verificações e a validação final permaneceram sob responsabilidade dos integrantes.

---

## Considerações finais

O desenvolvimento deste projeto permitiu compreender e representar os principais processos relacionados ao registro de ocorrências e à condução de inquéritos no 52º Distrito Policial.

A partir da pesquisa de campo, o grupo identificou necessidades relacionadas à organização das informações, à rastreabilidade dos procedimentos, à representação das pessoas envolvidas e à geração de indicadores gerenciais.

A modelagem conceitual foi revisada ao longo do desenvolvimento, incorporando novas entidades, especializações e relacionamentos para representar melhor as situações identificadas durante a entrevista.

O resultado é uma proposta de banco de dados relacional com 11 entidades, estruturada para representar as etapas do procedimento policial e apoiar futuras consultas e análises.

As limitações relacionadas à execução integral dos scripts e à disponibilidade de informações da unidade foram documentadas para garantir transparência sobre o estágio de validação do projeto.

Dessa forma, o trabalho reúne os resultados do levantamento de requisitos, da modelagem conceitual e da documentação técnica, mantendo como referência as informações obtidas pelo grupo e as decisões tomadas durante o desenvolvimento.
