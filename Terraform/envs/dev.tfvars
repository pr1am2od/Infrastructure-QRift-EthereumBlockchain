# GENERAL
project = "game_oct"
project_longname = "game_oct"
environment = "dev"
region = "eu-central-1"
game_oct_s3 = "game_oct-data"
game_oct_s3_name_cors_origins = ["https://game_oct.quantumrift.services",
                                      "http://localhost",
                                      "https://localhost"]
### OIDC
oidc_provider_arn = "oidc.eks.eu-central-1.amazonaws.com/id/XXXXXXXX"
oidc_federated = "arn:aws:iam::XXXXXXXX:oidc-provider/oidc.eks.eu-central-1.amazonaws.com/id/XXXXXXXX"
