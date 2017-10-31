package;

import flixel.util.FlxColor;

class GameMap
{
    public var tiles:Array<GameTile>;

    public function new(tiles:Array<Int>)
    {
        this.tiles = new Array<GameTile>();

        var mapSize = Std.int(Math.sqrt(tiles.length));

        // tileWidth is assumed to be a multiple of 2
        var horizontalOffset:Int = Std.int(GameParameters.TileWidth/2);

        for(i in 0 ... tiles.length )
        {
            // var mapPosX:Int = i % mapSize;
            // var mapPosY:Int = Math.floor(i / mapSize) ;
            // var worldPosX:Int = mapPosX * GameParameters.TileWidth;
            // var worldPosY:Int = Std.int(mapPosY * GameParameters.TileHeight / 2);
            
            var mapPosition = new MapPosition(i % mapSize, Std.int(i / mapSize));

            // Add an tileWidth/2 offset for odd lines
            // if(isOddRow(mapPosY, )){
            //     worldPosX += horizontalOffset;
            // }

            this.tiles.push(
                new GameTile(
                    mapPosition,
                    (tiles[i] == 0 ? FlxColor.WHITE : FlxColor.RED)));
        }
    }

    
}