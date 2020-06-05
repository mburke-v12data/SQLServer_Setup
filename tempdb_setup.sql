--ALTER DATABASE SIGNALS MODIFY FILE (name = Signals, FILENAME= 'H:\SQLData\Signals.mdf')

--ALTER DATABASE SIGNALS MODIFY FILE (name = Signals_log, FILENAME= 'H:\SQLData\Signals_log.ldf')

/* Re-sizing TempDB to 50 GB */
 
USE [master]; 
GO 
alter database tempdb modify file (name='tempdev', FILENAME = N'D:\SQLData\tempdev2.ndf' size = 8GB, FILEGROWTH = 256MB);
alter database tempdb modify file (name='tempdev2', FILENAME = N'D:\SQLData\tempdev2.ndf' size = 8GB, FILEGROWTH = 256MB);
GO
 
/* Adding three additional files */
 
USE [master];
GO
--ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev2', FILENAME = N'D:\SQLData\tempdev2.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev3', FILENAME = N'D:\SQLData\tempdev3.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev4', FILENAME = N'D:\SQLData\tempdev4.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev5', FILENAME = N'D:\SQLData\tempdev5.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev6', FILENAME = N'D:\SQLData\tempdev6.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev7', FILENAME = N'D:\SQLData\tempdev7.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
ALTER DATABASE [tempdb] ADD FILE (NAME = N'tempdev8', FILENAME = N'D:\SQLData\tempdev8.ndf' , SIZE = 8GB , FILEGROWTH = 256MB);
GO