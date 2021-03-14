[![cardano-py Discord](https://img.shields.io/badge/discord-join%20chat-blue.svg)](https://discord.gg/FyDz4Xrt4x)

<img src="images/CardanoPyBlueSmall.png" alt="CardanoPy" width="150" height="150">

# Overview
> NOTE: Please visit the Cardano Idealscale link and provide this project Kudos and/or provide feedback!

[CardanoPy](https://github.com/floydcraft/cardano-py) is a simple and easy to use method to operate and extend Cardano Nodes (Relay and Producer) and DB Sync Nodes using a python CLI combined with docker. This project is a *Fund4* proposal for [Project Catalyst @ Idealscale](https://cardano.ideascale.com/a/dtd/CardanoPy-5-min-extensible-node/341045-48088).

# CardanoPy Examples
- [Basic Example](basic-example)

# Prerequisites
- python3 is installed
- docker is installed and running

# Quickstart - see [Basic Example](basic-example)
## Use predefined docker image cardano-py-slim
> See [Basic Example](basic-example) for custom docker image example.

- Install or upgrade cardanopy:

  `pip3 install --upgrade cardanopy`
- Create the basic config for testnet:

  `cardanopy create --template basic --network testnet files/app`

  ```bash
  Created cardano defaults from 'basic' template for network 'testnet': 'files/app'
  ```
- Start/run the node using that config:

  `cardanopy docker run files/app`

  ```bash
  7f1b51871e4f0be32e81c51d7e471a26ef282eb34bdb96295376421a14e6ad99
  root@7f1b51871e4f:/#
  ```
- Once your logged into the node, run:

  `cardanopy cli query tip` as often as you like.

  > NOTE: might take a minute before the `files/app/node.socket` file to be created while cardano node is booting. It will take longer the larger the database `files/app/db`.

  ```json
  {
      "blockNo": 351325,
      "headerHash": "3649fcfed5be50be78036c900e98057917e89d8faa54b64499af0779e4232040",
      "slotNo": 352369
  }
  ```

## Cleanup Examples
> NOTE: this is for the Quickstart basic examples.
- Stop the Cardano node docker container:

  `cardanopy docker stop files/app/`
- Remove the files / cache

  `rm -rf files/`
