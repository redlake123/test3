package com.csii.customheaderdemo;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;

public class MainActivity extends Activity implements OnSeekBarChangeListener {

    private int mHeight;
	private int mWidth;
	private Bitmap bgBitmap1;
	private Bitmap bgBitmap2;
	private CustomHeaderView customHeaderView;

	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        
        init();
        initBitmap();
        seekBar1 = (SeekBar) findViewById(R.id.seekBar1);
        seekBar2 = (SeekBar) findViewById(R.id.seekBar2);
        seekBar3 = (SeekBar) findViewById(R.id.seekBar3);
        seekBar4 = (SeekBar) findViewById(R.id.seekBar4);
        initSeekBar();
        
        customHeaderView = (CustomHeaderView) findViewById(R.id.customHeaderView);
        customHeaderView.setmBackgroundBitmap(bgBitmap1);
        customHeaderView.setmHeaderBitmap(bgBitmap1);
    }
	private void initSeekBar() {
		seekBar1.setMax(400);
		seekBar2.setMax(mWidth/2);
		seekBar3.setMax(mWidth);
		
		//³õÊ¼Öµ
		seekBar1.setProgress(500);
		seekBar2.setProgress(mWidth/4);
		seekBar3.setProgress(mWidth/2);
		seekBar4.setProgress(10);
		
		seekBar1.setOnSeekBarChangeListener(this);
		seekBar2.setOnSeekBarChangeListener(this);
		seekBar3.setOnSeekBarChangeListener(this);
		seekBar4.setOnSeekBarChangeListener(this);
		
	}
	boolean flag=true;
	private SeekBar seekBar1;
	private SeekBar seekBar2;
	private SeekBar seekBar3;
	private SeekBar seekBar4;
	public void changeBg(View v){
		if(flag){
			
			customHeaderView.setmBackgroundBitmap(bgBitmap2);
			flag =!flag;
		}else{
			customHeaderView.setmBackgroundBitmap(bgBitmap1);
			flag =!flag;
		}
	}
	public void changeHead(View v){
		if(flag){
			
			customHeaderView.setmHeaderBitmap(bgBitmap2);
			flag =!flag;
		}else{
			customHeaderView.setmHeaderBitmap(bgBitmap1);
			flag =!flag;
		}
	}
	public void changeHead_2(View v){
		if(flag){
			
			customHeaderView.setmHeaderBitmap(bgBitmap2);
			flag =!flag;
		}else{
			customHeaderView.setmHeaderBitmap(bgBitmap1);
			flag =!flag;
		}
	}



	private void init() {
		mHeight = getWindowManager().getDefaultDisplay().getHeight();
		mWidth = getWindowManager().getDefaultDisplay().getWidth();
	}
	private void initBitmap() {
		bgBitmap1 = scaleBitmap(R.drawable.img012);
		bgBitmap2 = scaleBitmap(R.drawable.img011);
		
		
	}

	private Bitmap scaleBitmap(int id) {
		Options options = new BitmapFactory.Options();
		
		options.inJustDecodeBounds = true;
		
		Bitmap tempBmp = BitmapFactory.decodeResource(getResources(), id, options);
		
		int bmpHeight = options.outHeight;
		int bmpWidth = options.outWidth;
		
		float heightRatio = (float)bmpHeight/mHeight;
		float widthRatio = (float)bmpWidth/mWidth;
		if(heightRatio>1||widthRatio>1){
			
			if(heightRatio>widthRatio){
				options.inSampleSize = (int) heightRatio;
			}else{
				options.inSampleSize = (int) widthRatio;
			}
		}
		
		options.inJustDecodeBounds = false;
		
		return BitmapFactory.decodeResource(getResources(), id, options);
		
		
	}
	@Override
	public void onProgressChanged(SeekBar seekBar, int progress,
			boolean fromUser) {
		int id = seekBar.getId();
		int size = seekBar.getProgress();
		switch (id) {
			case R.id.seekBar1:
				customHeaderView.setmBgRadius(size);
				break;
			case R.id.seekBar2:
				customHeaderView.setmHeadRadius(size);
				break;
			case R.id.seekBar3:
				customHeaderView.setmMarginRight(size);
				break;
			case R.id.seekBar4:
				customHeaderView.setStrokeWidth(size);
				break;

		}
		
	}
	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}

}
