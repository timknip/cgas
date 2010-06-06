package com.floorplanner.cgas {

	/**
	 * @author timk
	 */
	public class DiagonalList {
		public var n:int;
		public var head:Diagonal;
		
		public function DiagonalList() {
			this.head = null;
			this.n = 0;
		}
		
		public function clear():void {
			if (head != null) {
				head = null;
			}
			n = 0;
		}
		
		public function insertBefore(item:Diagonal, before:Diagonal):void {
			if (head == null) {
				head = item;
				head.next = head;
				head.prev = head;
				n = 1;	
			} else {
				before.prev.next = item;		
    			item.prev = before.prev;		
    			item.next = before;			       
    			before.prev = item;
				n++;
			}
		}
		
		public function pop():void {
			if (head != null) {
				remove(head.prev);
			}
		}
		
		public function push(item:Diagonal):void {
			if (head == null) {
				head = item;
				head.next = head;
				head.prev = head;
				n = 1;
			} else {
				insertBefore(item, head);
			}
		}
		
		public function remove(item:Diagonal):void {
			if (head === head.next) {
				head = null;
			} else if (item === head) {
				head = head.next;
			}
			item.prev.next = item.next;
   			item.next.prev = item.prev;
    		n--;
		}
	}
}
