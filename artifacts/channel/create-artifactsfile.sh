# Delete existing artifacts
rm genesis.block grain-commercial-channel.tx
#rm -rf ../../channel-artifacts/*

#Generate Crypto artifactes for organizations
cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/



# Private channel
GCC_CHANNEL="gcc-channel"


# channel name defaults to "grain-commercial-channel"
CHANNEL_NAME="grain-commercial-channel"

echo $CHANNEL_NAME

# Generate System Genesis block
# configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block
configtxgen -profile OrdererGenesis -configPath . -channelID $GCC_CHANNEL  -outputBlock ./genesis.block

# Generate channel configuration block
configtxgen -profile PrivateChannel -configPath . -outputCreateChannelTx ./$CHANNEL_NAME.tx -channelID $CHANNEL_NAME

echo "#######    Generating anchor peer update for Org1MSP  ##########"
configtxgen -profile PrivateChannel -configPath . -outputAnchorPeersUpdate ./Org1MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org1MSP

echo "#######    Generating anchor peer update for Org2MSP  ##########"
configtxgen -profile PrivateChannel -configPath . -outputAnchorPeersUpdate ./Org2MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org2MSP

# echo "#######    Generating anchor peer update for Org3MSP  ##########"
# configtxgen -profile PrivateChannel -configPath . -outputAnchorPeersUpdate ./Org3MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org3MSP

# echo "#######    Generating anchor peer update for Org4MSP  ##########"
# configtxgen -profile PrivateChannel -configPath . -outputAnchorPeersUpdate ./Org4MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org4MSP

# echo "#######    Generating anchor peer update for Org5MSP  ##########"
# configtxgen -profile PrivateChannel -configPath . -outputAnchorPeersUpdate ./Org5MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org5MSP
