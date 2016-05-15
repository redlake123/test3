.class public Lcom/csii/customheaderdemo/CustomHeaderView;
.super Landroid/view/View;
.source "CustomHeaderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomHeaderView"


# instance fields
.field private bmpHeight:I

.field private bmpWidth:I

.field private cx:I

.field private cy:I

.field private height:I

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBgHeight:I

.field private mBgRadius:I

.field private mHeadRadius:I

.field private mHeadStrokePaint:Landroid/graphics/Paint;

.field private mHeaderBitmap:Landroid/graphics/Bitmap;

.field private mMarginRight:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private strokeWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0xc8

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgHeight:I

    .line 34
    const/16 v0, 0xa0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    .line 43
    invoke-direct {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, 0xc8

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgHeight:I

    .line 34
    const/16 v0, 0xa0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    .line 49
    sget-object v0, Lcom/csii/customheaderdemo/R$styleable;->CustomHeaderView:[I

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/csii/customheaderdemo/CustomHeaderView;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 50
    invoke-direct {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->init()V

    .line 51
    return-void
.end method

.method private calculateHeadLayout()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000

    .line 159
    iget v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    int-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v6, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget v7, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v2, v4, v6

    .line 161
    .local v2, sum:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 163
    .local v0, len:D
    iget v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    iget v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cx:I

    .line 164
    iget v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    int-to-double v4, v4

    add-double/2addr v4, v0

    iget v6, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    int-to-double v6, v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cy:I

    .line 165
    const-string v4, "CustomHeaderView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cx:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cy:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",len:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    const/high16 v2, 0x7f02

    .line 66
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, defaultBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->getmBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    iput-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->getmHeaderBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    iput-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpWidth:I

    .line 77
    iget-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpHeight:I

    .line 79
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method private measure(I)I
    .locals 2
    .parameter "measureSpec"

    .prologue
    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 98
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 100
    .local v0, mode:I
    if-nez v0, :cond_0

    .line 101
    const/16 v1, 0xc8

    .line 103
    .end local v1           #size:I
    :cond_0
    return v1
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    int-to-float v1, v1

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    .line 57
    const/4 v0, 0x3

    .line 58
    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    int-to-float v1, v1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    .line 59
    const/4 v0, 0x1

    .line 60
    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v1, v1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    .line 61
    const/4 v0, 0x2

    .line 62
    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    int-to-float v1, v1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    .line 63
    return-void
.end method


# virtual methods
.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    return v0
.end method

.method public getmBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmBgHeight()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgHeight:I

    return v0
.end method

.method public getmBgRadius()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    return v0
.end method

.method public getmHeadRadius()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    return v0
.end method

.method public getmHeaderBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmMarginRight()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    .line 110
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    .line 111
    const-string v0, "CustomHeaderView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "width..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":height...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpWidth:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 115
    .local v9, scale:F
    const-string v0, "CustomHeaderView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scale..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    .line 117
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 122
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpWidth:I

    iget v4, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpHeight:I

    iget-object v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 126
    .local v12, scaledBackgroundBmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v12, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 127
    .local v7, bgShader:Landroid/graphics/BitmapShader;
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->height:I

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    invoke-direct {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->calculateHeadLayout()V

    .line 136
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 137
    .local v3, headWidth:I
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 138
    .local v4, headHeight:I
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float v11, v0, v1

    .line 139
    .local v11, scaleW:F
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    int-to-float v1, v4

    div-float v10, v0, v1

    .line 141
    .local v10, scaleH:F
    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 143
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 144
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 146
    .local v13, scaledHeadBmp:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v13, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 149
    .local v8, headShader:Landroid/graphics/BitmapShader;
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cx:I

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->cy:I

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 151
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    int-to-float v2, v2

    iget v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    .end local v8           #headShader:Landroid/graphics/BitmapShader;
    .end local v13           #scaledHeadBmp:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/csii/customheaderdemo/CustomHeaderView;->measure(I)I

    move-result v1

    .line 92
    .local v1, width:I
    invoke-direct {p0, p2}, Lcom/csii/customheaderdemo/CustomHeaderView;->measure(I)I

    move-result v0

    .line 93
    .local v0, height:I
    invoke-virtual {p0, v1, v0}, Lcom/csii/customheaderdemo/CustomHeaderView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .parameter "strokeWidth"

    .prologue
    .line 222
    iput p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->strokeWidth:I

    .line 223
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 224
    return-void
.end method

.method public setmBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "mBackgroundBitmap"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpWidth:I

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpHeight:I

    .line 178
    const-string v0, "CustomHeaderView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bWidth..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":bHeight...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->bmpHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 180
    return-void
.end method

.method public setmBgHeight(I)V
    .locals 0
    .parameter "mBgHeight"

    .prologue
    .line 231
    iput p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgHeight:I

    .line 232
    return-void
.end method

.method public setmBgRadius(I)V
    .locals 0
    .parameter "mBgRadius"

    .prologue
    .line 205
    iput p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mBgRadius:I

    .line 206
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 207
    return-void
.end method

.method public setmHeadRadius(I)V
    .locals 0
    .parameter "mHeadRadius"

    .prologue
    .line 214
    iput p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeadRadius:I

    .line 215
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 216
    return-void
.end method

.method public setmHeaderBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "mHeaderBitmap"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mHeaderBitmap:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 189
    return-void
.end method

.method public setmMarginRight(I)V
    .locals 0
    .parameter "mMarginRight"

    .prologue
    .line 196
    iput p1, p0, Lcom/csii/customheaderdemo/CustomHeaderView;->mMarginRight:I

    .line 197
    invoke-virtual {p0}, Lcom/csii/customheaderdemo/CustomHeaderView;->invalidate()V

    .line 198
    return-void
.end method
