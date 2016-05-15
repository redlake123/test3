.class public final Lcom/csii/customheaderdemo/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csii/customheaderdemo/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomHeaderView:[I = null

.field public static final CustomHeaderView_backgroundArcRadius:I = 0x0

.field public static final CustomHeaderView_headMarginRight:I = 0x3

.field public static final CustomHeaderView_headRadius:I = 0x1

.field public static final CustomHeaderView_headStrokeWidth:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/csii/customheaderdemo/R$styleable;->CustomHeaderView:[I

    .line 115
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
