# 📊 Inteligência de Mercado & Controladoria Aplicada à Mobilidade Urbana 
## Esteira Evolutiva de Projetos Analíticos (SQL, Excel e Power BI) 

Este repositório apresenta uma esteira de projetos práticos construídos com foco em **Business Intelligence, Engenharia de Custos e Controladoria**. Utilizando dados históricos proprietários e reais da operação de mobilidade urbana (março de 2026), as análises foram estruturadas para transformar dados operacionais brutos em inteligência corporativa para suporte à tomada de decisão.

---

## 🚀 Projeto 1: Engenharia de Dados & Mapeamento de Mercado com SQL

### 🎯 Objetivo do Projeto
Analisar o comportamento das operações e faturamento no intervalo de pico da manhã (07h30 às 10h00), identificando padrões geográficos de alta tração de demanda e eficiência financeira.

### 🛠️ Hard Skills Aplicadas & Técnicas SQL
*   **Data Ingestion & Saneamento:** Resolução de conflitos de *encoding* e tratamento de inconsistências estruturais na importação de arquivos CSV brutos.
*   **Limpeza de Dados:** Exclusão de registros espúrios de cabeçalho através de filtros lógicos (`WHERE c3 != 'bairro_origem'`).
*   **Manipulação Avançada de Strings:** Limpeza de caracteres monetários e padronização regional (`REPLACE(c5, ',', '.')`) para habilitar operações aritméticas.
*   **Análise Estatística Avançada:** Uso de funções de agregação (`SUM`, `COUNT`) combinadas com subconsultas e cláusula `HAVING` para isolar dinamicamente os bairros com performance acima da média do mercado (ex: Água Verde).

### 📈 Resultados e Validações Visuais (Projeto 1)

<img width="1269" height="653" alt="Print 1 Query maior faturamento por bairro" src="https://github.com/user-attachments/assets/8fc21543-5bfc-418f-ad4a-2ea59be5a09d" />

<img width="1271" height="649" alt="Print 2 Query maior n° corridas bairro" src="https://github.com/user-attachments/assets/eee82554-4086-41c5-b098-83fca1584c08" />

<img width="1275" height="695" alt="Print 3 Query bairros com faturamento acima da média" src="https://github.com/user-attachments/assets/5269f0d9-88c5-4ad8-ae85-c9b2d621e2f9" />


### 🎯 Objetivo do Projeto
Avaliar a viabilidade financeira e o impacto patrimonial de três modelos operacionais distintos: **Veículo Próprio (Financiado), Veículo Alugado (OpEx) e Projeções de Eletrificação da Frota**.

### 🛠️ Hard Skills Aplicadas & Técnicas SQL
*   **Tratamento de Dados Faltantes:** Uso estratégico da função `COALESCE` para garantir a integridade dos cálculos financeiros em cenários simulados (como a ausência de custos de IPVA e manutenção direta no modelo de locação).
*   **Tipagem Dinâmica:** Aplicação da função `CAST(campo AS REAL)` para mitigar erros de truncamento em divisões contábeis complexas.
*   **Modelagem de Métricas de Negócio (KPIs):** Desenvolvimento de equações em SQL para calcular o **CPK (Custo por Quilômetro Rodado)** e projeções matemáticas de depreciação acelerada.

### 🔍 Principais Insights Gerenciais Identificados
1. **A Ilusão do Faturamento Bruto:** Rotas de longa distância elevam drasticamente o custo variável e reduzem o ticket médio. Operações curtas e centralizadas apresentaram faturamento absoluto menor, porém com maior margem líquida e eficiência por quilômetro.
2. **Impacto Patrimonial Silencioso:** A alta rodagem acelera a curva de depreciação do ativo imobilizado (veículo próprio), gerando uma perda patrimonial agressiva na tabela FIPE que costuma ser ignorada em análises superficiais de fluxo de caixa.
3. **Diluição de Custos Invisíveis:** O cálculo do CPK evidenciou a necessidade de provisionar custos futuros (manutenção preventiva, seguro proporcional e desvalorização real) para se obter a verdadeira lucratividade do negócio.

### 💡 Conclusão Estratégica
Decisões de investimentos operacionais exigem uma visão integrada de indicadores. Sob determinadas faixas de rodagem, o **modelo de locação (OpEx)** desponta como uma vantagem competitiva superior, pois transfere os riscos de depreciação e manutenção imprevisível para o custo fixo do contrato, garantindo previsibilidade total ao fluxo de caixa.

### 📈 Resultados e Validações Visuais (Projeto 2)

