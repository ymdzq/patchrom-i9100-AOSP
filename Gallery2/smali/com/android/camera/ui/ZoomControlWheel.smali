.class public Lcom/android/camera/ui/ZoomControlWheel;
.super Lcom/android/camera/ui/ZoomControl;
.source "ZoomControlWheel.java"


# instance fields
.field private final DEFAULT_SLIDER_POSITION:I

.field private final MAX_SLIDER_ANGLE:I

.field private final MIN_SLIDER_ANGLE:I

.field private final SLIDER_RANGE:D

.field private final TRAIL_COLOR:I

.field private final ZOOM_IN_ICON_DEGREES:I

.field private final ZOOM_OUT_ICON_DEGREES:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mCenterX:I

.field private mCenterY:I

.field private mRotateAngle:D

.field private mShutterButtonRadius:D

.field private mSliderRadians:D

.field private mStrokeWidth:I

.field private mWheelRadius:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ZoomControlWheel;->setWillNotDraw(Z)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->TRAIL_COLOR:I

    .line 80
    const/16 v1, 0x4a

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mShutterButtonRadius:D

    .line 81
    const/16 v1, 0x57

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mStrokeWidth:I

    .line 82
    iget-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mShutterButtonRadius:D

    iget v3, p0, Lcom/android/camera/ui/ZoomControlWheel;->mStrokeWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mWheelRadius:D

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 87
    const/16 v1, 0x60

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_IN_ICON_DEGREES:I

    .line 88
    const/16 v1, 0x108

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_OUT_ICON_DEGREES:I

    .line 94
    :goto_0
    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_OUT_ICON_DEGREES:I

    add-int/lit8 v1, v1, -0xf

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    .line 95
    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_IN_ICON_DEGREES:I

    add-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    .line 96
    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->DEFAULT_SLIDER_POSITION:I

    .line 97
    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    iget v2, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    sub-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->SLIDER_RANGE:D

    .line 98
    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->DEFAULT_SLIDER_POSITION:I

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mSliderRadians:D

    .line 99
    return-void

    .line 91
    :cond_0
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_IN_ICON_DEGREES:I

    .line 92
    const/16 v1, 0xae

    iput v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_OUT_ICON_DEGREES:I

    goto :goto_0
.end method

.method private drawArc(Landroid/graphics/Canvas;IIDII)V
    .locals 6
    .parameter "canvas"
    .parameter "startAngle"
    .parameter "sweepAngle"
    .parameter "radius"
    .parameter "color"
    .parameter "width"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    int-to-double v1, v1

    sub-double/2addr v1, p4

    double-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    int-to-double v2, v2

    sub-double/2addr v2, p4

    double-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    int-to-double v3, v3

    add-double/2addr v3, p4

    double-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    int-to-double v4, v4

    add-double/2addr v4, p4

    double-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/ZoomControlWheel;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 184
    return-void
.end method

.method private getSliderDrawAngle(D)D
    .locals 2
    .parameter "sliderAngle"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 151
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 155
    .end local p1
    :cond_0
    :goto_0
    return-wide p1

    .line 152
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 153
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    goto :goto_0
.end method

.method private layoutIcon(Landroid/view/View;D)V
    .locals 9
    .parameter "view"
    .parameter "radian"

    .prologue
    .line 140
    iget-wide v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mRotateAngle:D

    add-double/2addr p2, v4

    .line 141
    iget v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    iget-wide v5, p0, Lcom/android/camera/ui/ZoomControlWheel;->mWheelRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-int v2, v4, v5

    .line 142
    .local v2, x:I
    iget v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    iget-wide v5, p0, Lcom/android/camera/ui/ZoomControlWheel;->mWheelRadius:D

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int v3, v4, v5

    .line 143
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 144
    .local v1, width:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 145
    .local v0, height:I
    div-int/lit8 v4, v1, 0x2

    sub-int v4, v2, v4

    div-int/lit8 v5, v0, 0x2

    sub-int v5, v3, v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 147
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ZoomControlWheel;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    .line 128
    :goto_0
    return v9

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v3, v9

    .line 107
    .local v3, dx:D
    iget v9, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v5, v9

    .line 108
    .local v5, dy:D
    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 110
    .local v7, radius:D
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 111
    .local v1, angle:D
    const-wide/16 v9, 0x0

    cmpg-double v9, v1, v9

    if-gez v9, :cond_2

    const-wide v9, 0x401921fb54442d18L

    add-double/2addr v1, v9

    .line 112
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/ZoomControlWheel;->getSliderDrawAngle(D)D

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/camera/ui/ZoomControlWheel;->mSliderRadians:D

    .line 117
    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->closeZoomControl()V

    goto :goto_1

    .line 124
    :pswitch_1
    iget v9, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/camera/ui/ZoomControlWheel;->mSliderRadians:D

    sub-double/2addr v9, v11

    iget-wide v11, p0, Lcom/android/camera/ui/ZoomControlWheel;->SLIDER_RANGE:D

    div-double/2addr v9, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/camera/ui/ZoomControlWheel;->performZoom(D)V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->requestLayout()V

    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 189
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    neg-int v0, v0

    iget-wide v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mRotateAngle:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v1, v4

    sub-int v2, v0, v1

    .line 190
    .local v2, startAngle:I
    iget v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    sub-int v3, v0, v1

    .line 191
    .local v3, radians:I
    add-int v0, v2, v3

    if-lez v0, :cond_0

    neg-int v3, v2

    .line 192
    :cond_0
    iget-wide v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mWheelRadius:D

    iget v6, p0, Lcom/android/camera/ui/ZoomControlWheel;->TRAIL_COLOR:I

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/ZoomControlWheel;->drawArc(Landroid/graphics/Canvas;IIDII)V

    .line 194
    invoke-super {p0, p1}, Lcom/android/camera/ui/ZoomControl;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v2, 0x5d

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    sub-int v0, p4, p2

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    .line 165
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mZoomIn:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_IN_ICON_DEGREES:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mZoomOut:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->ZOOM_OUT_ICON_DEGREES:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mZoomSlider:Landroid/widget/ImageView;

    iget-wide v1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mSliderRadians:D

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/ZoomControlWheel;->getSliderDrawAngle(D)D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/ZoomControlWheel;->layoutIcon(Landroid/view/View;D)V

    .line 174
    return-void

    .line 167
    :cond_0
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterX:I

    .line 168
    sub-int v0, p5, p3

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ZoomControlWheel;->mCenterY:I

    goto :goto_0
.end method

.method public rotate(D)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/android/camera/ui/ZoomControlWheel;->mRotateAngle:D

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/ui/ZoomControlWheel;->requestLayout()V

    .line 201
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/camera/ui/ZoomControl;->setZoomIndex(I)V

    .line 206
    iget v2, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    iget v3, p0, Lcom/android/camera/ui/ZoomControlWheel;->MIN_SLIDER_ANGLE:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mZoomMax:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/android/camera/ui/ZoomControlWheel;->mZoomIndex:I

    int-to-double v4, v4

    mul-double v0, v2, v4

    .line 207
    .local v0, offsetAngle:D
    iget v2, p0, Lcom/android/camera/ui/ZoomControlWheel;->MAX_SLIDER_ANGLE:I

    int-to-double v2, v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/ZoomControlWheel;->mSliderRadians:D

    .line 208
    return-void
.end method
