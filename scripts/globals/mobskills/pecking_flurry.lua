require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0
end

function onMobWeaponSkill(target, mob, skill)
    local numhits = 4
    local accmod = 1
    local dmgmod = 0.9
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,dsp.attackType.PHYSICAL,dsp.damageType.SLASHING,info.hitslanded)
    target:takeDamage(dmg, mob, dsp.attackType.PHYSICAL, dsp.damageType.SLASHING)
    return dmg
end
