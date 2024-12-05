curl --request POST \
  --url https://api.psma.com.au/v1/batches/batch \
  --header 'Accept: application/json' \
  --header 'Authorization: your-authorization-key' \
  --header 'Content-Type: application/json' \
  --data '{
  "type": "reverseGeocoder",
  "parameters": {
    "dataset": ["gnaf"],
    "additionalProperties": [
      "parcelBundle", 
      "propertyBundle"
    ],
    "minGeoFeatureLevel": [
      "address"
    ],
    "input": {
      "file": "https://my.s3.bucket/input.csv",
      "format": [
        {
          "name": "latitude",
          "apiParameter": "latitude"
        },
        {
          "name": "longitude",
          "apiParameter": "longitude"
        }
      ]
    },
    "output": {
      "file": "https://my.s3.bucket/output.csv",
      "format": [
        {
          "name": "geometry",
          "source": "$.features.0.geometry"
        }
      ]
    }
  }
}'