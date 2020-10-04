class ResultModel {
  double areaFloor;
  int piecesByWidth;
  int piecesByLength;
  double precoWithoutFooter;
  double precoWithFooter;

  ResultModel({
    this.areaFloor,
    this.piecesByWidth,
    this.piecesByLength,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFloor => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
