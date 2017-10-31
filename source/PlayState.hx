package;

import flixel.FlxState;

class PlayState extends FlxState
{
	var mapData:Array<Int>;
	var map:GameMap;
	var characters:Array<GameCharacter>;

	override public function create():Void
	{
		super.create();

		mapData = [
			1, 1, 1, 1, 1,
			1, 0, 0, 0, 0,
			1, 0, 0, 0, 0,
			1, 0, 0, 0, 1,
			1, 1, 1, 1, 1,	
		];
		map = new GameMap(mapData);
		for(i in 0 ... map.tiles.length){
			add(map.tiles[i]);
		}

		characters = [
			new GameCharacter(new MapPosition(1,2)),
			new GameCharacter(new MapPosition(3,1)),
			new GameCharacter(new MapPosition(4,4))
		];

		for(i in 0 ... characters.length) {
			add(characters[i]);
		}
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
