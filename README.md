# Modelagem de Banco de Dados para o 52º Distrito Policial de São Paulo

## Integrantes

| Nome completo do aluno | RGM | Usuário do GitHub |
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
### Relatório Técnico Final — conteúdo complementar

### 2.2 Análise e conversão em inquérito
#### Revisão do Modelo Conceitual

O delegado titular analisa o boletim de ocorrência. A conversão em inquérito acontece somente quando existem indícios ou provas materializadas dos fatos.
#### Caracterização da organização

Quando não há essa comprovação, a ocorrência permanece em investigação e não gera um inquérito.
| Item | Descrição |
|---|---|
| Organização | 52º Distrito Policial de São Paulo (Polícia Civil do Estado de São Paulo) |
| Natureza | Instituição pública, sem fins lucrativos |
| Endereço | R. Dr. Coryntho Baldoíno Costa, 400 – Vila Zilda, São Paulo – SP, 03069-070 ([localização no Google Maps](https://maps.app.goo.gl/KpnnQxBFQmJx874c8)) |
| Contato institucional | Telefone da unidade: (11) 2293-6036 |
| Atividade | Registro de ocorrências e condução de inquéritos policiais (instrução, depoimentos, evidências, movimentações e conclusão) |
| Canais de registro | Presencial e online |

### 2.3 Instrução do inquérito

A instrução envolve a coleta de depoimentos e evidências relacionadas ao procedimento.
- **Escrivães:** 6, usados apenas em inquéritos.
- **Registro de ocorrências:** feito pelo entrevistado e por mais um colega. Os escrivães não registram ocorrências.
- **Análise dos boletins:** o delegado titular analisa o boletim de ocorrência e instaura o inquérito.
- **Carga:** 200 a 300 inquéritos por mês para cada delegado, "dependendo do lugar". O valor é preservado como foi relatado; não foi convertido em inquéritos abertos ou concluídos por mês.
- **Ocorrências:** o número cresce a cada ano e não é previsível por mês, porque existem registro físico e online.

A vítima pode prestar depoimento diretamente. O acusado realiza o acompanhamento por intermédio de advogado, respeitadas as condições legais de acesso.
**Limites do levantamento.** O levantamento não traz uma série mensal de boletins de ocorrência nem o quantitativo total de servidores da unidade. Por isso nenhum número foi atribuído a esses itens. O banco de dados de testes usa uma composição fictícia de 10 servidores (6 escrivães, 2 delegados e 2 investigadores/agentes), definida para exercitar as consultas, e não descreve a lotação real.

As atividades são conduzidas pelo escrivão e pelo delegado, tanto em procedimentos físicos quanto digitais.
**Problemas e necessidades (Pxx).** Todos são problemas de gestão de informações e têm ao menos uma consulta gerencial na matriz da seção 1.6.

### 2.4 Movimentação processual
| Código | Problema | Origem | Contribuição do modelo |
|---|---|---|---|
| P1 | O DESP, sistema estadual, cai com frequência e dificulta o registro e o acompanhamento. | Relatado (levantamento) | O banco proposto é uma base relacional autocontida, consultável sem depender do DESP. Ele não substitui nem corrige a instabilidade do DESP. |
| P2 | Os casos precisam ser acompanhados do registro da ocorrência à abertura, à instrução e à conclusão do inquérito. | Relatado (P1, P6, P8, P9, C11) | Separa OCORRENCIA de INQUERITO e registra status, datas e movimentações. |
| P3 | O volume de ocorrências cresce e não é previsível por mês, com dois canais de entrada. | Relatado (C10) | Registra `canal_registro` e `data_registro` e permite medir tendência e participação por canal. |
| P4 | Há padrões de natureza que se repetem (estelionato, golpe do amor, falsa delegacia) e a unidade precisa enxergá-los. | Relatado (P5, P10) | `NATUREZA_FATO` classifica cada ocorrência, e `localidade` permite recortes por local. |
| P5 | A carga de trabalho é alta (200 a 300 inquéritos por mês por delegado, 6 escrivães) e a distribuição entre servidores não é visível. | Relatado (C13, C14) | MOVIMENTACAO liga cada ato do inquérito ao servidor responsável. |
| P6 | A instrução (depoimentos, evidências, movimentações) e o acompanhamento por vítima e por advogado do acusado precisam de controle estruturado. | Relatado (P8, P9) | DEPOIMENTO, EVIDENCIA e ENVOLVIMENTO (com `id_oab`) estruturam esses registros. |

As movimentações correspondem à distribuição e às demais alterações realizadas durante a tramitação do inquérito.
**Escopo do sistema.** O banco cobre todo o ciclo documentado na unidade: cadastro de unidade, servidores e pessoas; registro de ocorrências com natureza e envolvidos; abertura de inquérito; depoimentos, evidências, movimentações e conclusão. Não cobre autenticação, controle de acesso em tempo de execução, interface de usuário nem integração com o DESP.

Na unidade pesquisada, essas atividades são realizadas pelos seis escrivães ou pelo delegado, uma vez que os escrivães atuam exclusivamente nos procedimentos de inquérito.
**Justificativa da escolha.** O 52º DP é uma instituição pública com processos definidos (registro, conversão, instrução, conclusão), com acesso presencial a servidores da unidade e com volume de informação que sustenta um modelo relacional de várias entidades. Os registros do grupo não declaram vínculo de integrantes com a unidade.

### 2.5 Acompanhamento do caso
**Evidências da organização.** Endereço e localização acima; fotografias da visita em [Relato da entrevista](#relato-da-entrevista).
A vítima pode acompanhar diretamente o andamento do inquérito. O acusado realiza esse acompanhamento por intermédio de advogado, observadas as regras legais de acesso aos autos.

### 2.6 Conclusão do inquérito
O levantamento completo está em [levantamento.md](levantamento.md). Resumo:

O procedimento é encerrado com o registro de seu status e da respectiva data de conclusão.
| Item | Registro |
|---|---|
| Entrevistada principal | Agente da unidade, com 35 anos de atuação na área policial. A entrevistada não autorizou a divulgação do nome nem forneceu contato pessoal; por isso a identificação foi omitida. |
| Complemento (C10, C11, C13, C14) | Servidor que atua no registro de ocorrências da unidade (a resposta C14 diz que as ocorrências "são feitas pelo entrevistado e mais um colega"). O nome não consta dos registros do grupo. |
| Integrantes | Giovanna Ribeiro Souza elaborou as perguntas, conduziu a maior parte da entrevista e anotou as respostas. Três integrantes aparecem nas fotografias; os registros não identificam quais. |
| 1ª visita | 04/09/2026, às 17h10, no 52º DP: entrevista principal (P1 a P10 e observações adicionais). |
| 2ª visita | 24/09/2026, às 16h09, no 52º DP: complemento das informações (C10, C11, C13, C14). O áudio da 2ª visita foi gravado por volta das 17h22 e tem 2 min 36 s. |
| Responsável pela organização | O nome do responsável não está documentado nem autorizado para divulgação. Contato: telefone institucional (11) 2293-6036. |

---

## 3. Requisitos do sistema
- O inquérito serve para apurar os fatos, ouvir os dois lados e verificar a veracidade das informações (P1).
- A ocorrência é registrada com imparcialidade, e anotam-se relatos e fatos, principalmente os ocorridos no momento da situação (P2, P3).
- Qualquer pessoa autorizada dentro da delegacia registra; quem comunica pode ser a vítima ou qualquer pessoa que conheça os fatos (P4).
- Os registros são muito frequentes, principalmente de estelionato, com padrões fixos como golpe do amor e falsa delegacia (P5).
- Só há conversão em inquérito com prova materializada; sem ela, o caso permanece em investigação (C11). O delegado titular analisa o boletim e instaura o inquérito ao identificar indícios de crime (P7, P10). Se a materialidade não for comprovada, o procedimento pode ser cancelado (P2).
- Depoimentos e evidências são registrados no inquérito físico e no digital; escrivão e delegado são responsáveis (P8).
- A vítima pode acompanhar o andamento; o acusado só por meio de advogado (P9).
- O DESP abrange todo o estado e cai constantemente.
- Opinião da agente sem efeito no modelo: algumas ocorrências não deveriam ir à delegacia e seria útil um espaço de apoio para relatos de menor gravidade.

### 3.1 Requisitos funcionais (RF)
O grupo viu apenas a recepção. A entrevista ocorreu em local aberto, em frente à delegacia, próximo ao estacionamento; não havia grande movimentação no horário e escrivães e outros profissionais não estavam na recepção. As fotografias mostram porta de vidro com balcão ao fundo, rampa com piso tátil e sinalização de acessibilidade, bancos de concreto e o banner da delegacia. Nenhum dos processos descritos neste relatório foi observado em execução: todos decorrem das respostas. Do levantamento anterior, a entrevistada também não forneceu dados sobre equipamentos ou sistemas além do DESP.

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
**Evidências fotográficas e de áudio.**

### 3.2 Requisitos não funcionais (RNF)

- **Disponibilidade:** O sistema deve permanecer disponível de maneira contínua, reduzindo os problemas de instabilidade observados no DESP.
- **Confiabilidade dos dados:** Os relatos devem ser registrados de forma íntegra e imparcial, sem alterações posteriores sem rastreabilidade.
- **Segurança e privacidade:** Os dados de vítimas, testemunhas, servidores e demais envolvidos devem possuir acesso restrito e auditável, respeitando o sigilo dos procedimentos policiais.
- **Rastreabilidade:** Toda movimentação de inquérito deve registrar data e responsável, permitindo consultar o histórico do procedimento.
- **Usabilidade:** O registro de ocorrências deve ser simples e acessível a qualquer servidor autorizado.
- **Escalabilidade:** O modelo deve suportar o crescimento do volume de ocorrências ao longo dos anos, sem depender de uma demanda mensal previsível.
*Registro 1 — fachada do 52º Distrito Policial, com a placa e o brasão da Polícia Civil.*

---

## 4. Regras de negócio
*Registro 2 — integrantes do grupo na calçada, em frente ao banner da delegacia.*

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
*Registro 3 — mesma cena do Registro 2, em outro enquadramento.*

### 4.2 Restrições organizacionais
O áudio é evidência complementar; o texto de referência da pesquisa de campo é o [levantamento.md](levantamento.md).

- A unidade utiliza um roteiro institucional de perguntas padronizado durante as entrevistas. Por esse motivo, o complemento do responsável pela unidade, referente às perguntas 10, 11, 13 e 14, foi registrado separadamente para evitar conflitos com a numeração da entrevista original.
- A quantidade de seis escrivães e sua atuação exclusiva nos procedimentos de inquérito representam uma característica organizacional considerada na modelagem.
- Todos os dados pessoais utilizados como exemplos no projeto são fictícios, respeitando a privacidade e a proteção de dados.
#### Processos de negócio

---

## 5. Dicionário de dados conceitual

O dicionário de dados apresenta as entidades, seus atributos e as respectivas regras de negócio.
| Processo | Etapas e dados envolvidos |
|---|---|
| **Registro de ocorrência** | Um servidor autorizado (Delegado ou Investigador/Agente, na prática descrita em C14) registra a ocorrência: unidade (`id_unidade`), natureza do fato (`id_natureza`), servidor (`id_servidor`), canal (`canal_registro`: Presencial ou Online), data e hora (`data_registro`), local do fato (`localidade`), situação (`status`) e relato imparcial (`relato_fatos`). |
| **Vínculo de pessoas** | Cada pessoa (nome, documento, contato e observação em PESSOA) é ligada à ocorrência com o papel que exerce (`papel` em ENVOLVIMENTO: Vítima, Testemunha, Acusado, Comunicante). Para o acusado, pode-se registrar o advogado vinculado (`id_oab`). |
| **Análise e conversão** | O delegado analisa o boletim. Com prova materializada, a ocorrência passa a `Convertida em inquérito` e gera um INQUERITO (`data_abertura`, `status`, `prioridade`). Sem prova, permanece `Em investigação`; pode ficar `Em análise` ou ser `Cancelada`. |
| **Instrução** | Escrivão e delegado registram depoimentos (pessoa, `data_depoimento`, `resumo_ficticio`) e evidências (`tipo_evidencia`, `descricao`, `data_apreensao`, `status_custodia`). |
| **Movimentação** | Cada ato do inquérito (distribuição, instauração, oitiva, juntada, despacho, relatório final etc.) é registrado com data, tipo, descrição e servidor responsável (Delegado ou Escrivão). |
| **Acompanhamento** | A vítima acompanha o andamento diretamente; o acusado, por meio de advogado. O banco guarda o vínculo `id_oab`; a concessão de acesso ocorre fora do banco. |
| **Conclusão** | O inquérito é encerrado com `status` e `data_conclusao` (igual ou posterior a `data_abertura`). |

O modelo final considera 11 entidades, incluindo PESSOA como superentidade e SERVIDOR e ADVOGADO como especializações.
**Processos típicos não incluídos.** O levantamento não registra outros processos além dos acima (por exemplo, gestão de custódia física de bens, escala de equipe ou comunicação com outros órgãos). Eles não foram modelados porque não foram levantados; o grupo não afirma que a unidade não os execute.

### 5.1 UNIDADE_POLICIAL
#### Requisitos funcionais

| Atributo | Descrição | Regra associada |
| Código | Requisito | Entidades e dados |
|---|---|---|
| id_unidade | Identificador único da unidade | Chave primária |
| nome | Nome oficial da unidade | Obrigatório |
| endereco | Endereço físico completo | Obrigatório |
| tipo_unidade | Classificação da unidade | Obrigatório |
| cidade | Cidade e UF | Obrigatório |

### 5.2 PESSOA

Superentidade que representa as pessoas envolvidas no sistema, permitindo especializações e evitando a repetição de informações comuns.

| Atributo | Descrição | Regra associada |
| RF01 | Registrar ocorrência com unidade, servidor responsável, natureza do fato, canal de registro, data e hora, localidade, situação e relato dos fatos. | OCORRENCIA |
| RF02 | Vincular uma ou mais pessoas a uma ocorrência, com o papel de cada uma. | PESSOA, ENVOLVIMENTO |
| RF03 | Abrir inquérito a partir de uma ocorrência, somente quando houver prova materializada, com data de abertura, situação e prioridade. | INQUERITO |
| RF04 | Registrar depoimentos de um inquérito, com a pessoa que depôs, a data e o resumo. | DEPOIMENTO |
| RF05 | Registrar evidências de um inquérito, com tipo, descrição, data de apreensão e situação da cadeia de custódia. | EVIDENCIA |
| RF06 | Registrar movimentações de um inquérito, com data, tipo, descrição e servidor responsável. | MOVIMENTACAO |
| RF07 | Consultar a situação de uma ocorrência ou de um inquérito. | OCORRENCIA, INQUERITO |
| RF08 | Gerar relatórios gerenciais (ocorrências por natureza e por canal, inquéritos por situação e demais consultas G01 a G19). | Consultas e views `vw_bi_*` |
| RF09 | Atualizar a situação e a data de conclusão de um inquérito. | INQUERITO |
| RF10 | Registrar o advogado vinculado a uma pessoa acusada em uma ocorrência. | ENVOLVIMENTO, ADVOGADO |

#### Requisitos não funcionais

| Código | Requisito | Situação |
|---|---|---|
| id_pessoa | Identificador único da pessoa | Chave primária |
| nome_ficticio | Nome fictício | Obrigatório |
| documento_ficticio | Documento fictício | Obrigatório |
| observacao | Informações adicionais | Opcional |
| contato_ficticio | Contato fictício | Obrigatório |

### 5.3 SERVIDOR

Especialização de PESSOA, destinada à representação dos profissionais da unidade policial.

| Atributo | Descrição | Regra associada |
| RNF01 | Disponibilidade contínua, para reduzir a dependência da instabilidade do DESP. | Requisito de projeto. Depende de infraestrutura e hospedagem; o script não o implementa. |
| RNF02 | Integridade dos registros, sem alterações retroativas sem rastreabilidade. | Integridade referencial e `CHECK` implementadas. Trilha de auditoria de alterações não implementada. |
| RNF03 | Segurança e privacidade: acesso restrito e auditável a dados de vítimas, testemunhas e servidores. | Requisito de projeto. A matriz de acesso do dicionário é proposta; o script não cria perfis nem permissões. |
| RNF04 | Rastreabilidade: toda movimentação registra data e servidor responsável. | Implementado com `data_movimentacao` (tipo `DATE`, sem hora) e `id_servidor`. |
| RNF05 | Usabilidade: registro simples para qualquer servidor autorizado. | Requisito de interface; não há interface implementada. |
| RNF06 | Escalabilidade para o crescimento anual do volume. | Modelo normalizado em InnoDB, com chaves e views de BI. Não houve teste de carga. |

#### Regras de negócio

| Código | Regra | Tipo | Como aparece no banco |
|---|---|---|---|
| RN01 | A ocorrência só é convertida em inquérito com prova materializada; sem ela, permanece em investigação. | Operacional (C11) | Domínio de `OCORRENCIA.status` (CHECK) e `UNIQUE(INQUERITO.id_ocorrencia)`. A existência de prova não é imposta pelo banco; é verificada por V01, V02 e V05. |
| RN02 | Qualquer servidor autorizado pode registrar ocorrência; a atividade não é exclusiva dos escrivães. | Operacional (R1) | `OCORRENCIA.id_servidor` referencia SERVIDOR. Não há restrição de cargo no banco. |
| RN03 | Os escrivães atuam exclusivamente em inquéritos (depoimentos, evidências e movimentações). | Organizacional (C14) | Verificado por V03 e V04. A regra de cargo para movimentações é imposta por trigger (RN09). |
| RN04 | A vítima acompanha diretamente o andamento; o acusado, por meio de advogado, respeitadas as condições legais. | Operacional e legal (P9) | Modelado por ENVOLVIMENTO (`papel`, `id_oab`). A concessão de acesso é decisão da aplicação. |
| RN05 | A data de conclusão do inquérito é igual ou posterior à de abertura. | Operacional | `CHECK chk_datas_inquerito`. |
| RN06 | Toda ocorrência possui relato dos fatos. | Operacional (P3) | `relato_fatos TEXT NOT NULL`. |
| RN07 | O canal de registro é obrigatório: Presencial ou Online. | Operacional (C10) | `canal_registro NOT NULL` e `CHECK chk_ocorrencia_canal`. |
| RN08 | A pessoa acusada pode ter advogado vinculado, registrado em campo separado do papel. | Modelagem (R8, R9, R10) | `ENVOLVIMENTO.id_oab` (FK opcional) e `CHECK papel <> 'Advogado'`. V07 verifica que só acusados têm advogado. |
| RN09 | Somente Delegado ou Escrivão responde por movimentação. | Organizacional (C14) | Triggers `trg_movimentacao_cargo_bi`, `trg_movimentacao_cargo_bu` e `trg_servidor_cargo_bu`. |

**Observações sobre as regras.**

- No levantamento da Entrega 1, a regra do relato e a do canal formavam uma só (RN06). Na versão atual elas estão separadas em RN06 e RN07, e os códigos RN01 a RN09 são os desta tabela. A numeração R1 a R14 do Dicionário de Dados é independente de RNxx e é citada pelo nome "R" quando necessário.
- **Restrições legais consideradas pelo dicionário:** Súmula Vinculante 14 do STF e art. 7º, XIV e §§ 10 e 11, da Lei nº 8.906/1994 (acesso do advogado, contextual e limitado à representação registrada); art. 4º, III, da Lei nº 13.709/2018 (LGPD), que exclui do seu âmbito geral o tratamento para fins de investigação e repressão de infrações penais, sem autorizar uso irrestrito de dados pessoais. O campo `id_oab` não comprova procuração nem a regularidade da inscrição (R11).
- **Regras típicas não incluídas:** prazos legais de inquérito, retenção de dados e política de anonimização não foram levantados com a unidade e não estão no modelo.

#### Revisão e alterações conceituais

| Alteração | O que mudou | Por quê |
|---|---|---|
| id_pessoa | Identificador da pessoa correspondente | Chave primária e estrangeira para PESSOA |
| id_unidade | Unidade à qual o servidor pertence | Chave estrangeira para UNIDADE_POLICIAL |
| cargo | Função exercida | Delegado, Escrivão ou Investigador/Agente |
| matricula_ficticia | Matrícula funcional fictícia | Obrigatório |

### 5.4 ADVOGADO

Especialização de PESSOA, destinada à identificação dos advogados que representam pessoas envolvidas nos procedimentos.

| Atributo | Descrição | Regra associada |
| Entidade VITIMA removida | A vítima passou a ser um `papel` em ENVOLVIMENTO. | Vítima é uma função da pessoa na ocorrência, não um tipo de entidade. |
| PESSOA como superentidade | Nome, documento, observação e contato ficam só em PESSOA. | Evita repetir dados comuns em servidores, advogados e envolvidos. |
| SERVIDOR como especialização | `SERVIDOR.id_pessoa` (FK, UNIQUE); `nome_ficticio` removido de SERVIDOR. | Um servidor é uma pessoa. |
| ADVOGADO como especialização | Nova entidade (`id_oab`, `id_pessoa` UNIQUE). Não é cargo de SERVIDOR. | Resposta P9: o acusado acompanha o inquérito por advogado. |
| ENVOLVIMENTO como entidade associativa | Passou a ter PK composta (`id_pessoa`, `id_ocorrencia`), `papel` e `id_oab` opcional. O nome anterior era ENVOLVIMENTO_OCORRENCIA. | A mesma pessoa pode ter papéis diferentes em ocorrências diferentes. |
| Campo "Id pessoa" retirado | Retirado da estrutura anterior. | Considerado inadequado após orientação do professor (registro do grupo). |
| OCORRENCIA e INQUERITO separados | INQUERITO tem `UNIQUE(id_ocorrencia)`: cardinalidade 1:0..1. | Nem toda ocorrência vira inquérito (C11). |
| `canal_registro` e `relato_fatos` | `canal_registro` (Presencial ou Online) e `relato_fatos` obrigatório (TEXT). | Respostas P3 e C10. |
| Valor `Cancelada` no `status` | Incluído no domínio de OCORRENCIA.status. | Resposta P2. |
| Padronização de `id_servidor` | Substituiu `id_servidor_registro`. | Nome único para a FK de SERVIDOR. |
| DEPOIMENTO corrigido | Passou a ter PK simples `id_depoimento`; não é associativa. | Tem atributos próprios e duas FKs; a associativa do modelo é ENVOLVIMENTO. |
| Cardinalidades e UNIQUE | Cardinalidades inferidas a partir das FKs e das regras; UNIQUE em `SERVIDOR.id_pessoa`, `ADVOGADO.id_pessoa` e `INQUERITO.id_ocorrencia`. | A fonte original não declarava cardinalidades. |
| Modelo final | 11 entidades e 56 atributos. | Contagem do dicionário. |

**Estrutura conceitual final.**

| Superentidade | Especializações | Tipo |
|---|---|---|
| id_pessoa | Identificador da pessoa correspondente | Chave primária e estrangeira para PESSOA |
| id_oab | Identificação de inscrição na OAB | Identificador do advogado |
| PESSOA | SERVIDOR, ADVOGADO | Parcial e sobreposta: uma pessoa pode ser servidor, advogado, ambos ou nenhum. |

### 5.5 NATUREZA_FATO
| Relacionamento | Cardinalidade |
|---|---|
| UNIDADE_POLICIAL – SERVIDOR | 1:0..N |
| UNIDADE_POLICIAL – OCORRENCIA | 1:0..N |
| SERVIDOR – OCORRENCIA (registro) | 1:0..N |
| NATUREZA_FATO – OCORRENCIA | 1:0..N |
| PESSOA – OCORRENCIA, por ENVOLVIMENTO (papel, id_oab) | N:M |
| ADVOGADO – ENVOLVIMENTO | 1:0..N |
| OCORRENCIA – INQUERITO | 1:0..1 |
| INQUERITO – DEPOIMENTO, EVIDENCIA, MOVIMENTACAO | 1:0..N |
| PESSOA – DEPOIMENTO | 1:0..N |
| SERVIDOR – MOVIMENTACAO | 1:0..N |

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_natureza | Identificador da natureza do fato | Chave primária |
| descricao | Descrição da natureza, como furto e estelionato | Obrigatório |
| gravidade | Nível de gravidade | Obrigatório |

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
- **Entidades → tabelas.** Cada uma das 11 entidades virou uma tabela com o mesmo nome, em maiúsculas (UNIDADE_POLICIAL, PESSOA, SERVIDOR, ADVOGADO, NATUREZA_FATO, OCORRENCIA, ENVOLVIMENTO, INQUERITO, DEPOIMENTO, EVIDENCIA, MOVIMENTACAO).
- **Atributos → colunas.** Texto curto: `VARCHAR`. Relato dos fatos: `TEXT`. Data e hora do registro da ocorrência: `DATETIME`. Demais datas: `DATE`. Identificadores: `INTEGER AUTO_INCREMENT`, exceto `ADVOGADO.id_oab`, que é `VARCHAR(20)`. A obrigatoriedade virou `NOT NULL`; atributos opcionais ficaram com `DEFAULT NULL`.
- **Relacionamentos 1:N e 1:0..1 → FK.** A FK fica no lado "muitos" (por exemplo, `OCORRENCIA.id_unidade`). No 1:0..1 entre OCORRENCIA e INQUERITO, a FK `INQUERITO.id_ocorrencia` recebe `UNIQUE`.
- **N:M → tabela intermediária.** PESSOA ↔ OCORRENCIA virou ENVOLVIMENTO, com PK composta (`id_pessoa`, `id_ocorrencia`). O par identifica a participação de uma pessoa em uma ocorrência e permite papéis diferentes em ocorrências diferentes.
- **Entidade associativa.** ENVOLVIMENTO leva os atributos próprios `papel` e `id_oab`. `id_oab` é FK opcional para ADVOGADO e indica o advogado vinculado àquele envolvimento.
- **Especialização.** Estratégia de **uma tabela por entidade**: PESSOA, SERVIDOR e ADVOGADO. Cada especialização tem FK para PESSOA com `UNIQUE`, o que implementa a cardinalidade 1:0..1. Foi escolhida porque a especialização é sobreposta (a mesma pessoa pode ser servidor e advogado) e porque SERVIDOR e ADVOGADO têm atributos próprios (`cargo`, `matricula_ficticia`, `id_oab`). Uma tabela única misturaria colunas de natureza diferente e geraria muitos valores nulos.
- **Identificação.** SERVIDOR tem PK própria `id_servidor`, referenciada por OCORRENCIA e MOVIMENTACAO; ADVOGADO usa `id_oab` como PK, referenciada por ENVOLVIMENTO.
- **Cardinalidades mínimas.** Obrigatórias onde a FK é `NOT NULL`. Nulabilidade não declarada na fonte (‡): `OCORRENCIA.id_servidor`, `OCORRENCIA.status`, `SERVIDOR.cargo` e `MOVIMENTACAO.id_servidor` foram implementados como `DEFAULT NULL`.

#### Definição de Chaves Primárias e Estrangeiras

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_pessoa | Pessoa envolvida | Chave primária composta e estrangeira para PESSOA |
| id_ocorrencia | Ocorrência correspondente | Chave primária composta e estrangeira para OCORRENCIA |
| papel | Papel desempenhado na ocorrência | Vítima, testemunha, acusado etc. |
| id_oab | Advogado associado à representação | Referência ao advogado em ADVOGADO |
Nomes conforme `db_52dp.sql`.

A chave primária composta é formada por `id_pessoa` e `id_ocorrencia`. O campo `id_oab` permite identificar o advogado relacionado à pessoa representada.
| Tabela | Chave primária | Chaves estrangeiras | Outras restrições de unicidade |
|---|---|---|---|
| UNIDADE_POLICIAL | `id_unidade` | — | — |
| PESSOA | `id_pessoa` | — | — |
| NATUREZA_FATO | `id_natureza` | — | — |
| SERVIDOR | `id_servidor` | `id_pessoa` → PESSOA; `id_unidade` → UNIDADE_POLICIAL | `UNIQUE(id_pessoa)` |
| ADVOGADO | `id_oab` | `id_pessoa` → PESSOA | `UNIQUE(id_pessoa)` |
| OCORRENCIA | `id_ocorrencia` | `id_unidade` → UNIDADE_POLICIAL; `id_natureza` → NATUREZA_FATO; `id_servidor` → SERVIDOR (opcional) | — |
| ENVOLVIMENTO | (`id_pessoa`, `id_ocorrencia`) | `id_pessoa` → PESSOA; `id_ocorrencia` → OCORRENCIA; `id_oab` → ADVOGADO (opcional) | — |
| INQUERITO | `id_inquerito` | `id_ocorrencia` → OCORRENCIA | `UNIQUE(id_ocorrencia)` |
| DEPOIMENTO | `id_depoimento` | `id_inquerito` → INQUERITO; `id_pessoa` → PESSOA | — |
| EVIDENCIA | `id_evidencia` | `id_inquerito` → INQUERITO | — |
| MOVIMENTACAO | `id_movimentacao` | `id_inquerito` → INQUERITO; `id_servidor` → SERVIDOR (opcional) | — |

### 5.8 INQUERITO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_inquerito | Identificador único do inquérito | Chave primária |
| id_ocorrencia | Ocorrência que originou o inquérito | Chave estrangeira para OCORRENCIA |
| data_abertura | Data de abertura | Obrigatório |
| data_conclusao | Data de conclusão | Opcional enquanto estiver em andamento |
| status | Situação do inquérito | Obrigatório |
| prioridade | Nível de prioridade | Obrigatório |
#### Processo de Normalização (1FN, 2FN e 3FN)

### 5.9 DEPOIMENTO

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_depoimento | Identificador único do depoimento | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| id_pessoa | Pessoa que prestou o depoimento | Chave estrangeira para PESSOA |
| data_depoimento | Data do depoimento | Obrigatório |
| resumo_ficticio | Resumo fictício do conteúdo | Obrigatório |
**1FN — atributos atômicos e sem grupos repetitivos.**

### 5.10 EVIDENCIA

| Atributo | Descrição | Regra associada |
|---|---|---|
| id_evidencia | Identificador único da evidência | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| tipo_evidencia | Tipo da evidência | Documento, objeto etc. |
| descricao | Descrição da evidência | Obrigatório |
| data_apreensao | Data da apreensão | Obrigatório |
| status_custodia | Situação da cadeia de custódia | Obrigatório |
**2FN — sem dependência parcial.** Dez tabelas têm PK simples, e a 2FN é atendida automaticamente. Só ENVOLVIMENTO exige análise: `(id_pessoa, id_ocorrencia) → papel` e `(id_pessoa, id_ocorrencia) → id_oab`. O papel é da pessoa naquela ocorrência, e o advogado é o vinculado àquele envolvimento; nenhum dos dois é determinado apenas por `id_pessoa` ou apenas por `id_ocorrencia`.

### 5.11 MOVIMENTACAO

| Atributo | Descrição | Regra associada |
| Tabela | DFs principais | Observação |
|---|---|---|
| id_movimentacao | Identificador da movimentação | Chave primária |
| id_inquerito | Inquérito relacionado | Chave estrangeira para INQUERITO |
| id_servidor | Servidor responsável | Chave estrangeira para SERVIDOR |
| data_movimentacao | Data da movimentação | Obrigatório |
| tipo_movimentacao | Tipo de movimentação | Obrigatório |
| descricao | Descrição da movimentação | Obrigatório |

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
| UNIDADE_POLICIAL | `id_unidade → nome, endereco, tipo_unidade, cidade` | Nenhum descritivo determina outro. |
| PESSOA | `id_pessoa → nome_ficticio, documento_ficticio, observacao, contato_ficticio` | Dados comuns concentrados aqui. |
| SERVIDOR | `id_servidor → id_pessoa, id_unidade, cargo, matricula_ficticia` | `id_pessoa` é chave candidata (UNIQUE); os dados da pessoa não se repetem. |
| ADVOGADO | `id_oab → id_pessoa` e `id_pessoa → id_oab` | Chaves candidatas entre si; sem outros atributos. |
| NATUREZA_FATO | `id_natureza → descricao, gravidade` | A gravidade fica na natureza, não repetida na ocorrência. |
| OCORRENCIA | `id_ocorrencia → id_unidade, id_natureza, id_servidor, canal_registro, data_registro, localidade, status, relato_fatos` | Dados de natureza e unidade só por FK. |
| ENVOLVIMENTO | `(id_pessoa, id_ocorrencia) → papel, id_oab` | Dados de PESSOA e ADVOGADO não são armazenados aqui. |
| INQUERITO | `id_inquerito → id_ocorrencia, data_abertura, data_conclusao, status, prioridade` | `id_ocorrencia` é chave candidata (UNIQUE). |
| DEPOIMENTO | `id_depoimento → id_inquerito, id_pessoa, data_depoimento, resumo_ficticio` | Inquérito e pessoa entram por FK. |
| EVIDENCIA | `id_evidencia → id_inquerito, tipo_evidencia, descricao, data_apreensao, status_custodia` | Atributos dependem da evidência. |
| MOVIMENTACAO | `id_movimentacao → id_inquerito, id_servidor, data_movimentacao, tipo_movimentacao, descricao` | `descricao` é texto livre, não derivado de `tipo_movimentacao`. |

A entidade ENVOLVIMENTO foi estruturada para relacionar pessoas e ocorrências, registrando o papel de cada indivíduo. Dessa maneira, uma mesma pessoa pode assumir funções diferentes em ocorrências distintas, sem a necessidade de criar entidades separadas para vítima, testemunha ou acusado.
**Resultado.** Com as DFs declaradas ou inferidas acima, as 11 tabelas atendem 1FN, 2FN e 3FN. As DFs foram inferidas dos atributos e das regras do dicionário, e não confirmadas com a unidade. `NATUREZA_FATO.descricao` não é declarada única; se for, torna-se chave candidata e a 3FN se mantém.

A inclusão de ADVOGADO ocorreu após a revisão do modelo conceitual, a partir da necessidade identificada na pergunta 9 da entrevista. O levantamento indicou que a vítima pode acompanhar diretamente o andamento do inquérito, enquanto o acusado realiza esse acompanhamento por intermédio de advogado.
**Redundâncias controladas.** O status `Convertida em inquérito` em OCORRENCIA e a existência de INQUERITO expressam o mesmo fato; a coerência é conferida por V01 e V02, não por restrição. O depoente de um inquérito deve estar envolvido na ocorrência de origem, o que V06 verifica. Essas são regras entre tabelas, não violações de normalização.

O vínculo com o advogado é registrado em ENVOLVIMENTO, permitindo identificar a pessoa representada e a ocorrência correspondente. O campo `papel` continua identificando a função da pessoa na ocorrência, por exemplo, acusado, enquanto a identificação do advogado é realizada separadamente.
#### Justificativas Técnicas das Decisões

A decisão também considera o art. 3º do Estatuto da Advocacia, que estabelece a inscrição na OAB como requisito para o exercício da advocacia, e o art. 7º, XIV, da Lei nº 8.906/1994. O § 10 trata da apresentação de procuração para acesso a autos sigilosos, enquanto o § 11 estabelece condições relacionadas a diligências em andamento ainda não documentadas.
**Chaves primárias.**

A Súmula Vinculante 14 do STF também foi considerada, pois assegura ao defensor, no interesse do representado, acesso aos elementos de prova já documentados e pertinentes ao exercício da defesa.
- Identificadores inteiros com `AUTO_INCREMENT` são estáveis e curtos; os dados descritivos podem mudar sem afetar as referências.
- `ADVOGADO.id_oab` é `VARCHAR(20)` porque a inscrição na OAB é o identificador natural do advogado. Se a inscrição tem formato texto, o tipo texto é o adequado.
- `ENVOLVIMENTO` usa PK composta, o que impede duplicar a mesma pessoa na mesma ocorrência e identifica a participação sem coluna artificial.

**Limite da modelagem:** o registro do identificador `id_oab` permite associar um advogado à pessoa representada, mas não comprova, por si só, a existência de procuração ou a autorização de acesso aos autos. Essas condições devem ser verificadas pela aplicação e pelos mecanismos de controle de acesso.
**Chaves estrangeiras.** Implementam cada relacionamento da seção 1.2 e garantem que não haja inquérito sem ocorrência, depoimento sem inquérito nem movimentação com servidor inexistente. `ENVOLVIMENTO.id_oab` garante apenas que o advogado exista em ADVOGADO; não prova procuração nem regularidade de inscrição.

**Fontes oficiais:**
**Restrições.**

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
| Restrição | Implementa | Observação |
|---|---|---|
| `UNIQUE(SERVIDOR.id_pessoa)` e `UNIQUE(ADVOGADO.id_pessoa)` | Especialização 1:0..1 | Uma pessoa não vira dois servidores nem dois advogados. |
| `UNIQUE(INQUERITO.id_ocorrencia)` | RN01 (um inquérito por ocorrência) | Sustenta 1:0..1. |
| `CHECK chk_servidor_cargo` | Dicionário R7 (Delegado, Escrivão ou Investigador/Agente) | ADVOGADO não é cargo. |
| `CHECK chk_ocorrencia_canal` e `canal_registro NOT NULL` | RN07 | Domínio Presencial/Online. |
| `CHECK chk_ocorrencia_status` | Dicionário R4 | Em análise, Em investigação, Convertida em inquérito, Cancelada. |
| `relato_fatos NOT NULL` | RN06 | — |
| `CHECK chk_datas_inquerito` | RN05 | Conclusão nula ou igual/posterior à abertura. |
| `CHECK chk_envolvimento_papel` (`papel <> 'Advogado'`) | RN08 e Dicionário R8 | `papel` classifica só a pessoa; o advogado é registrado em `id_oab`. |
| Triggers de MOVIMENTACAO e SERVIDOR | RN09 | Bloqueiam responsável que não seja Delegado ou Escrivão e impedem mudar o cargo de servidor que já tem movimentação. |
| `NOT NULL` nas demais colunas descritivas | Dicionário | Obrigatoriedade conforme a fonte. |


**Decisões arquiteturais.**

- Um banco único (`db_52dp`) com 11 tabelas, em MySQL 8.0.16 ou superior (necessário para a aplicação efetiva de `CHECK`), `InnoDB` e `utf8mb4`.
- OCORRENCIA e INQUERITO separados para representar ocorrências que não originam inquérito.
- DEPOIMENTO, EVIDENCIA e MOVIMENTACAO ligados ao INQUERITO, porque pertencem à instrução e à tramitação.
- O modelo não tem FK de INQUERITO para o delegado: a autoria da instauração é obtida em MOVIMENTACAO (tipo `Instauração`), limite declarado no script (G11).
- Não há entidade de representação jurídica: guarda-se só o advogado atualmente vinculado, sem histórico de troca nem múltiplos advogados simultâneos (Dicionário R10).
- O modelo não distingue inquérito físico de digital (P8).

#### Proposta de Arquitetura Analítica para BI e IA

**Informações estratégicas.**

- **Demanda:** volume, tendência, canal, natureza e localidade.
- **Fluxo:** triagem, conversão em inquérito, tempo até a abertura e situação dos inquéritos.
- **Capacidade:** distribuição de registros e movimentações entre servidores.
- **Instrução:** tipos de evidência e situação de custódia; papéis dos envolvidos e advogados vinculados.

**Camadas.**

- **Implementado:** tabelas normalizadas; consultas gerenciais G01 a G19; verificações V01 a V11; quatro views para BI (`vw_bi_ocorrencias`, `vw_bi_inqueritos`, `vw_bi_kpis_mensais`, `vw_bi_demanda_agregada`).
- **Proposto, não implementado:** ETL incremental, modelo dimensional (fatos de ocorrência e inquérito; dimensões de calendário, natureza, localidade, canal, status e unidade) e dashboards sobre as views. Os dados atuais são fictícios; não há dashboard publicado.

**KPIs.** Todos calculáveis pelas consultas existentes. Meta: não há metas ou prazos normativos levantados com a unidade; metas e SLA devem ser definidos pela gestão.

| KPI | Fórmula | Período | Consulta |
|---|---|---|---|
| Ocorrências registradas | Contagem de `OCORRENCIA` por mês, com variação sobre o mês anterior | Mensal | G02 |
| Participação online | Ocorrências online ÷ total | Mensal | G03, G01 |
| Taxa de conversão em inquérito | Ocorrências com inquérito ÷ total (por natureza) | Total e por natureza | G01, G07 |
| Prazo médio até a abertura | Média de dias entre `data_registro` e `data_abertura` | Total | G08 |
| Duração média dos inquéritos concluídos | Média de dias entre `data_abertura` e `data_conclusao` | Por prioridade | G09 |
| Inquéritos em andamento por idade | Contagem por faixa de dias desde a abertura | Data atual | G10 |
| Concentração por natureza | Participação e percentual acumulado por natureza | Total | G04, G05 |
| Carga por servidor | Inquéritos instaurados, distribuídos e movimentações por servidor | Total | G11, G12, G13 |
| Evidências por custódia | Contagem por tipo e situação de custódia | Total | G15 |

**Matriz de rastreabilidade.** Códigos e conteúdos conferidos diretamente em `db_52dp.sql`. As consultas de auditoria usam códigos V01 a V11 (não há códigos Axx no script); elas aparecem na matriz apenas onde conferem o fluxo do problema, e não como KPI.

| Problema ou KPI | Descrição | Tabelas | Consulta SQL | Utilidade gerencial |
|---|---|---|---|---|
| P1 | Consultas executáveis sobre a base própria, independentes do DESP (contribuição parcial; não resolve a instabilidade). | OCORRENCIA, INQUERITO | G01 | Painel de totais, conversão, participação online, inquéritos em andamento e duração média. |
| P2 | Funil de triagem das ocorrências. | OCORRENCIA | G06 | Mostra quantas ocorrências estão em análise, em investigação, convertidas e canceladas. |
| P2 | Conversão em inquérito por natureza. | NATUREZA_FATO, OCORRENCIA, INQUERITO | G07 | Identifica naturezas com maior ou menor conversão. |
| P2 | Prazo entre registro e abertura. | INQUERITO, OCORRENCIA | G08 | Mede o tempo de triagem até a instauração. |
| P2 | Duração dos inquéritos concluídos. | INQUERITO | G09 | Mede o tempo de instrução por prioridade. |
| P2 | Envelhecimento dos inquéritos em andamento. | INQUERITO | G10 | Localiza inquéritos parados há mais tempo. |
| P3 | Ocorrências por mês e variação. | OCORRENCIA | G02 | Mostra a tendência de volume. |
| P3 | Canal de registro por mês. | OCORRENCIA | G03 | Mostra a participação do canal online. |
| P4 | Ranking de naturezas, com percentual acumulado. | OCORRENCIA, NATUREZA_FATO | G04 | Prioriza as naturezas mais frequentes. |
| P4 | Família estelionato frente às demais. | OCORRENCIA, NATUREZA_FATO | G05 | Dimensiona o estelionato e seus subtipos. |
| P4 | Localidades com mais ocorrências e natureza predominante. | OCORRENCIA, NATUREZA_FATO | G14 | Apoia a análise territorial. |
| P5 | Inquéritos instaurados por delegado. | MOVIMENTACAO, SERVIDOR, PESSOA, INQUERITO | G11 | Distribui a carga entre delegados (autoria obtida por movimentação `Instauração`). |
| P5 | Inquéritos recebidos e movimentações por escrivão. | SERVIDOR, PESSOA, MOVIMENTACAO | G12 | Distribui a carga entre os escrivães. |
| P5 | Ocorrências registradas por servidor. | OCORRENCIA, SERVIDOR, PESSOA | G13 | Mostra quem registra ocorrências. |
| P5 | Volume de peças por inquérito. | INQUERITO, DEPOIMENTO, EVIDENCIA, MOVIMENTACAO | G19 | Dimensiona o esforço de instrução. |
| P6 | Evidências por tipo e custódia. | EVIDENCIA | G15 | Mostra pendências de custódia e perícia. |
| P6 | Papéis nas ocorrências e acusados com advogado. | ENVOLVIMENTO | G16 | Mostra a proporção de acusados com advogado. |
| P6 | Ranking de advogados por acusados vinculados. | ENVOLVIMENTO, ADVOGADO, PESSOA | G17 | Mostra a concentração de representações. |
| P6 | Pessoas com 2 ou mais ocorrências. | ENVOLVIMENTO, PESSOA | G18 | Identifica recorrência de envolvidos. |

| Código | Verifica | Regra relacionada |
|---|---|---|
| V01 | Inquérito cuja ocorrência não está `Convertida em inquérito` | RN01 (C11) |
| V02 | Ocorrência `Convertida em inquérito` sem inquérito | RN01 (C11) |
| V03 | Ocorrência registrada por escrivão | RN03 (C14) |
| V04 | Movimentação feita por servidor que não é escrivão nem delegado | RN09, RN03 (C14) |
| V05 | Inquérito sem evidência até a data de abertura (prova materializada) | RN01 (C11) |
| V06 | Depoente não envolvido na ocorrência do inquérito | Consistência entre tabelas |
| V07 | Advogado vinculado a envolvido que não é Acusado | RN08 (P9) |
| V08 | Situação do inquérito incoerente com `data_conclusao` | Consistência (relacionada a RN05) |
| V09 | Inquérito sem movimentação de instauração feita por delegado | RN09 (P10) |
| V10 | Inquérito aberto antes do registro da ocorrência | Consistência entre tabelas |
| V11 | Envolvimento com papel `Advogado` | RN08 (Dicionário R8) |

- Previsão de volume por mês, natureza, canal e localidade, a partir da view `vw_bi_demanda_agregada`.
- Alertas de demora de inquérito, com validação histórica e revisão humana.
- Classificação de textos de relato, somente em ambiente controlado, com minimização e redação de dados pessoais.
- Limites: a amostra do projeto é fictícia e curta, e não permite treinar nem validar previsões reais. Os modelos não devem inferir culpa, perfilar pessoas, prever criminalidade individual nem decidir abordagem ou investigação. A IA deve apoiar o planejamento, e a decisão permanece humana.
- Governança: com dados reais, aplicar controle de acesso por função, minimização, pseudonimização para BI, registro de acessos e revisão jurídica e institucional.

---

## 9. Limitações, verificação e rastreabilidade

### 9.1 Padronização do banco de dados e dos scripts

Para eliminar divergências entre os arquivos do projeto, padronizou o nome do banco de dados como `db_52dp`. Essa nomenclatura também foi adotada no arquivo de BI, garantindo consistência entre os materiais desenvolvidos.

A referência ao antigo "Script V3" foi removida, estabelecendo o script principal como referência para a criação da estrutura do banco.

Os códigos das consultas também foram padronizados:

- **Gxx:** consultas gerenciais, utilizadas para apresentar indicadores e informações relevantes.
- **Vxx:** verificações de integridade, destinadas a identificar possíveis inconsistências nos dados.
- **Axx:** consultas de auditoria, relacionadas às regras de negócio identificadas como `RNxx`.

Essa organização permite relacionar cada regra de negócio à respectiva consulta de auditoria, facilitando a conferência e a manutenção do banco.

### 9.2 Verificação da execução

Até a elaboração desta documentação, o grupo ainda não havia executado os scripts completos em uma instância MySQL. Portanto, a sintaxe e os resultados das consultas permanecem não verificados em uma execução integral.
### Modelo Lógico Relacional — documentação complementar

1. Criação do banco de dados `db_52dp`.
2. Criação das tabelas e respectivas restrições.
3. Inserção dos dados fictícios.
4. Testes de operações `JOIN`, `UPDATE` e `DELETE`.
5. Execução das consultas gerenciais `Gxx`.
6. Execução das verificações de integridade `Vxx`.
7. Execução das consultas de auditoria `Axx`.
O diagrama mostra as 11 tabelas, as PKs e FKs e as cardinalidades `(mín, máx)`. O software usado para desenhá-lo não está registrado nos materiais do grupo. A documentação textual completa, com tipos, obrigatoriedade e restrições de cada coluna, está em [Modelo_Logico_Documentacao.html](Modelo_Logico_Documentacao.html).

Essa sequência permitirá verificar a estrutura do banco, os relacionamentos entre as entidades e o funcionamento das consultas desenvolvidas.
**Diferenças entre o diagrama e o script.** O diagrama mostra `id_oab` como `INT` (no script é `VARCHAR(20)`), `relatos_fatos` como `VARCHAR` (no script é `relato_fatos TEXT`) e `resumo` (no script é `resumo_ficticio VARCHAR(255)`); os tipos `VARCHAR` não trazem tamanho. Para tipos e nomes, vale o script `db_52dp.sql` e a documentação do modelo lógico. As restrições `NOT NULL`, `UNIQUE`, `CHECK` e `DEFAULT` não aparecem no diagrama e estão no [dicionário de dados](Dicionario_de_Dados_52_DP.html) e no script.

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
Estrutura: PESSOA no centro das especializações (SERVIDOR, ADVOGADO) e da associativa ENVOLVIMENTO; OCORRENCIA ligada a UNIDADE_POLICIAL, NATUREZA_FATO e SERVIDOR; INQUERITO ligado a OCORRENCIA (1:0..1); DEPOIMENTO, EVIDENCIA e MOVIMENTACAO ligados a INQUERITO.

---

## 10. Uso de Inteligência Artificial

Durante o desenvolvimento do projeto, foram utilizadas ferramentas de inteligência artificial como apoio à organização, elaboração, revisão e desenvolvimento dos materiais técnicos.

### 10.1 Ferramentas utilizadas
### Script SQL Completo — referência de implementação

| Ferramenta | Etapa de utilização |
| Item | Descrição |
|---|---|
| Claude | Geração e organização do script SQL, conversão de documentos para HTML e elaboração inicial do README. |
| ChatGPT | Apoio ao desenvolvimento do SQL, esclarecimento de dúvidas, revisão textual e organização da documentação. |
| Gemini | Apoio à pesquisa, organização de ideias e desenvolvimento de materiais do projeto. |
| Replit | Apoio ao desenvolvimento e à organização do DER e de seus relacionamentos. |
| Script principal | [db_52dp.sql](db_52dp.sql) |
| SGBD | MySQL 8.0.16 ou superior (`CHECK` aplicado, funções de janela, CTE e triggers com `SIGNAL`) |
| Banco | `db_52dp`, com `utf8mb4` e `utf8mb4_0900_ai_ci` |
| Tabelas | 11, em `InnoDB`, com PKs, FKs, `NOT NULL`, `UNIQUE` e `CHECK` |
| Triggers | 3: `trg_movimentacao_cargo_bi`, `trg_movimentacao_cargo_bu` e `trg_servidor_cargo_bu` |
| Dados | `INSERT` de dados fictícios em ordem de dependência (seção 4) |
| Consultas gerenciais | G01 a G19, com `JOIN`, agregações e funções de janela |
| Verificações | V01 a V11 |
| Views para BI | `vw_bi_ocorrencias`, `vw_bi_inqueritos`, `vw_bi_kpis_mensais` e `vw_bi_demanda_agregada` |
| Verificação estrutural | `SHOW TABLES` e contagem de linhas por tabela |

### 10.2 Motivação
**Execução.** O script é autocontido: cria o banco, as tabelas, os triggers, os dados, as consultas e as views. Deve ser executado uma única vez em um banco `db_52dp` vazio. Ele não contém `DROP`, e os `INSERT` e os triggers não são idempotentes. Não deve ser executado junto com os `INSERT` de `Script_SQL_52DP.sql`, porque os dois conjuntos reutilizam IDs com conteúdos diferentes. A consulta G10 usa `CURDATE()`, e seu resultado depende da data de execução.

As ferramentas foram utilizadas para auxiliar na organização das tabelas definidas a partir do dicionário de dados, produzir documentos HTML de apoio, esclarecer dúvidas sobre SQL e estruturar o README conforme o modelo solicitado pelo professor.
**Script alternativo.** [Script_SQL_52DP.sql](Script_SQL_52DP.sql) é um arquivo SQL com `DROP`, as 11 tabelas, os triggers, uma carga mínima de uma linha por tabela, consultas iniciais, testes de `UPDATE` e `DELETE` com `ROLLBACK` e `SELECT` de conferência. Ele tem erro de sintaxe: falta uma vírgula entre as restrições `chk_ocorrencia_canal` e `chk_ocorrencia_status` na criação de OCORRENCIA, e por isso não executa como está. Os códigos de consulta desse arquivo têm outro significado e não são os usados neste relatório. O `db_52dp.sql` não tem comandos `UPDATE` e `DELETE`; os testes dessas operações existem apenas nesse arquivo alternativo.

Também foram utilizadas para revisar a consistência entre o DER, o modelo lógico, a normalização, as chaves e a documentação.
**Estado de validação.** Os registros do grupo não incluem a execução completa em uma instância MySQL; por isso este relatório não apresenta resultados de consultas nem declara execução bem-sucedida. Foi feita conferência estática dos `INSERT` de `db_52dp.sql`: não há PK duplicada, as FKs apontam para linhas existentes, as 98 ocorrências convertidas correspondem aos 98 inquéritos, o `CHECK` de datas e a regra de cargo das movimentações são respeitados, e as condições de V01 a V11 não encontram linhas. Essa conferência não substitui o teste do script em banco vazio.

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
---

Entretanto, não tiveram acesso direto à organização nem participaram da entrevista de campo. Dessa forma, as informações sobre os processos e as regras de funcionamento do 52º Distrito Policial foram fundamentadas nos registros produzidos pelo grupo.
### Massa de Dados — detalhamento complementar

As sugestões e alterações realizadas com auxílio das ferramentas foram revisadas pelos integrantes para garantir sua coerência com os dados levantados e os requisitos estabelecidos.
A massa está em [db_52dp.sql](db_52dp.sql) (seção 2 do arquivo). Todos os dados são **fictícios** (`nome_ficticio`, `documento_ficticio`, `contato_ficticio`, `matricula_ficticia`, `resumo_ficticio`, inscrições `OAB-FICT-nnn`) e foram elaborados para fins acadêmicos, de modo a exercitar o modelo, as consultas e as verificações. Eles não reproduzem o volume nem as estatísticas reais do 52º DP, e nenhum dado real de pessoas foi usado.

Também foi necessário corrigir inconsistências entre as diferentes versões do modelo, principalmente em relação à quantidade de entidades, à eliminação de VITIMA e à inclusão de ADVOGADO como especialização de PESSOA.
**Quantidade de registros, contada nos `INSERT`.**

Assim, a inteligência artificial foi utilizada como ferramenta de apoio, enquanto as decisões de modelagem, as verificações e a validação final permaneceram sob responsabilidade dos integrantes.
| Tabela | Registros | Faixa de identificadores |
|---|---|---|
| UNIDADE_POLICIAL | 1 | 1 |
| PESSOA | 205 | 101 a 305 |
| SERVIDOR | 10 | 201 a 210 |
| ADVOGADO | 12 | `OAB-FICT-001` a `OAB-FICT-012` |
| NATUREZA_FATO | 10 | 1 a 10 |
| OCORRENCIA | 312 | 5001 a 5312 |
| ENVOLVIMENTO | 639 | pares (`id_pessoa`, `id_ocorrencia`) |
| INQUERITO | 98 | 9001 a 9098 |
| DEPOIMENTO | 167 | 3001 a 3167 |
| EVIDENCIA | 165 | 7001 e 7101 a 7264 |
| MOVIMENTACAO | 513 | 10001 a 10513 |
| **Total** | **2.132** | |

**Cenários cobertos (fictícios).**

- Ocorrências de janeiro a outubro de 2026, nos dois canais (171 online e 141 presencial) e em quatro situações: Em investigação (152), Convertida em inquérito (98), Cancelada (33) e Em análise (29).
- 10 naturezas, incluindo estelionato, golpe do amor e falsa delegacia, com 10 localidades.
- Papéis dos envolvidos: Vítima (247), Acusado (174), Testemunha (154) e Comunicante (64). Advogado vinculado somente a acusados.
- Inquéritos concluídos (58) e em investigação (40), nas prioridades Normal (65), Alta (25) e Baixa (8).
- Evidências de 7 tipos e 4 situações de custódia; movimentações de 7 tipos (Oitiva, Distribuição, Instauração, Relatório final, Requisição de perícia, Juntada de evidência e Despacho).
- Servidores: 6 escrivães, 2 delegados e 2 investigadores/agentes. Somente os 2 agentes registram ocorrências, e escrivães e delegados atuam nos inquéritos, conforme C14.

**Relação com os processos.** Cada ocorrência convertida tem um inquérito, com movimentações de distribuição e instauração. Os depoentes são pessoas envolvidas na ocorrência, e os inquéritos têm ao menos uma evidência até a data de abertura (prova materializada, C11).

**Dimensionamento.** O levantamento não traz uma série quantitativa de boletins por mês nem o volume real de inquéritos concluídos; o valor de 200 a 300 inquéritos por delegado não foi usado para dimensionar a massa. O tamanho da amostra foi definido para dar variedade suficiente às consultas de tendência, conversão, carga e auditoria; ele é uma amostra reduzida e não representa o volume real da unidade.

**Limitações.** A massa não permite inferir produtividade, tempo de tramitação ou taxa de conversão reais do 52º DP. A composição de 10 servidores é uma premissa de teste. A unidade policial do script usa endereço fictício e a designação "Parque São Jorge", que não consta do levantamento de campo; o endereço real está na seção 1.1. A geração dos dados com ferramentas de IA está registrada na seção 6; os prompts exatos usados para gerar a massa não foram preservados.

---

## Considerações finais
### Repositório GitHub — artefatos e contribuições

O desenvolvimento deste projeto permitiu compreender e representar os principais processos relacionados ao registro de ocorrências e à condução de inquéritos no 52º Distrito Policial.
| Artefato | Arquivo |
|---|---|
| Relatório Técnico Final | [README.md](README.md) |
| Dicionário de Dados (11 entidades, 56 atributos) | [Dicionario_de_Dados_52_DP.html](Dicionario_de_Dados_52_DP.html) |
| DER conceitual (versão arquivada) | [DER Modelo Conceitual.png](DER%20Modelo%20Conceitual.png) |
| Modelo lógico (diagrama) | [modelo_logico.png](modelo_logico.png) |
| Documentação do modelo lógico e da normalização | [Modelo_Logico_Documentacao.html](Modelo_Logico_Documentacao.html) |
| Convenções de prefixos dos atributos | [prefixos_dicionario_52_dp .html](prefixos_dicionario_52_dp%20.html) |
| Modelo conceitual e levantamento (Entrega 1) | [modelo-conceitual-e-levantamento.html](modelo-conceitual-e-levantamento.html) |
| Levantamento de campo | [levantamento.md](levantamento.md) |
| Script SQL principal | [db_52dp.sql](db_52dp.sql) |
| Script SQL alternativo (com erro de sintaxe, ver seção 3) | [Script_SQL_52DP.sql](Script_SQL_52DP.sql) |
| Fotografias da visita | [Registro 1.jpeg](Registro%201.jpeg), [Registro 2.jpeg](Registro%202.jpeg), [Registro 3.jpeg](Registro%203.jpeg) |
| Áudio da 2ª visita | [Audio da entrevista 1.mp4](Audio%20da%20entrevista%201.mp4) |

**Contribuições individuais documentadas pelo grupo.**

| Integrante | Contribuição |
|---|---|
| Eduardo Vinicius Ribeiro Costa | Revisão de prefixos e dicionários; testes de `UPDATE`, `INSERT` e `DELETE`; KPIs e comentários; reorganização do SQL. |
| Enzo Freire dos Santos | Alterações no DER, incluindo as entidades de especialização e a entidade ADVOGADO; versão final no brModelo. |
| Paulo Henrique Camilo de Pascoa Souza | Prefixos e ajustes no modelo lógico. |
| Giovanna Ribeiro Souza | Elaboração das perguntas e condução da entrevista; criação do repositório; organização do README; comandos `DELETE` para viabilizar alterações no banco; início do DER (Draw.io e DBDesigner). |
| João Victor da Costa Silva | Remoção da entidade VITIMA; PESSOA como superentidade; reorganização de ENVOLVIMENTO; `relato_fatos` e `canal_registro`; atualização de dicionário, normalização e chaves. |

A partir da pesquisa de campo, o grupo identificou necessidades relacionadas à organização das informações, à rastreabilidade dos procedimentos, à representação das pessoas envolvidas e à geração de indicadores gerenciais.
**Histórico de commits.** O histórico do GitHub não foi analisado na elaboração deste documento; por isso nenhuma afirmação é feita sobre o equilíbrio de commits entre os integrantes.

A modelagem conceitual foi revisada ao longo do desenvolvimento, incorporando novas entidades, especializações e relacionamentos para representar melhor as situações identificadas durante a entrevista.
---

O resultado é uma proposta de banco de dados relacional com 11 entidades, estruturada para representar as etapas do procedimento policial e apoiar futuras consultas e análises.
### Uso de Inteligência Artificial — registro complementar

As limitações relacionadas à execução integral dos scripts e à disponibilidade de informações da unidade foram documentadas para garantir transparência sobre o estágio de validação do projeto.
Ferramentas de IA apoiaram a organização, a elaboração e a revisão dos materiais. As informações sobre o funcionamento do 52º DP vêm da pesquisa de campo do grupo; nenhuma ferramenta teve acesso à unidade nem participou da entrevista, e nenhuma foi tratada como fonte primária.

Dessa forma, o trabalho reúne os resultados do levantamento de requisitos, da modelagem conceitual e da documentação técnica, mantendo como referência as informações obtidas pelo grupo e as decisões tomadas durante o desenvolvimento.
| Dimensão | Registro |
|---|---|
| **Ferramenta e etapa** | **Claude:** geração e organização do script SQL, conversão de documentos para HTML, elaboração inicial do README e consolidação final deste README com base nos artefatos do projeto. **ChatGPT:** apoio ao SQL, dúvidas, revisão textual e organização da documentação. **Gemini:** apoio à pesquisa, à organização de ideias e aos materiais. **Replit:** apoio ao desenvolvimento e à organização do DER e de seus relacionamentos. |
| **Motivação** | Organizar as tabelas definidas a partir do dicionário de dados, produzir documentos HTML de apoio, esclarecer dúvidas de SQL, estruturar o README conforme o modelo da disciplina e revisar a consistência entre DER, modelo lógico, normalização, chaves e documentação. |
| **Prompts** | Registrados literalmente pelo grupo: "Deixe esse documento em HTML.", "Deixe o fundo todo preto." e "Complete o README.". Os demais foram solicitações de revisão e organização do script SQL e de explicação e conferência de entidades, relacionamentos e dicionário, descritas em resumo; os textos exatos, inclusive os usados para gerar a massa de dados, não foram preservados. |
| **Respostas recebidas** | Páginas HTML para consulta do script (DDL, `INSERT`, consultas, `UPDATE`, `DELETE` e relatórios gerenciais); rascunhos de documentação (caracterização, processos, requisitos, regras, dicionário, modelagem conceitual e justificativa); explicações sobre SQL, relacionamentos, normalização e estrutura do banco. |
| **Fontes consultadas e verificadas** | As regras de negócio e os processos foram conferidos contra o levantamento e as respostas da entrevista. As referências legais (Lei nº 8.906/1994 e Súmula Vinculante 14) foram consultadas nas fontes oficiais: [Estatuto da Advocacia](https://www2.camara.leg.br/legin/fed/lei/1994/lei-8906-4-julho-1994-349751-normaatualizada-pl.html) e [Súmula Vinculante 14](https://portal.stf.jus.br/jurisprudencia/sumariosumulas.asp?base=26%20&sumula=1230). |
| **Trechos rejeitados ou corrigidos** | Eliminação da entidade VITIMA; PESSOA como superentidade com SERVIDOR e ADVOGADO como especializações; reorganização de ENVOLVIMENTO com PK composta e `id_oab`; atualização dos atributos de OCORRENCIA (`relato_fatos`, `canal_registro`); retirada do campo "Id pessoa"; correção de DEPOIMENTO, que não é associativa; revisão de prefixos, relacionamentos, regras, normalização e comandos SQL. |
| **Justificativa da escolha final** | O conteúdo gerado foi mantido, adaptado ou descartado conforme a coerência com o levantamento e os requisitos do projeto. A maior parte da informação já havia sido obtida pelo grupo na entrevista e no dicionário; a IA foi usada sobretudo para organizar, revisar e estruturar. As decisões sobre entidades, atributos, cardinalidades e regras foram do grupo, com as orientações do professor. |
| **Reflexão crítica** | As ferramentas produziram inconsistências entre versões do modelo (contagem de entidades, VITIMA, ADVOGADO), que o grupo corrigiu. Os scripts gerados exigem revisão: o arquivo alternativo ainda contém erro de sintaxe e a execução completa em MySQL não está registrada. Dados fictícios gerados por IA não refletem o volume real da unidade. A validação e a responsabilidade final permanecem com os integrantes. |

**Uso de IA em etapas específicas.** Pesquisa de processos, requisitos e regras típicos de outras organizações: o grupo não registrou esse uso; processos, requisitos e regras partem do levantamento de campo. Geração da massa de dados: registrada acima, sem preservação dos prompts exatos.
