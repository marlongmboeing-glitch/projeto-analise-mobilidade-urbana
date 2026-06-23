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

<img width="1269" height="653" alt="Print 1 Query maior faturamento por bairro" src="https://github.com/user-attachments/assets/f3073c57-5eea-4c82-b57c-a262ba1c6f91" />
<img width="1271" height="649" alt="Print 2 Query maior n° corridas bairro" src="https://github.com/user-attachments/assets/00a681e9-b123-44b2-97aa-0dd802a23d06" />
<img width="1275" height="695" alt="Print 3 Query bairros com faturamento acima da média" src="https://github.com/user-attachments/assets/d4ad28ba-8a91-4750-9abc-1664cddb057e" />


---

## 📉 Projeto 2: Engenharia de Custos, Gestão de Ativos & Controladoria

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
<img width="1053" height="659" alt="1º Cenários Analisados" src="https://github.com/user-attachments/assets/8865a6f8-1457-4dfe-8336-ae695fa74670" />
<img width="1271" height="693" alt="2º Comparação financeira" src="https://github.com/user-attachments/assets/42c065c6-3655-4c3b-8794-5f6403046fcc" />
<img width="855" height="669" alt="3º Comparação Operacional" src="https://github.com/user-attachments/assets/6dcd120a-6003-4135-b2b7-a4cba220381a" />
<img width="1277" height="695" alt="4º Depreciacao patrimonial" src="https://github.com/user-attachments/assets/63880585-58c4-401e-8814-2f72693171de" />
<img width="1275" height="699" alt="5º KPI Operacional e Patrimonial" src="https://github.com/user-attachments/assets/d560793e-56ee-407b-80e0-3c183ceb6ac9" />




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

<img width="1280" height="800" alt="1º Kpi_geral" src="https://github.com/user-attachments/assets/7c9073e5-7a27-4741-830b-a2a84ca0424c" />
<img width="1264" height="664" alt="2º faturamento_total_periodo" src="https://github.com/user-attachments/assets/4b82d1fc-4550-4318-a884-c88d99b3bc83" />
<img width="1274" height="600" alt="3º Faturamento_bairro_destino" src="https://github.com/user-attachments/assets/c7d38f92-df3c-4dfc-a2fc-bbe8a19cd44a" />
<img width="1261" height="655" alt="4º Faturamento_periodo_bairro_destino" src="https://github.com/user-attachments/assets/7225dff5-cf1b-4751-a88c-e3b15ff238d8" />
<img width="1257" height="581" alt="1°" src="https://github.com/user-attachments/assets/276417e5-88ad-4f43-af97-f51a6ee0b5af" />
<img width="1251" height="583" alt="2°" src="https://github.com/user-attachments/assets/5a890875-af08-439b-ba12-ea1266bcb663" />
<img width="1255" height="559" alt="3°" src="https://github.com/user-attachments/assets/07f0cd92-2f63-4cec-baa4-b38a731ecd1a" />
<img width="1257" height="601" alt="4°" src="https://github.com/user-attachments/assets/e1b3716d-d886-4808-bc88-897d13402c4c" />
-<img width="1267" height="703" alt="5°" src="https://github.com/user-attachments/assets/fd54855c-d26e-4e36-81cc-82571dfdaaee" />
--<img width="1251" height="565" alt="6°" src="https://github.com/user-attachments/assets/e887b9dc-06e4-4fc9-a50e-3c6795af209f" />


## 🛠️ Tecnologias Utilizadas
*   **Banco de Dados:** SQL (SQLite)
*   **Ferramentas de Suporte:** Microsoft Excel (Validação Cruzada)
*   **Core Competencies:** Controladoria de Custos, Gestão de Ativos, Análise de KPIs, Engenharia de Dados.
