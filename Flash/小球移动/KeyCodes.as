package
{
    import flash.display.Sprite;
    import flash.events.KeyboardEvent;
    import flash.ui.Keyboard;
    import flash.events.MouseEvent;
	
	public class KeyCodes extends Sprite
	{
		private var ball:Sprite;
		public function KeyCodes (){
			init();
		}
		private function init():void
		{
			ball=new Sprite();
			addChild(ball);
			ball.graphics.beginFill(0xff0000);
			ball.graphics.drawCircle(0,0,40);
			ball.graphics.endFill();
			ball.x=stage.stageWidth/2;
			ball.y=stage.stageHeight/2;
			stage.addEventListener(KeyboardEvent.KEY_DOWN,onKeyboardEvent);
			ball.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
		}
		
		public function onKeyboardEvent(event:KeyboardEvent):void
		{		
			switch(event.keyCode)
			{
				case Keyboard.UP:
				ball.y-=10;
				break;
				
				case Keyboard.DOWN:
				ball.y+=10;
				break;
				
				case Keyboard.LEFT:
				ball.x-=10;				
				break;
				
				case Keyboard.RIGHT:
				ball.x+=10;
				break;
				
				default:
				break;
			}
		}
		
		private function onMouseDown(event:MouseEvent):void
		{
			stage.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
			stage.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
		}
		
		private function onMouseUp(event:MouseEvent):void
		{
			stage.removeEventListener(MouseEvent.MOUSE_UP,onMouseUp);
			stage.removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
		}
		
		private function onMouseMove(event:MouseEvent):void
		{
			ball.x=mouseX;
			ball.y=mouseY;
		}
		
		
		
	}
}
	
