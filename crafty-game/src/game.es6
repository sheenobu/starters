
import Crafty from 'craftyjs';
import {DB32} from './palettes';

class Game {
    constructor() {
        Crafty.init(800,600, document.getElementById('game'));
        Crafty.e('2D, DOM, Color').attr({ x: 0, y: 0, w: 800, h: 600 }).color(DB32[1]);
        Crafty.e('2D, DOM, Color').attr({ x: 40, y: 40, w: 80, h: 60 }).color(DB32[4]);
    }
}

new Game()