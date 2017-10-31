package;

 import flixel.FlxSprite;
 import flixel.system.FlxAssets.FlxGraphicAsset;

 class GameCharacter extends FlxSprite
 {
    public var MapPosition:MapPosition;

     public function new(MapPosition:MapPosition)
     {
        this.MapPosition = MapPosition;
        var worldPos = MapPosition.ToWorldPosition();

        super(worldPos.X, worldPos.Y - GameParameters.TileHeight);
        
        loadGraphic(
            AssetPaths.character_placeholder__png, false,
            GameParameters.TileWidth, GameParameters.TileHeight * 2);
     }
 }