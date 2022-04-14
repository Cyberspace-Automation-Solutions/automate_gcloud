#!/bin/bash

#echo "enter project_id"
#echo "enter member_id"
#echo "enter expiry_date"

PROJECT_ID=$1
MEMBER_ID=$2
#EXPIRE_ON=$3


#gcloud projects add-iam-policy-binding peoject_id --member='user:user@x.com' --role='roles/compute.admin'  --condition='expression=request.time < timestamp("2022-04-30T00:00:00Z"),title=expires_end_of_2022,description=Expires at midnight on 2022-04-30'

gcloud projects add-iam-policy-binding $PROJECT_ID --member=user:$MEMBER_ID --role='roles/compute.admin' --condition=None #--condition='expression=request.time < timestamp("${EXPIRE_ON}T00:00:00Z"),title=temp_access,description=Expires at midnight on $EXPIRE_ON'

