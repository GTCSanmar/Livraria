SELECT 
    email,
    SUBSTR(email, 1, INSTR(email, '@') - 1) AS login
FROM 
    tabela_emails;
