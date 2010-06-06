package com.floorplanner.cgas {

	/**
	 * @author timk
	 */
	public class Face {
		public var next:Face;
		public var prev:Face;
		public var edge:Vector.<Edge>;
		public var vertex:Vector.<Vertex>;
		
		public function Face() {
			edge = new Vector.<Edge>(3, true);
			vertex = new Vector.<Vertex>(3, true);
		}
		
		/**
		 * Computes the z-coordinate of the vector normal to the face.
		 */
		public function get normz():Number {
			var a:Vertex = vertex[0];
			var b:Vertex = vertex[1];
			var c:Vertex = vertex[2];
			return (b.v.x-a.v.x)*(c.v.y-a.v.y)-(b.v.y-a.v.y)*(c.v.x-a.v.x);
		}
	}
}
