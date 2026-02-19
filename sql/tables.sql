IF OBJECT_ID ('aMovies', 'U') IS NOT NULL
	DROP TABLE aMovies;

CREATE TABLE aMovies (
    budget BIGINT,
    genres NVARCHAR(MAX),
    homepage NVARCHAR(500),
    id INT PRIMARY KEY,
    keywords NVARCHAR(MAX),
    original_language CHAR(2),
    original_title NVARCHAR(500),
    overview NVARCHAR(MAX),
    popularity DECIMAL(10,6),
    production_companies NVARCHAR(MAX),
    production_countries NVARCHAR(MAX),
    release_date DATE,
    revenue BIGINT,
    runtime INT,
    spoken_languages NVARCHAR(MAX),
    status NVARCHAR(50),
    tagline NVARCHAR(500),
    title NVARCHAR(500),
    vote_average DECIMAL(3,1),
    vote_count INT
);

IF OBJECT_ID ('aYouTubeTrendingVideos','U') IS NOT NULL
	DROP TABLE aYouTubeTrendingVideos;

CREATE TABLE aYouTubeTrendingVideos (
    video_id NVARCHAR(50) PRIMARY KEY,
    trending_date VARCHAR(10), -- Format: DD.DD.YY (e.g., 17.14.11)
    title NVARCHAR(500),
    channel_title NVARCHAR(200),
    category_id INT,
    publish_time DATETIME2,
    tags NVARCHAR(MAX),
    views INT,
    likes INT,
    dislikes INT,
    comment_count INT,
    thumbnail_link NVARCHAR(500),
    comments_disabled BIT,
    ratings_disabled BIT,
    video_error_or_removed BIT
);
