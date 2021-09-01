#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, stat;
	var txt;
	var x, y,pin[200],x1;
	var bg;
	var name1;
	x = 100;
	y = 100;
	SprSetLevel(6);
	bg = imgLoad("boodoo.png", 0, 0);
	imgSetCurrent(bg);
	imgSetTrans(true, 31, 0, 31);
	for(x1 = 0; x1 < 200; x1 += 1){
	pin[x1] = imgLoad("pin.png", 0, 0);
	imgSetCurrent(pin[x1]);
	imgSetTrans(true, 31, 0, 31);
	}
	x1=0;
	timeSetFPS(30);
	timeClear();
	txt = imgCreate(640,480,3,0);
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Name");
	txtSetColor(255, 255, 255);
		txtSetPos(210, 460);
		txtOut("Change Key A");
	txtSetColor(0, 0, 0);
	imgSetCurrent(bg);
	sprRenderScreen();
	inpClear();

	while(1)
	{
		if(keyGetState(KEY_A) == INP_PUSH)
		{
			if(name1==0){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Near House Man");
	imgSetCurrent(bg);
			}else if(name1==1){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Near House Girl");
	imgSetCurrent(bg);
			}else if(name1==2){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Near School Man");
	imgSetCurrent(bg);
			}else if(name1==3){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Near School Girl");
	imgSetCurrent(bg);
			}else if(name1==4){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Fool Man");
	imgSetCurrent(bg);
			}else if(name1==5){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Fool Girl");
	imgSetCurrent(bg);
			}else if(name1==6){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Dark Man");
	imgSetCurrent(bg);
			}else if(name1==7){	
	imgSetCurrent(txt);
	imgFill(31, 0, 31);
	imgSetTrans(true, 31, 0, 31);
	imgFillRect(200, 400, 200, 63, 31, 31, 31);
		txtSetPos(210, 430);
		txtOut("Dark Girl");
	imgSetCurrent(bg);
			}
		name1+=1;
		if(name1==8){
		name1=0;
		}
		timeWait();
		timeWait();
		timeWait();
		timeWait();
		timeWait();
		timeWait();
		}
		while(mosGet(type, x, y))
		{
			if(type == MOS_LEFT)
				{
				imgSetCurrent(pin[x1]);
				imgSetPos(x, y);
				x1+=1;
				mosClear();
				}
		}
		mosClear();
		inpClear();
		timeWait();
		sprRenderScreen();
	}
}