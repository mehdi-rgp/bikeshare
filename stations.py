import geopandas as gpd
import pandas as pd

import fiona

# Enable SHX restoration
# with fiona.Env(SHAPE_RESTORE_SHX='YES'):
#    districts_gdf = gpd.read_file('geo_export_aba987cb-0e61-47a7-ae64-46c5206359c6.shp')


# Load the shapefile
districts_gdf = gpd.read_file('geo_export_aba987cb-0e61-47a7-ae64-46c5206359c6.shp')

# Load the CSV file containing locations
locations_df = pd.read_csv('stationsv2.csv')

from shapely.geometry import Point

# Convert the DataFrame to a GeoDataFrame
locations_gdf = gpd.GeoDataFrame(
    locations_df, 
    geometry=[Point(xy) for xy in zip(locations_df.lng, locations_df.lat)],
    crs="EPSG:4326"  # Assuming your lat/lon is in WGS84
)

# Spatial join locations with districts using the 'predicate' parameter
# Ensure the locations GeoDataFrame matches the CRS of the districts GeoDataFrame
locations_gdf = locations_gdf.to_crs(districts_gdf.crs)


# Calculate the centroid for each district
districts_gdf['centroid'] = districts_gdf.geometry.centroid

# Extract longitude and latitude from the centroid geometry
districts_gdf['longitude'] = districts_gdf.centroid.x
districts_gdf['latitude'] = districts_gdf.centroid.y

# Convert centroids to EPSG:4326 if necessary
districts_gdf['centroid'] = districts_gdf.centroid.to_crs("EPSG:4326")

# Now, extract longitude and latitude
districts_gdf['longitude'] = districts_gdf.centroid.x
districts_gdf['latitude'] = districts_gdf.centroid.y


# Optionally, you may want to drop the 'centroid' column if it's no longer needed
# districts_gdf = districts_gdf.drop('centroid', axis=1)

# Now, your districts_gdf includes 'longitude' and 'latitude' columns for the centroid of each district


# Now perform the spatial join
locations_in_districts = gpd.sjoin(locations_gdf, districts_gdf, how="inner", predicate='intersects')

# The result is a new GeoDataFrame where each location is matched with a district

# Preview the results
print(locations_in_districts.head())

# Optionally, export the results back to a CSV file
locations_in_districts.drop('geometry', axis=1).to_csv('stations_tbl.csv', index=False)

