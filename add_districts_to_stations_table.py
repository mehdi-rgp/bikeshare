import geopandas as gpd
import pandas as pd
import fiona

# Load the shapefile
districts_gdf = gpd.read_file('geo_export_aba987cb-0e61-47a7-ae64-46c5206359c6.shp')

# Load the CSV file containing locations
locations_df = pd.read_csv('stationsv2.csv')

from shapely.geometry import Point

# Convert the DataFrame to a GeoDataFrame
locations_gdf = gpd.GeoDataFrame(
    locations_df, 
    geometry=[Point(xy) for xy in zip(locations_df.lng, locations_df.lat)],
    crs="EPSG:4326" 
)

# Spatial join locations with districts
locations_gdf = locations_gdf.to_crs(districts_gdf.crs)


# Calculate the centroid for each district
districts_gdf['centroid'] = districts_gdf.geometry.centroid

# Convert centroids to EPSG:4326
districts_gdf['centroid'] = districts_gdf.centroid.to_crs("EPSG:4326")

# extract longitude and latitude of the centroids of districts
districts_gdf['longitude'] = districts_gdf.centroid.x
districts_gdf['latitude'] = districts_gdf.centroid.y



# perform the spatial join
locations_in_districts = gpd.sjoin(locations_gdf, districts_gdf, how="inner", predicate='intersects')

# The result is a new GeoDataFrame where each location is matched with a district

# Preview the results
print(locations_in_districts.head())

# export the results back to a CSV file
locations_in_districts.drop('geometry', axis=1).to_csv('stations_tbl.csv', index=False)

