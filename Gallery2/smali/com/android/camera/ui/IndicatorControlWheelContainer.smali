.class public Lcom/android/camera/ui/IndicatorControlWheelContainer;
.super Lcom/android/camera/ui/IndicatorControlContainer;
.source "IndicatorControlWheelContainer.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

.field private mShutterButton:Landroid/view/View;

.field private mShutterButtonRadius:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControlContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method


# virtual methods
.method public dismissSecondLevelIndicator()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSecondLevelIndicator()V

    .line 229
    return-void
.end method

.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->dismissSettingPopup()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v7

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 90
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-double v1, v9

    .line 91
    .local v1, dx:D
    iget v9, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterY:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v3, v9

    .line 92
    .local v3, dy:D
    mul-double v9, v1, v1

    mul-double v11, v3, v3

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 95
    .local v5, radius:D
    iget-wide v9, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButtonRadius:D

    cmpg-double v9, v5, v9

    if-gtz v9, :cond_4

    .line 96
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v9}, Lcom/android/camera/ui/IndicatorControlWheel;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 97
    iget-object v9, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v9}, Lcom/android/camera/ui/IndicatorControlWheel;->onTouchOutBound()V

    .line 99
    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v8, :cond_0

    .line 100
    :cond_3
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 105
    :cond_4
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 108
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v7, v8

    .line 109
    goto :goto_0

    .line 112
    :cond_5
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v7, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method

.method public enableFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->setupFilter(Z)V

    .line 234
    return-void
.end method

.method public enableZoom(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->enableZoom(Z)V

    .line 219
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "group"
    .parameter "isZoomSupported"
    .parameter "keys"
    .parameter "otherSettingKeys"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/IndicatorControlWheel;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    .line 67
    const/16 v0, 0x4a

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButtonRadius:D

    .line 69
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorControlWheel;

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    .line 71
    return-void
.end method

.method public onIndicatorEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 82
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/16 v4, 0x5d

    const/4 v8, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 121
    .local v1, shutterButtonWidth:I
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 122
    .local v0, shutterButtonHeight:I
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 124
    sub-int v2, p4, p2

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterX:I

    .line 125
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterY:I

    .line 126
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterY:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterY:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v2, v8, v8, v3, v4}, Lcom/android/camera/ui/IndicatorControlWheel;->layout(IIII)V

    .line 141
    return-void

    .line 131
    :cond_0
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterX:I

    .line 132
    sub-int v2, p5, p3

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterY:I

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterX:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mCenterX:I

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v7, 0x0

    const/high16 v8, -0x8000

    .line 146
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 147
    .local v2, freeSpec:I
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, v2, v2}, Landroid/view/View;->measure(II)V

    .line 148
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v7, v2, v2}, Lcom/android/camera/ui/IndicatorControlWheel;->measure(II)V

    .line 151
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/lit8 v1, v7, 0x10

    .line 153
    .local v1, desiredWidth:I
    iget-object v7, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v0, v7, 0x10

    .line 155
    .local v0, desiredHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 156
    .local v6, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 158
    .local v3, heightMode:I
    if-nez v6, :cond_0

    .line 159
    move v5, v1

    .line 165
    .local v5, measuredWidth:I
    :goto_0
    if-nez v3, :cond_2

    .line 166
    move v4, v0

    .line 172
    .local v4, measuredHeight:I
    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/camera/ui/IndicatorControlWheelContainer;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 160
    .end local v4           #measuredHeight:I
    .end local v5           #measuredWidth:I
    :cond_0
    if-ne v6, v8, :cond_1

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5       #measuredWidth:I
    goto :goto_0

    .line 163
    .end local v5           #measuredWidth:I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .restart local v5       #measuredWidth:I
    goto :goto_0

    .line 167
    :cond_2
    if-ne v3, v8, :cond_3

    .line 168
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4       #measuredHeight:I
    goto :goto_1

    .line 170
    .end local v4           #measuredHeight:I
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .restart local v4       #measuredHeight:I
    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->overrideSettings([Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->reloadPreferences()V

    .line 183
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->setEnabled(Z)V

    .line 214
    return-void
.end method

.method public setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorControlWheel;->setListener(Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;)V

    .line 178
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/IndicatorControlWheel;->setOrientation(IZ)V

    .line 198
    return-void
.end method

.method public startTimeLapseAnimation(IJ)V
    .locals 1
    .parameter "timeLapseInterval"
    .parameter "startTime"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/IndicatorControlWheel;->startTimeLapseAnimation(IJ)V

    .line 204
    return-void
.end method

.method public stopTimeLapseAnimation()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheelContainer;->mIndicatorControlWheel:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->stopTimeLapseAnimation()V

    .line 209
    return-void
.end method
