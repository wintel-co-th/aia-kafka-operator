#!/bin/sh
keyvault="kv-th-sec-d-coredata-coast-dpcdckkn01"
vault="kv-th01seaddlp01share01"
coastsecret=$(az keyvault secret show --name ${keyvault} --vault-name ${vault}  --query "value")
export coastpwd=$coastsecret

kubectl apply  -n kafka -f  coast-connector.yaml
