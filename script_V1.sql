USE [epolis2]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mbroker_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mbroker_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mbroker WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mjenisasuransi_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mjenisasuransi_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mjenisasuransi WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mokupasi_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mokupasi WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mperluasan_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mperluasan_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mperluasan WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mpertanggungan_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mpertanggungan_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mpertanggungan WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mperusahaanasuransi_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Mperusahaanasuransi_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Mperusahaanasuransi WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Msysparam_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Msysparam_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Msysparam WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Musergroup_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Musergroup_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Musergroup WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_PageFilter]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_PageFilter] 
@Table varchar(500) = 'Mokupasi',
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0',
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM ' + @Table + ' WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tkontrakasuransi_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tkontrakasuransi_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tkontrakasuransi WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tnasabah_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tnasabah_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tnasabah WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tpenutupan_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tpenutupan_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tpenutupan WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tpenutupandetil_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tpenutupandetil_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tpenutupandetil WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tperluasan_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tperluasan_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tperluasan WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Tpertanggungan_View]    Script Date: 19/10/2020 15:39:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[sp_Tpertanggungan_View] 
@Column varchar(500) = '*',
@Filter varchar(500) = '0=0',
@Orderby varchar(100) = 'ID',
@Firstrow varchar(100) = '0', 
@Secondrow varchar(100) = '10'
AS
BEGIN
	DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT ' + @Column + ' FROM Tpertanggungan WHERE ' + @Filter +' ORDER BY ' + @Orderby 
				+ ' OFFSET ' + @Firstrow + ' ROWS FETCH NEXT ' + @Secondrow + 'ROWS ONLY'
	EXEC sys.sp_executesql @SQL
END
GO



USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
ALTER PROCEDURE [dbo].[sp_Mbroker_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM MBROKER WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Mokupasi_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Mokupasi WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Mperusahaanasuransi_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Mperusahaanasuransi WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Msysparam_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Msysparam WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Mjenisasuransi_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Mjenisasuransi WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Mperluasan_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Mperluasan WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END

USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tkontrakasuransi_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tkontrakasuransi WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END


USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tpenutupan_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tpenutupan WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END


USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tpenutupandetil_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tpenutupandetil WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END


USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tperluasan_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tperluasan WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END


USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tpertanggungan_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tpertanggungan WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END


USE [Microservice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Mokupasi_Count]    Script Date: 10/20/2020 12:08:10 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[sp_Tnasabah_Count]   
  @Filter varchar(500) = '0=0',
  @rowcount1 INT OUTPUT
AS BEGIN  
  SET @rowcount1 = @@ROWCOUNT
  DECLARE @SQL NVARCHAR(MAX)
	SELECT @SQL = 'SELECT COUNT(ID) FROM Tnasabah WHERE ' + @Filter 
	EXEC sys.sp_executesql @SQL 
END