extends EntityComponent
class_name StatComponent
## Holds a reference to entity stats.
##
## TODO: this doesn't do a whole lot right now. This may be helpful in the future if we want to
## have different stats based on the Entity type.

## The stats of the entity.
var stats: EntityStats = EntityStats.new():
	set(value):
		stats = value
	get:
		return stats
