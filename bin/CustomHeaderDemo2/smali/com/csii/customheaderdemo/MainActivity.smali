.class public Lcom/csii/customheaderdemo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private bgBitmap1:Landroid/graphics/Bitmap;

.field private bgBitmap2:Landroid/graphics/Bitmap;

.field private customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

.field flag:Z

.field private mHeight:I

.field private mWidth:I

.field private seekBar1:Landroid/widget/SeekBar;

.field private seekBar2:Landroid/widget/SeekBar;

.field private seekBar3:Landroid/widget/SeekBar;

.field private seekBar4:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    .line 13
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/MainActivity;->mHeight:I

    .line 85
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    .line 86
    return-void
.end method

.method private initBitmap()V
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->scaleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap1:Landroid/graphics/Bitmap;

    .line 89
    const v0, 0x7f020001

    invoke-direct {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->scaleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap2:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method private initSeekBar()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar1:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 41
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar2:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 42
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar3:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar1:Landroid/widget/SeekBar;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar2:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 47
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar3:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar4:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 50
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar2:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar3:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar4:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    return-void
.end method

.method private scaleBitmap(I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "id"

    .prologue
    const/high16 v8, 0x3f80

    .line 95
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 101
    .local v4, tempBmp:Landroid/graphics/Bitmap;
    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 102
    .local v0, bmpHeight:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 104
    .local v1, bmpWidth:I
    int-to-float v6, v0

    iget v7, p0, Lcom/csii/customheaderdemo/MainActivity;->mHeight:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 105
    .local v2, heightRatio:F
    int-to-float v6, v1

    iget v7, p0, Lcom/csii/customheaderdemo/MainActivity;->mWidth:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 106
    .local v5, widthRatio:F
    cmpl-float v6, v2, v8

    if-gtz v6, :cond_0

    cmpl-float v6, v5, v8

    if-lez v6, :cond_1

    .line 108
    :cond_0
    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    .line 109
    float-to-int v6, v2

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    :cond_1
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 111
    :cond_2
    float-to-int v6, v5

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method


# virtual methods
.method public changeBg(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v3, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    .line 70
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v3, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public changeHead(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v3, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmHeaderBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    .line 80
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v3, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmHeaderBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-boolean v2, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/csii/customheaderdemo/MainActivity;->flag:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/csii/customheaderdemo/MainActivity;->init()V

    .line 28
    invoke-direct {p0}, Lcom/csii/customheaderdemo/MainActivity;->initBitmap()V

    .line 29
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar1:Landroid/widget/SeekBar;

    .line 30
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar2:Landroid/widget/SeekBar;

    .line 31
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar3:Landroid/widget/SeekBar;

    .line 32
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->seekBar4:Landroid/widget/SeekBar;

    .line 33
    invoke-direct {p0}, Lcom/csii/customheaderdemo/MainActivity;->initSeekBar()V

    .line 35
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/csii/customheaderdemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/csii/customheaderdemo/CustomHeaderView;

    iput-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    .line 36
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v1, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v0, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    iget-object v1, p0, Lcom/csii/customheaderdemo/MainActivity;->bgBitmap1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmHeaderBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 125
    .local v0, id:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 126
    .local v1, size:I
    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    invoke-virtual {v2, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmBgRadius(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    invoke-virtual {v2, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmHeadRadius(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    invoke-virtual {v2, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setmMarginRight(I)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v2, p0, Lcom/csii/customheaderdemo/MainActivity;->customHeaderView:Lcom/csii/customheaderdemo/CustomHeaderView;

    invoke-virtual {v2, v1}, Lcom/csii/customheaderdemo/CustomHeaderView;->setStrokeWidth(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x7f080001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 147
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 152
    return-void
.end method
