package;

class MapPosition {

    public var X:Int;
    public var Y:Int;

    public function new(x:Int, y:Int){
        X = x;
        Y = y;
    }

    public function ToWorldPosition():WorldPosition {
        var worldPosX:Int = Math.round(X * GameParameters.TileWidth);
        var worldPosY:Int = Math.round(Y * GameParameters.TileHeight / 2);

        if(isOddRow()){
            worldPosX += Std.int(GameParameters.TileWidth/2);
        }

        return new WorldPosition(worldPosX, worldPosY);
    }

    function isOddRow():Bool{
        return Y%2>0;
    }

}