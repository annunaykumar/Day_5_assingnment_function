IF OBJECT_ID('dbo.fn_RemoveNumbers') IS NOT NULL BEGIN
 DROP FUNCTION dbo.fn_RemoveNumbers;
END;
GO
CREATE FUNCTION dbo.fn_RemoveNumbers (@Expression VARCHAR(250))
RETURNS VARCHAR(250) AS BEGIN
 DECLARE @NewExpression VARCHAR(250) = '';
 DECLARE @Count INT = 1;
 DECLARE @Char CHAR(1);
 WHILE @Count <= LEN(@Expression) BEGIN
 SET @Char = SUBSTRING(@Expression,@Count,1);
 IF ISNUMERIC(@Char) = 0 BEGIN
 SET @NewExpression += @Char;
 END
 SET @Count += 1;
 END;
RETURN @NewExpression;
END;
GO
SELECT dbo.fn_RemoveNumbers('abc 123 baby you and me');