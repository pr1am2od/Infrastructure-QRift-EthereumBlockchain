# GENERAL
project = "game_oct"
project_longname = "connected_truck"
environment = "prod"
region = "eu-central-1"
game_oct_s3_name_trip_data= "game_oct-trip-data"
game_oct_s3_name_trip_data_cors_origins = ["https://driver.game_oct.quantumrift.xyz",
                                      "https://game_oct.quantumrift.xyz"]

### OIDC
oidc_provider_arn = "oidc.eks.eu-central-1.amazonaws.com/id/8EEE1BCA24363263265362572"
oidc_federated = "arn:aws:iam::43645645645685:oidc-provider/oidc.eks.eu-central-1.amazonaws.com/id/856456461E750C94209F4D472"
