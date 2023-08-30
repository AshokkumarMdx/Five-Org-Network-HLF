Steps:

1. Clone the repo git clone https://github.com/AshokkumarMdx/Five-Org-Network-HLF.git
2. Run Certificates Authority Services for all Orgs
   From home directory to
3. cd artifacts/channel/create-certifactes
4. Run the Docker-Images
--> docker-compose up -d
--> ./create-certificate.sh
5.create-artifacts for the organizations which is channel directory
run the below command
---> cd ..(Move to channel directory)
---> ./create-artifacts.sh
6.Run the Docker Images In the artifacts directory
cd .. (Move to artifacts direcory)
--> docker-compose up -d
7.Now create the channel
cd ..(Move to main directory)
--> ./createChannel.sh
Deploy the chaincode
--->deployChaincode.sh










4. Create Cryptomaterials for all organizations
5. Create Channel Artifacts using Org MSP
6. Create Channel and join peers
7. Deploy Chaincode
   1. Install All dependency
   2. Package Chaincode
   3. Install Chaincode on all Endorsing Peer
   4. Approve Chaincode as per Lifecycle Endorsment Policy
   5. Commit Chaincode Defination
8. Create Connection Profiles
9. Start API Server
10. Register User using API
11. Invoke Chaincode Transaction
12. Query Chaincode Transaction
