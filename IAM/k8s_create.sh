#!/bin/bash


## Add the project-id and the user's email-id 
## Edit the time/title/description in the command

PROJECT_ID=
MEMBER_ID=

gcloud projects add-iam-policy-binding dm-pelican --member='user:user@example.com' --role='roles/container.admin'  --condition='expression=request.time < timestamp("2022-04-30T00:00:00Z"),title=expires_end_of_2022,description=Expires at midnight on 2022-04-30'

gcloud projects add-iam-policy-binding dm-pelican --member='user:user@example.com' --role='iam.serviceAccountUser'  --condition='expression=request.time < timestamp("2022-04-30T00:00:00Z"),title=expires_end_of_2022,description=Expires at midnight on 2022-04-30'

gcloud projects add-iam-policy-binding dm-pelican --member='user:user@example.com' --role='roles/monitoring.viewer'  --condition='expression=request.time < timestamp("2022-04-30T00:00:00Z"),title=expires_end_of_2022,description=Expires at midnight on 2022-04-30'

