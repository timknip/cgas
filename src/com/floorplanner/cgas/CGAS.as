package com.floorplanner.cgas {

	/**
	 * @author timk
	 */
	public class CGAS {
		public static function area2(a:Pointi, b:Pointi, c:Pointi):int {
			return ((c.x - b.x)*(a.y - b.y)) - ((a.x - b.x)*(c.y - b.y));
		}
		
		public static function areaSign(a:Pointi, b:Pointi, c:Pointi):int {
			var area:Number = area2(a, b, c);
			if (area > 0.5) {
				return 1;
			} else if (area < -0.5) {
				return -1;
			} else {
				return 0;
			}
		}
		
		public static function between(a:Pointi, b:Pointi, c:Pointi):Boolean {
    		if (!collinear(a, b, c)) {
      			return  false;
    		}
    		// If ab not vertical, check betweenness on x; else on y.
    		if (a.x != b.x) {
      			return ((a.x <= c.x) && (c.x <= b.x)) || ((a.x >= c.x) && (c.x >= b.x));
    		} else {
      			return ((a.y <= c.y) && (c.y <= b.y)) || ((a.y >= c.y) && (c.y >= b.y));
    		}
		}
		
		public static function collinear(a:Pointi, b:Pointi, c:Pointi):Boolean {
			return (areaSign(a, b, c) == 0);
		}
		
		public static function intersect(a:Pointi, b:Pointi, c:Pointi, d:Pointi):Boolean {
			if (intersectProp(a, b, c, d)) {
      			return  true;
			} else if (between(a, b, c) || between(a, b, d) || 
					   between(c, d, a) || between(c, d, b)) {
      			return  true;
			} else {
				return  false;
			}
		}
		
		public static function intersectProp(a:Pointi, b:Pointi, c:Pointi, d:Pointi):Boolean {
			// Eliminate improper cases.
    		if (collinear(a,b,c) || collinear(a,b,d) ||
				collinear(c,d,a) || collinear(c,d,b)) {
      			return false;
			}
    		return (xor(left(a,b,c), left(a,b,d)) && 
    				xor(left(c,d,a), left(c,d,b)));
		}
		
		public static function left(a:Pointi, b:Pointi, c:Pointi):Boolean {
			return (areaSign(a, b, c) > 0);
		}
		
		public static function leftOn(a:Pointi, b:Pointi, c:Pointi):Boolean {
			return (areaSign(a, b, c) >= 0);
		}
		
		public static function xor(a:Boolean, b:Boolean):Boolean {
			var ia:int = a ? 0 : 1;
			var ib:int = b ? 0 : 1;
			return ((ia ^ ib) != 0 ? true : false);
		}
	}
}
