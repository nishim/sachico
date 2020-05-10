CREATE TABLE queries (
    report_date DATE NOT NULL,
    query VARCHAR(400) NOT NULL,
    clicks INT NOT NULL,
    impressions INT NOT NULL,
    ctr DECIMAL(4, 3) NOT NULL,
    position DECIMAL(6, 3) NOT NULL,
    PRIMARY KEY (report_date, query),
    INDEX idx_queries_query (query)
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
