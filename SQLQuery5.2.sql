DECLARE @String VARCHAR(250)= '     Application     ';
SELECT @String as OriginalString, 
       RTRIM(@String) AS StringAfterTRIM, 
       DATALENGTH(@String) AS 'DataLength String (Bytes)', 
       DATALENGTH(RTRIM(@String)) AS 'DataLength String (Bytes) After TRIM';