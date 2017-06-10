package  {
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	
	
	public class MouseEvents extends Sprite {
		
		
		public function MouseEvents() 
		{
			init();
		}
		public function init():void
		{
			var sprite :Sprite=new Sprite();			
			sprite.graphics.lineStyle(1);
			sprite.graphics.beginFill(0xffff00);
			sprite.graphics.drawCircle(50,100,50);
			sprite.graphics.endFill();			
			//sprite.x=stage.stageWidth/2;
			//sprite.y=stage.stageHeight/2;
			addChild(sprite);
			
			sprite.addEventListener(MouseEvent.CLICK,onMouseEvent);
			sprite.addEventListener(MouseEvent.DOUBLE_CLICK,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_DOWN,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_MOVE,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_OUT,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_OVER,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_UP,onMouseEvent);
			sprite.addEventListener(MouseEvent.MOUSE_WHEEL,onMouseEvent);
			sprite.addEventListener(MouseEvent.ROLL_OUT,onMouseEvent);
			sprite.addEventListener(MouseEvent.ROLL_OVER,onMouseEvent);
			
		}
		public function onMouseEvent(event:MouseEvent):void
		{
			trace(event.type);
		}
	}
	
}
