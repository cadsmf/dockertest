FROM heroiclabs/nakama:3.3.0
COPY local.yml /nakama/data
COPY modules/main.lua /nakama/data/modules