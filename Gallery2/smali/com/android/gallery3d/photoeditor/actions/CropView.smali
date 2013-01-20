.class Lcom/android/gallery3d/photoeditor/actions/CropView;
.super Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;
    }
.end annotation


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final cropBounds:Landroid/graphics/RectF;

.field private final cropIndicator:Landroid/graphics/drawable/Drawable;

.field private final indicatorSize:I

.field private lastX:F

.field private lastY:F

.field private listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

.field private movingEdges:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 67
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropIndicator:Landroid/graphics/drawable/Drawable;

    .line 68
    const v2, 0x7f0b003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->indicatorSize:I

    .line 69
    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 71
    .local v0, borderColor:I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    return-void
.end method

.method private detectMovingEdges(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v9, 0x41c8

    .line 113
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v1

    .line 114
    .local v1, cropped:Landroid/graphics/RectF;
    iput v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 117
    iget v7, v1, Landroid/graphics/RectF;->left:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 118
    .local v2, left:F
    iget v7, v1, Landroid/graphics/RectF;->right:F

    sub-float v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 119
    .local v3, right:F
    cmpg-float v7, v2, v9

    if-gtz v7, :cond_3

    cmpg-float v7, v2, v3

    if-gez v7, :cond_3

    .line 120
    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 127
    :cond_0
    :goto_0
    iget v7, v1, Landroid/graphics/RectF;->top:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 128
    .local v4, top:F
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 129
    .local v0, bottom:F
    cmpg-float v7, v4, v9

    if-gtz v7, :cond_4

    move v7, v5

    :goto_1
    cmpg-float v8, v4, v0

    if-gez v8, :cond_5

    :goto_2
    and-int/2addr v5, v7

    if-eqz v5, :cond_6

    .line 130
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 137
    :cond_1
    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    if-nez v5, :cond_2

    .line 138
    const/16 v5, 0x10

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 141
    return-void

    .line 122
    .end local v0           #bottom:F
    .end local v4           #top:F
    :cond_3
    cmpg-float v7, v3, v9

    if-gtz v7, :cond_0

    .line 123
    iget v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    goto :goto_0

    .restart local v0       #bottom:F
    .restart local v4       #top:F
    :cond_4
    move v7, v6

    .line 129
    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    .line 132
    :cond_6
    cmpg-float v5, v0, v9

    if-gtz v5, :cond_1

    .line 133
    iget v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 208
    float-to-int v2, p3

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 209
    .local v0, left:I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->indicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 210
    .local v1, top:I
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->indicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->indicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;FFFF)V
    .locals 2
    .parameter "canvas"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 217
    const/16 v0, 0xa0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 219
    return-void
.end method

.method private getCropBoundsDisplayed()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 104
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 105
    .local v2, width:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 106
    .local v1, height:F
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v2

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v1

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    .local v0, cropped:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 109
    return-object v0
.end method

.method private moveEdges(FF)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v0

    .line 145
    .local v0, cropped:Landroid/graphics/RectF;
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 147
    cmpl-float v3, p1, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 149
    :goto_0
    cmpl-float v3, p2, v5

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 151
    :goto_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 170
    :goto_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->mapPhotoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 171
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->refreshByCropChange(Z)V

    .line 172
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoWidth()F

    move-result v4

    div-float v2, v3, v4

    .line 155
    .local v2, minWidth:F
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoHeight()F

    move-result v4

    div-float v1, v3, v4

    .line 156
    .local v1, minHeight:F
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 157
    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 159
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 160
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 162
    :cond_4
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 163
    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 165
    :cond_5
    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 166
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 168
    :cond_6
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2
.end method

.method private refreshByCropChange(Z)V
    .locals 3
    .parameter "fromUser"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;->onCropChanged(Landroid/graphics/RectF;Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    .line 86
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getCropBoundsDisplayed()Landroid/graphics/RectF;

    move-result-object v6

    .line 227
    .local v6, cropped:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v6, Landroid/graphics/RectF;->top:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 229
    iget v2, v6, Landroid/graphics/RectF;->right:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 230
    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->displayBounds:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawShadow(Landroid/graphics/Canvas;FFFF)V

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 233
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    if-nez v0, :cond_8

    const/4 v7, 0x1

    .line 234
    .local v7, notMoving:Z
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    if-eqz v7, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v6, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    if-eqz v7, :cond_3

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 240
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    if-eqz v7, :cond_5

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v1, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 243
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    if-eqz v7, :cond_7

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropIndicator:Landroid/graphics/drawable/Drawable;

    iget v1, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 246
    :cond_7
    return-void

    .line 233
    .end local v7           #notMoving:Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 180
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 182
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 184
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropView;->detectMovingEdges(FF)V

    .line 185
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    .line 186
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    goto :goto_0

    .line 190
    :pswitch_1
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    if-eqz v2, :cond_1

    .line 191
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    sub-float v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->moveEdges(FF)V

    .line 193
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastX:F

    .line 194
    iput v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->lastY:F

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->movingEdges:I

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->invalidate()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCropBounds(Landroid/graphics/RectF;)V
    .locals 5
    .parameter "bounds"

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoWidth()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    .line 94
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->getPhotoHeight()F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 97
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->cropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->refreshByCropChange(Z)V

    .line 101
    return-void
.end method

.method public setOnCropChangeListener(Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropView;->listener:Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;

    .line 79
    return-void
.end method
