-----------------------------------
-- Area: Maze of Shakhrami
--  Mob: Goblin Leecher
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 695, 1, dsp.regime.type.GROUNDS)
end