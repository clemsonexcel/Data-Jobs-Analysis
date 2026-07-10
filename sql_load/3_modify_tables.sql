/* 
NOTE: If you get "permission denied" when running \copy commands below,
run them through pgAdmin's PSQL Tool instead of a plain SQL editor:
1. In pgAdmin, right-click the sql_job projct database → PSQL Tool
2. Get each CSV's absolute file path (VS Code: right-click file → Copy Path)
3. Run the \copy commands below with the correct paths inserted
*/

COPY company_dim
FROM '[file_path]' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY skills_dim
FROM '[file_path]' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY job_postings_fact
FROM '[file_path]' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
COPY skills_job_dim
FROM '[file_path]' WITH (
        FORMAT csv,
        HEADER true,
        DELIMITER ',',
        ENCODING 'UTF8'
    );
