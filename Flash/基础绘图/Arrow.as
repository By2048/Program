package  {
	
	import flash.display.Sprite;
	import flash.display.Graphics;
	
	
	public class Arrow extends Sprite {
		
		
		public function Arrow()
		{
			//init();
			init_1();
		}
		
		public function init():void
		{
			graphics.lineStyle(1,0,1);
			graphics.beginFill(0xffff00);		
			
			// 箭头  =>
			/*graphics.moveTo(0,25);
			graphics.lineTo(50,25);
			graphics.lineTo(50,0);
			graphics.lineTo(100,50);
			
			graphics.lineTo(50,100);
			graphics.lineTo(50,75);
			graphics.lineTo(0,75);
			graphics.lineTo(0,25);*/
			
			
			// 正方形
			graphics.moveTo(100,100);
			graphics.lineTo(100,200);
			graphics.lineTo(200,200);
			graphics.lineTo(200,100);
			
			graphics.endFill();
		}
		
		public function init_1():void
		{
			var sprite:Sprite =new Sprite();
			
			sprite.graphics.lineStyle(1,0,1);
			sprite.graphics.beginFill(0xffff00);		
			sprite.graphics.drawRect(50,50,100,200);
			sprite.graphics.endFill();
			
			addChild(sprite);
		}
		
		
	}
	
}
