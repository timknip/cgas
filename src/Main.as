package {
	import com.floorplanner.cgas.Edge;
	import com.floorplanner.cgas.EdgeList;
	import com.floorplanner.cgas.CGAS;
	import com.floorplanner.cgas.Pointi;
	import flash.display.Sprite;

	/**
	 * @author timk
	 */
	public class Main extends Sprite {
		public function Main() {
			testIntersect();
		}
		
		private function testIntersect():void {
			var a:Pointi = new Pointi(-100);
			var b:Pointi = new Pointi(100);
			var c:Pointi = new Pointi(0, 100);
			var d:Pointi = new Pointi(0, -100);
			
			var result:Boolean = CGAS.intersectProp(a, b, c, d);
			
			trace("result: " + result);
			
			var edgeList:EdgeList = new EdgeList();
			
			edgeList.push(new Edge());
			edgeList.push(new Edge());
			edgeList.push(new Edge());
			edgeList.push(new Edge());
			
			var edge:Edge = edgeList.head;
			do {
				edge = edge.next;
			} while (edge !== edgeList.head);
			
			trace("n: " + edgeList.n + " " + edgeList.head);
			edgeList.pop();
			trace("n: " + edgeList.n + " " + edgeList.head);
			edgeList.pop();
			trace("n: " + edgeList.n + " " + edgeList.head);
			edgeList.pop();
			trace("n: " + edgeList.n + " " + edgeList.head);
			edgeList.pop();
			trace("n: " + edgeList.n + " " + edgeList.head);
		}
	}
}
