package;

import flixel.util.FlxColor;
import flixel.FlxSprite;

 class GameTile extends FlxSprite
 {
     public var MapPosition:MapPosition;

     public function new(MapPosition:MapPosition, ?Color:FlxColor)
     {
        this.MapPosition = MapPosition;
        var worldPosition = MapPosition.ToWorldPosition();

        super(worldPosition.X, worldPosition.Y);

        color = Color;
        loadGraphic(AssetPaths.tile_blank__png, false, 
            GameParameters.TileWidth,
            GameParameters.TileHeight);

        //  makeGraphic(
        //      GameParameters.tileWidth,
        //      GameParameters.tileHeight, 
        //      Color != null ? Color : FlxColor.BLUE);
     }
 }