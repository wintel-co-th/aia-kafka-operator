#!/bin/sh

# Keyvault
vault="kv-th01seaddlp01share01"

#-----------------------------------------COAST--------------------------------------------------------
## COAST
# Secret keys
coast_keyvault="kv-th-sec-d-coredata-coast-dpcdckkn01"

# Get secret value
coastsecret=$(az keyvault secret show --name ${coast_keyvault} --vault-name ${vault}  --query "value")

# Export parameter values
export coastpwd=$coastsecret

#-----------------------------------------CMIC--------------------------------------------------------
## CMIC
# Secret keys
cmic_keyvault="kv-th-sec-d-coredata-cmic-dpcdckkn01-CDC"

# Get secret value
cmicsecret=$(az keyvault secret show --name ${cmic_keyvault} --vault-name ${vault}  --query "value")

# Export parameter values
export cmicpwd=$cmicsecret

#-----------------------------------------CMAC--------------------------------------------------------
## CMIC
# Secret keys
cmac_keyvault="kv-th-sec-d-coredata-cmac-dpcdckkn01-cdc"

# Get secret value
cmacsecret=$(az keyvault secret show --name ${cmac_keyvault} --vault-name ${vault}  --query "value")

# Export parameter values
export cmacpwd=$cmacsecret

#-----------------------------------------END--------------------------------------------------------
