package {
        import flash.display.Sprite;
        import flash.events.TimerEvent;
        import flash.geom.Point;
        import flash.utils.Timer;
        
        public class Clock extends Sprite
        {
                private var r:Number = 50;//钟面半径
                private var cx:Number = 250;//钟面圆心x
                private var cy:Number = 200;//钟面圆心y
				
                private var pr:Number = 45;//整点半径
				
                private var sl:Number = 43;//秒针长度
                private var ml:Number = 35;//分针长度
                private var hl:Number = 25;//时针长度
				
                private var clock:Sprite;
                
                public function Clock()
                {
                        clock = new Sprite();
						
                        var timer:Timer = new Timer(1000,0);
                        timer.addEventListener(TimerEvent.TIMER, initClock);
                        timer.start();
						
                        this.addChild(clock);
                }
                
                public function initClock(event:TimerEvent):void
                {
                        clock.graphics.clear();
                        clock.graphics.lineStyle(2);
                        clock.graphics.drawCircle(cx,cy,r+2);
                        clock.graphics.beginFill(0xffffff);
                        clock.graphics.drawCircle(cx,cy,r);
                        clock.graphics.beginFill(0x000000);
                        clock.graphics.drawCircle(cx,cy,1);
						
                        initClockPoint();
                        initClockFinger()
                }
                
                //画整点
                public function initClockPoint():void
                {
                        for (var i:int=0; i<12; i++)
                        {
                                var px:Number = Math.sin(Math.PI*i/6)*pr;
                                var py:Number = Math.cos(Math.PI*i/6)*pr;
                                clock.graphics.beginFill(0x000000);
                                clock.graphics.drawCircle(cx+px, cy-py, 1);
                        }
                }
                
                //初始化指针
                public function initClockFinger():void
                {
                        var time:Date = new Date();
                        
                        var sp:Point = new Point();//秒针
                        sp.x = cx + Math.sin(Math.PI*time.seconds/30)*sl;
                        sp.y = cy - Math.cos(Math.PI*time.seconds/30)*sl;
                        
                        var mp:Point = new Point();//分针
                        mp.x = cx + Math.sin(Math.PI*time.minutes/30)*ml;
                        mp.y = cy - Math.cos(Math.PI*time.minutes/30)*ml;
                        
                        var hp:Point = new Point();//时针
                        var hh:Number = time.hours;
                        if (time.hours>=12)
                                hh = hh - 12;
                        hp.x = cx + Math.sin(Math.PI*(hh+time.minutes/60)/6)*hl;
                        hp.y = cy - Math.cos(Math.PI*(hh+time.minutes/60)/6)*hl;
                        
                        //画指针
                        clock.graphics.lineStyle(1);
                        clock.graphics.moveTo(cx, cy);
                        clock.graphics.lineTo(sp.x, sp.y);
						
                        clock.graphics.lineStyle(2);
                        clock.graphics.moveTo(cx, cy);
                        clock.graphics.lineTo(mp.x, mp.y);
						
                        clock.graphics.lineStyle(3);
                        clock.graphics.moveTo(cx, cy);
                        clock.graphics.lineTo(hp.x, hp.y);
                }
        }
}
