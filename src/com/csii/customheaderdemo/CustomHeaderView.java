package com.csii.customheaderdemo;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class CustomHeaderView extends View {
	private static final String TAG = "CustomHeaderView";
	private Bitmap mBackgroundBitmap;//����ͼƬ
	private Bitmap mHeaderBitmap;//Сͷ��ͼƬ
	private int bmpWidth;//ԭʼ����ͼƬ���
	private int bmpHeight;//ԭʼ����ͼƬ�߶�
	private Matrix mMatrix;
	private Paint mPaint;
	/*
	 * �������
	 */
	private int mBgRadius;
	private int width;//�ؼ����
	private int height;//�ؼ��߶�
	private int mBgHeight = 200;
	/*
	 * Сͷ�����
	 */
	private int mMarginRight=160;//Сͷ����ұߵľ���
	private int mHeadRadius =100;
	private Paint mHeadStrokePaint;
	private int strokeWidth = 5;
	private int cx;//Сͷ�����ĵ�x����
	private int cy;//Сͷ�����ĵ�y����

	public CustomHeaderView(Context context) {
		super(context);
		init();
	}

	public CustomHeaderView(Context context, AttributeSet attrs) {
		super(context, attrs);
		 parseAttributes(context.obtainStyledAttributes(attrs,
	                R.styleable.CustomHeaderView));
		init();
	}

	private void parseAttributes(TypedArray a) {
		mBgRadius = (int) a.getDimension(R.styleable.CustomHeaderView_backgroundArcRadius,
                mBgRadius);

		mMarginRight = (int) a.getDimension(R.styleable.CustomHeaderView_headMarginRight,
                mMarginRight);
		mHeadRadius = (int) a.getDimension(R.styleable.CustomHeaderView_headRadius,
				mHeadRadius);
		strokeWidth = (int) a.getDimension(R.styleable.CustomHeaderView_headStrokeWidth,
				strokeWidth);
	}

	private void init() {
		Bitmap defaultBitmap = BitmapFactory.decodeResource(getResources(),
				R.drawable.ic_launcher);
		if (getmBackgroundBitmap() == null) {

			mBackgroundBitmap = defaultBitmap;
		}
		if (getmHeaderBitmap() == null) {

			mHeaderBitmap = defaultBitmap;
		}
		bmpWidth = mBackgroundBitmap.getWidth();
		bmpHeight = mBackgroundBitmap.getHeight();
		
		mPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
		mMatrix = new Matrix();
		
		mHeadStrokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
		mHeadStrokePaint.setStyle(Paint.Style.STROKE);
		mHeadStrokePaint.setColor(0xffffffff);
		mHeadStrokePaint.setStrokeWidth(strokeWidth);

	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		int width = measure(widthMeasureSpec);
		int height = measure(heightMeasureSpec);
		setMeasuredDimension(width, height);
	}

	private int measure(int measureSpec) {
		int size = MeasureSpec.getSize(measureSpec);
		int mode = MeasureSpec.getMode(measureSpec);
		
		if(mode==MeasureSpec.UNSPECIFIED){
			return 200;
		}
		return size;
		
	}

	@Override
	protected void onDraw(Canvas canvas) {
		height = getMeasuredHeight();
		width = getMeasuredWidth();
		Log.i(TAG, "width..."+width+":height...."+height);
		//���ݿؼ��������ͼƬ�߶�
		float scale = (float)width/bmpWidth;
		
		Log.i(TAG, "scale..."+scale);
		height = (int) (bmpHeight*scale);
		if(mBgRadius==0){
			
			mBgRadius=(int) (height*1.5f);
		}
		mMatrix.reset();
		mMatrix.postScale(scale, scale);
		Bitmap scaledBackgroundBmp = Bitmap.createBitmap(mBackgroundBitmap, 0, 0, bmpWidth, bmpHeight, mMatrix, true);
		
		//����һ��BitmapShader
		BitmapShader bgShader = new BitmapShader(scaledBackgroundBmp, TileMode.CLAMP, TileMode.CLAMP);
		mPaint.setShader(bgShader);
		
		//��һ��Բ
		canvas.drawCircle(width/2, height-mBgRadius, mBgRadius, mPaint);
		
		/**======����Сͷ��========*/
		//�����ұߵľ�����㶥��λ��
		calculateHeadLayout();
		//����ͷ��ͼƬ
		int headWidth = mHeaderBitmap.getWidth();
		int headHeight = mHeaderBitmap.getHeight();
		float scaleW = (float)mHeadRadius*2/headWidth;
		float scaleH = (float)mHeadRadius*2/headHeight;
		
		if(scaleH!=0&&scaleW!=0){
			mMatrix.reset();
			mMatrix.postScale(scaleW, scaleH);
			Bitmap scaledHeadBmp = Bitmap.createBitmap(mHeaderBitmap, 0, 0, headWidth, headHeight, mMatrix, true);
			//����һ��BitmapShader
			BitmapShader headShader = new BitmapShader(scaledHeadBmp, TileMode.CLAMP, TileMode.CLAMP);
			
			//��һ��Բ
			canvas.translate(cx-mHeadRadius,cy-mHeadRadius);//ƽ�ƻ���
			mPaint.setShader(headShader);
			canvas.drawCircle(mHeadRadius, mHeadRadius, mHeadRadius, mPaint);
			mHeadStrokePaint.setStrokeWidth(strokeWidth);
			canvas.drawCircle(mHeadRadius, mHeadRadius, mHeadRadius+strokeWidth/2f , mHeadStrokePaint);
		}
	}

	private void calculateHeadLayout() {
		//���ɶ�������������ߵĳ���
		double sum = Math.pow(mBgRadius, 2)-Math.pow((width/2f)-mMarginRight, 2);
		
		double len = Math.sqrt(sum);
		
		cx = width-mMarginRight;
		cy = (int) (len+height-mBgRadius);
		Log.i(TAG, "cx:"+cx+",cy:"+cy+",len:"+len);
		
	}

	
	public Bitmap getmBackgroundBitmap() {
		return mBackgroundBitmap;
	}

	public void setmBackgroundBitmap(Bitmap mBackgroundBitmap) {
		this.mBackgroundBitmap = mBackgroundBitmap;
		bmpWidth = mBackgroundBitmap.getWidth();
		bmpHeight = mBackgroundBitmap.getHeight();
		Log.i(TAG, "bWidth..."+bmpWidth+":bHeight...."+bmpHeight);
		invalidate();
	}

	public Bitmap getmHeaderBitmap() {
		return mHeaderBitmap;
	}

	public void setmHeaderBitmap(Bitmap mHeaderBitmap) {
		this.mHeaderBitmap = mHeaderBitmap;
		invalidate();
	}

	public int getmMarginRight() {
		return mMarginRight;
	}

	public void setmMarginRight(int mMarginRight) {
		this.mMarginRight = mMarginRight;
		invalidate();
	}

	public int getmBgRadius() {
		return mBgRadius;
	}

	public void setmBgRadius(int mBgRadius) {
		this.mBgRadius = mBgRadius;
		invalidate();
	}

	public int getmHeadRadius() {
		return mHeadRadius;
	}

	public void setmHeadRadius(int mHeadRadius) {
		this.mHeadRadius = mHeadRadius;
		invalidate();
	}
	public int getStrokeWidth() {
		return strokeWidth;
	}

	public void setStrokeWidth(int strokeWidth) {
		this.strokeWidth = strokeWidth;
		invalidate();
	}

	public int getmBgHeight() {
		return mBgHeight;
	}

	public void setmBgHeight(int mBgHeight) {
		this.mBgHeight = mBgHeight;
	}

}
