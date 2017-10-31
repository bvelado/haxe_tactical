package;

class WorldPosition {

    public var X:Int;
    public var Y:Int;

    public function new(x:Int, y:Int){
        X = x;
        Y = y;
    }

    public function ToMapPosition():MapPosition {
        var mapPosX:Int = Math.round(X / GameParameters.TileWidth);
        var mapPosY:Int = Math.round(Y / GameParameters.TileHeight);

        return new MapPosition(mapPosX, mapPosY);
    }

}