<img width="1053" height="640" alt="1º Cenários Analisados" src="https://github.com/user-attachments/assets/e294f04b-9005-4795-8d81-d730bbc42f9c" />

<img width="1273" height="627" alt="2º Comparação financeira" src="https://github.com/user-attachments/assets/7fb7b9e5-358a-4f2b-a377-c72791814d33" />

<img width="849" height="585" alt="3º Comparação Operacional" src="https://github.com/user-attachments/assets/d45724c5-2ca5-4eab-93d5-ccd93afa94e9" />

<img width="1272" height="656" alt="4º Depreciacao patrimonial" src="https://github.com/user-attachments/assets/948c5666-f32a-4c70-995a-d28d8704079c" />

<img width="1270" height="657" alt="5º KPI Operacional e Patrimonial" src="https://github.com/user-attachments/assets/abacb2f1-d423-4411-ad67-44062ef50d20" />


---

## 🔍 Projeto 3: Inteligência de Mercado, Sazonalidade & Auditoria de Dados

### 🎯 Objetivo do Projeto
Mapear o comportamento operacional e financeiro da atividade através do cruzamento multidimensional de dados, confrontando janelas horárias de pico, comportamento regional de destino e variações de ticket médio entre os turnos Matutino (07h30 às 10h00) e Vespertino/Noturno (14h00 às 21h00).

### 🛠️ Hard Skills Aplicadas & Técnicas Avançadas
*   **Banco de Dados (SQL):** Agrupamentos compostos (`GROUP BY periodo, bairro_destino`), funções de arredondamento estatístico (`ROUND`) e higienização avançada de strings textuais integradas a funções agregadoras.
*   **Excel Analítico (Business Intelligence):** Modelagem de dados com Tabelas Dinâmicas integradas, criação de campos calculados para extração de médias ponderadas e engenharia de gráficos gerenciais dinâmicos.
*   **Data Quality & Auditoria (Cross-Validation):** Implementação de rotinas rígidas de validação cruzada entre sistemas. O processo consistiu em conciliar e auditar os outputs gerados pelas queries SQL com as consolidações matriciais do Excel, identificando divergências estruturais causadas por falhas na padronização textual da base bruta e corrigindo-as até atingir 100% de convergência e acurácia analítica.

### 📊 Desempenho e Insights Gerenciais Identificados
1. **Sazonalidade e Elasticidade do Ticket Médio:** A análise revelou que os horários de início da manhã (07h) e fim da tarde (17h e 18h) apresentam a maior elasticidade de preço e pico de ticket médio, sendo as janelas horárias críticas para maximização de margem líquida.
2. **Densidade Volumétrica vs Faturamento:** O cruzamento entre volume absoluto de chamadas e receita por faixa horária provou que o pico de faturamento absoluto ocorre entre 16h e 18h, impulsionado pelo retorno comercial vespertino.
3. **Concentração Regional de Destino:** O monitoramento geográfico identificou polos de convergência de viagens (ex: Água Verde, Centro e Portão). Esse mapeamento permite antecipar o posicionamento estratégico da frota para reduzir o tempo de deslocamento ocioso e maximizar a taxa de ocupação horária.

### 📈 Resultados e Validações Visuais (Projeto 3)


<img width="1257" height="581" alt="1" src="https://github.com/user-attachments/assets/7b894b9a-4653-455b-8a29-4d2f9fca5f8c" />

<img width="1251" height="580" alt="2" src="https://github.com/user-attachments/assets/bcc3a9a7-1784-4c34-ba64-428aa2bc7b6d" />

<img width="1255" height="556" alt="3" src="https://github.com/user-attachments/assets/62731cd8-ea7a-4b48-af26-b78b6362dbc4" />

<img width="1257" height="597" alt="4" src="https://github.com/user-attachments/assets/04d1d6f4-4ec2-4bce-af56-d892b98d7825" />

<img width="1262" height="653" alt="5" src="https://github.com/user-attachments/assets/b455d632-9bc6-4c85-a6f9-d9df8dad3b0b" />

<img width="1251" height="565" alt="6°" src="https://github.com/user-attachments/assets/3285c891-9c59-4abc-8179-1963d759a8c9" />

## 🛠️ Tecnologias Utilizadas
*   **Banco de Dados:** SQL (SQLite)
*   **Ferramentas de Suporte:** Microsoft Excel (Validação Cruzada)
*   **Core Competencies:** Controladoria de Custos, Gestão de Ativos, Análise de KPIs, Engenharia de Dados.
