CREATE OR ALTER PROCEDURE testdb.load_testdb AS
BEGIN
	DECLARE @start_time DATETIME , @end_time DATETIME, @batchloading_start_time DATETIME, @batchloading_end_time DATETIME; --Variable and Data-Type

	BEGIN TRY
		SET @batchloading_start_time = GETDATE();
		PRINT '===================================================================';
		PRINT '--START LOADING TIME : ' + CONVERT(NVARCHAR, @batchloading_start_time, 120);
		PRINT '===================================================================';
		PRINT 'Loading Movies';

		SET @start_time = GETDATE();
		PRINT '>>TRUNCATING THE TABLE testdb.aMovies'
		TRUNCATE TABLE testdb.aMovies;
	 
		PRINT '>>INSERTING DATA INTO testdb.aMovies'
		BULK INSERT testdb.aMovies
		FROM 'C:\data\movies.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' Seconds';

		PRINT 'Loading YouTubeTrendingVideos';

		SET @start_time = GETDATE();
		PRINT '>>TRUNCATING THE TABLE testdb.aYouTubeTrendingVideos'
		TRUNCATE TABLE testdb.aYouTubeTrendingVideos;

		PRINT 'INSERTING DATA INTO testdb.aYouTubeTrendingVideos'
		BULK INSERT testdb.aYouTubeTrendingVideos
		FROM 'C:\data\USvideos.csv'
		WITH (
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = GETDATE();
		PRINT '>> Loading Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' Seconds';

		SET @batchloading_end_time = GETDATE();
		PRINT '===================================================';
		PRINT '--TOTAL LOADING TIME : ' + CAST(DATEDIFF(second,@batchloading_start_time, @batchloading_end_time) AS NVARCHAR) + ' Seconds';
		PRINT '===================================================';

	END TRY
	BEGIN CATCH
		PRINT '==================================================='
		PRINT 'ERROR MESSAGE: ' + ERROR_MESSAGE();
		PRINT 'ERROR NUMBER: ' + CAST(ERROR_NUMBER() AS NVARCHAR);
		PRINT '==================================================='
	END CATCH
END
