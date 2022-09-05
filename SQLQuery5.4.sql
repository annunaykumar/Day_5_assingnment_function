IF OBJECT_ID('dbo.fn_FormatPhone') IS NOT NULL BEGIN
 DROP FUNCTION dbo.fn_FormatPhone;
END;
GO
CREATE FUNCTION dbo.fn_FormatPhone (@Phone VARCHAR(10))
RETURNS VARCHAR(14) AS BEGIN
 DECLARE @NewPhone VARCHAR(14);
 SET @NewPhone = '(' + SUBSTRING(@Phone,1,3) + ') ';
 SET @NewPhone = @NewPhone + SUBSTRING(@Phone,4,3) + '-';
 SET @NewPhone = @NewPhone + SUBSTRING(@Phone,7,4)
 RETURN @NewPhone;
END;
GO
SELECT dbo.fn_FormatPhone('5555551234');