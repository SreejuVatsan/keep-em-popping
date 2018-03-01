class PopAnimation{

	int xr1, xr2, yr1, yr2, xl1, xl2, yl1, yl2, i;

	PopAnimation(int x, int y){
		strokeWeight(3);
		xr1 = x + 10;
		xr2 = x - 10;
		yr1 = y;
		yr2 = y;
	
		xl1 = x;
		xl2 = x;
		yl1 = y + 10;
		yl2 = y - 10;
	
		i = 10;
	}

	void showPopAnimation() {	
		if (i < 2000) {
			line(xr1+i, yr1+i, xr2+i, yr2+i);
			line(xr1-i, yr1-i, xr2-i, yr2-i);
			line(xl1-i, yl1+i, xl2-i, yl2+i);
			line(xl1+i, yl1-i, xl2+i, yl2-i);
			println(xr1 + "   " + yr1);
			//line(x1+i, y1+i, x2+i, y2+i);		
		}
		i += 10;
			
	}
}