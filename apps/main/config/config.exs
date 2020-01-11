use Mix.Config

config :libcluster,
  topologies: [
    client_1: [
      strategy: Cluster.Strategy.Gossip
    ]
  ]
