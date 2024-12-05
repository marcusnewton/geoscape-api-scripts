POST https://api.psma.com.au/v1/batches/batch
Accept: application/json
Authorization: your-authorization-key
Content-Type: application/json
{
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
      "file": "https://my.s3.bucket/output.csv"
      "format": [
        {
          "name": "geometry",
          "source": "$.features.0.geometry"
        }
      ]
    }
  }
}
