USE [DestinationWarehouse]
GO
/****** Object:  Schema [agg]    Script Date: 2/1/2024 11:04:33 AM ******/
CREATE SCHEMA [agg]
GO
/****** Object:  Schema [int]    Script Date: 2/1/2024 11:04:33 AM ******/
CREATE SCHEMA [int]
GO
/****** Object:  Schema [raw]    Script Date: 2/1/2024 11:04:33 AM ******/
CREATE SCHEMA [raw]
GO
/****** Object:  Table [agg].[FactCO2emission]    Script Date: 2/1/2024 11:04:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [agg].[FactCO2emission](
	[Entity] [nvarchar](50) NOT NULL
      ,[Code] [nvarchar](50) NOT NULL
      ,[Year] [int] NOT NULL
	  ,[Share_of_global_annual_CO_emissions] [decimal](10, 2 ) NOT NULL
	  ,[Annual_CO_emissions_growth] [decimal](10, 2 ) NOT NULL
	  ,[Annual_CO_emissions] [decimal](18, 2) NOT NULL
	  ,[Annual_CO_emissions_per_capita] [decimal](18, 2) NOT NULL
	  ,[Cumulative_CO2_emissions] [int] NOT NULL
	  ,[Share_of_cumulative_co_emissions] [decimal] (10, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [agg].[DimDate]    Script Date: 2/1/2024 11:04:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [agg].[FactPopulation](
	[CountryName] [nvarchar](50) NOT NULL,
	[CountryCode] [nvarchar](50) NOT NULL,
	[Year] [int] NOT NULL,
	[Population] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [agg].[FactClimateChange]    Script Date: 2/1/2024 11:04:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [agg].[FactClimateChange](
	[Entity] [nvarchar](50)
      ,[Date] [nvarchar](50)
      ,[Seasonal_variation] [nvarchar](50)
      ,[Combined_measurements] [nvarchar](50)
      ,[Monthly_averaged] [nvarchar](50)
      ,[Annual_averaged] [nvarchar](50)
      ,[sea_temperature_anomaly] [nvarchar](50)
      ,[Sea_surface_temp_lower_bound] [nvarchar](50)
      ,[Sea_surface_temp_upper_bound] [nvarchar](50)
      ,[Monthly_pH_measurement] [nvarchar](50)
      ,[Annual_average] [nvarchar](50)
      ,[Temperature_anomaly] [nvarchar](50)
      ,[Church_White] [nvarchar](50)
      ,[University_of_Hawaii] [nvarchar](50)
      ,[Average][nvarchar](50)
      ,[arctic_sea_ice_osisaf][nvarchar](50)
      ,[Monthly_averaged2][nvarchar](50)
      ,[Annual_averaged2][nvarchar](50)
      ,[Monthly_averaged3][nvarchar](50)
      ,[Annual_averaged3][nvarchar](50)
      ,[Snow_cover][nvarchar](50)
      ,[Annual_average2][nvarchar](50)
      ,[sea_ice_extent][nvarchar](50)
      ,[ocean_heat_content_2000m][nvarchar](50)
      ,[ocean_heat_content_700m][nvarchar](50)
) ON [PRIMARY]
