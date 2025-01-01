extends EffectBase
class_name EffectDamageCardDeck
## Deals damage based on the amount of cards in the player's deck

## @Override [br]
## Refer to [EffectBase]
func apply_effect(caster: Entity, target: Entity, _value: int) -> void:
	#CardManager.card_container.draw_pile.size()
	# calculate modified damage given caster and target stats
	var damage: int = EntityStats.get_value_modified_by_stats(GlobalEnums.PossibleModifierNames.DAMAGE, caster, target, CardManager.card_container.draw_pile.size())
	
	target.get_health_component().take_damage_block_and_health(damage, caster)
