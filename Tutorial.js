//RUN: 
// tsc Tutorial.ts && node Tutorial.js
//ANOTATIONS
// let a: number;
// let b: boolean;
// let c: string;
// let d: any;
// let e: number[] = [1, 2, 3];
// let f: any[] = [1, true, 'a', false]
// const ColorRed = 0;
// const ColorGreen = 1;
// const ColorBlue = 3;
// enum Color {Red = 0, Green = 1, Blue = 2}
// let backgroundColor = Color.Red;
// //ASSERTIONS
// let message;
// message = 'abc';
// let endsWithC = (<string>message).endsWith('c');
// let anotherWatEndsWithC = (message as string).endsWith('c');
// //FUNCTIONS
// let doLog = (message) => {console.log(message)}
//Interfaces
// interface Point{
//     x: number,
//     y: number
// }
// let drawPoint = (point: Point) =>{
//     //...
// }
// drawPoint({
//     x: 1,
//     y: 2
// })
//CLASSES
var Point = /** @class */ (function () {
    function Point() {
    }
    Point.prototype.draw = function () {
        console.log('X: ' + this.x, +'Y: ' + this.y);
    };
    Point.prototype.getDistance = function (another) {
        //...
    };
    return Point;
}());
var point = new Point();
point.x = 1;
point.y = 2;
point.draw();
