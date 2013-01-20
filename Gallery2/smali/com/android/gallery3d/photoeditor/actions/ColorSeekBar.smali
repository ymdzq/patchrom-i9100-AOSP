.class Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
.super Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;
.source "ColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;
    }
.end annotation


# instance fields
.field private final colors:[I

.field private progressDrawable:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setMax(I)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getProgress()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 62
    invoke-super/range {p0 .. p4}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;->onSizeChanged(IIII)V

    .line 64
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingRight()I

    move-result v4

    sub-int v11, v2, v4

    .line 68
    .local v11, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v6, v2, v4

    .line 69
    .local v6, height:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 73
    .local v8, paint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    div-int/lit8 v9, v6, 0x2

    .line 77
    .local v9, radius:I
    int-to-float v1, v9

    .line 78
    .local v1, left:F
    sub-int v2, v11, v9

    int-to-float v3, v2

    .line 80
    .local v3, right:F
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 81
    const/4 v2, 0x0

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 82
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    int-to-float v2, v9

    int-to-float v4, v9

    invoke-virtual {v0, v1, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    int-to-float v2, v9

    int-to-float v4, v9

    invoke-virtual {v0, v3, v2, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 89
    sub-float v2, v3, v1

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v10, v2, v4

    .line 90
    .local v10, strip:F
    const/high16 v2, 0x4000

    div-float v2, v10, v2

    add-float v3, v1, v2

    .line 91
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    const/4 v2, 0x0

    int-to-float v4, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    move v1, v3

    .line 94
    const/4 v7, 0x1

    .local v7, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_1

    .line 95
    add-float v3, v1, v10

    .line 96
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    aget v2, v2, v7

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    const/4 v2, 0x0

    int-to-float v4, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    move v1, v3

    .line 94
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    :cond_1
    const/high16 v2, 0x4000

    div-float v2, v10, v2

    add-float v3, v1, v2

    .line 101
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->colors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    const/4 v2, 0x0

    int-to-float v4, v6

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->progressDrawable:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public setColorIndex(I)V
    .locals 0
    .parameter "colorIndex"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setProgress(I)V

    .line 127
    return-void
.end method

.method public setOnColorChangeListener(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 123
    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    goto :goto_0
.end method
