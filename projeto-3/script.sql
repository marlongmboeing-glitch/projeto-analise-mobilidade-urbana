-- ====================================================================
-- PROJETO 3: INTELIGÊNCIA DE MERCADO & AUDITORIA DE DADOS
-- Objetivo: Cruzamento dimensional entre turnos, horários e regiões
-- ====================================================================

-- Consulta 1: Análise Macro de Performance por Turno
SELECT 
    periodo,
    COUNT(*) AS qtd_corridas,
    SUM(valor_corrida) AS faturamento,
    ROUND(AVG(valor_corrida), 2) AS ticket_medio
FROM Projeto_3_atualizado
GROUP BY periodo
ORDER BY faturamento DESC;

-- Consulta 2: Análise Granular por Período e Bairro de Destino
SELECT 
    periodo,
    bairro_destino,
    COUNT(*) AS qtd_corridas,
    ROUND(SUM(REPLACE(valor_corrida, ',', '')), 2) AS faturamento,
    ROUND(AVG(REPLACE(valor_corrida, ',', '')), 2) AS ticket_medio
FROM Projeto_3_atualizado
GROUP BY periodo, bairro_destino
ORDER BY periodo, faturamento DESC;

-- Consulta 3: Ticket Médio por Regional de Origem (Identificação de Erros #N/D)
SELECT 
    regional_origem,
    AVG(valor_corrida) AS ticket_medio
FROM consultas_projeto3_parte2SQLITE
GROUP BY regional_origem
ORDER BY ticket_medio DESC;
