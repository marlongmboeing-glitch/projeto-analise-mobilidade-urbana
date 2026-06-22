-- ====================================================================
-- PROJETO 1: ENGENHARIA DE DADOS & INTELIGÊNCIA DE MERCADO
-- Objetivo: Identificar polos de eficiência e volumetria de faturamento
-- ====================================================================

-- Consulta 1: Análise de Faturamento Bruto por Bairro de Origem
SELECT 
    c3 AS bairro_origem,
    SUM(CAST(REPLACE(c5, ',', '.') AS FLOAT)) AS faturamento
FROM SQLCSVAvaliado
WHERE c3 != 'bairro_origem' -- Data Cleaning: Remoção de cabeçalhos repetidos
GROUP BY c3
ORDER BY faturamento DESC;

-- Consulta 2: Volumetria e Densidade de Demandas
SELECT 
    c3 AS bairro_origem,
    COUNT(*) AS total_corridas
FROM SQLCSVAvaliado
WHERE c3 != 'bairro_origem'
GROUP BY c3
ORDER BY total_corridas DESC;

-- Consulta 3: Filtro Analítico de Alta Performance (Subquery + HAVING)
SELECT 
    c3 AS bairro_origem,
    SUM(CAST(REPLACE(c5, ',', '.') AS FLOAT)) AS faturamento
FROM SQLCSVAvaliado
WHERE c3 != 'bairro_origem'
GROUP BY c3
HAVING faturamento > (
    SELECT AVG(faturamento_bairro)
    FROM (
        SELECT SUM(CAST(REPLACE(c5, ',', '.') AS FLOAT)) AS faturamento_bairro
        FROM SQLCSVAvaliado
        WHERE c3 != 'bairro_origem'
        GROUP BY c3
    )
)
ORDER BY faturamento DESC;
