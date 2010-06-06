package com.floorplanner.cgas {

	/**
	 * @author timk
	 */
	public class Edge {
		/**
		 * Pointer to the next edge.
		 */
		public var next:Edge;
		
		/**
		 * Pointer to the previous edge.
		 */
		public var prev:Edge;
		
		/**
		 * End points of the edge.
		 */
		public var endpts:Vector.<Vertex>;  // end points
		
		/**
		 * Two adjacent faces.
		 */
		public var adjface:Vector.<Face>;
		
		/**
		 * Set if the edge should be deleted.
		 */
		public var remove:Boolean;
		
		/**
		 * Pointer to incident cone face.
		 */
		public var newFace:Face;
		
		/**
		 * 
		 */
		public function Edge() {
			endpts = new Vector.<Vertex>(2, true);
			endpts[0] = endpts[1] = null;
			adjface = new Vector.<Face>(2, true);
			adjface[0] = adjface[1] = null;
			remove = false;
			newFace = null;
			next = null;
			prev = null;
		}
	}
}
