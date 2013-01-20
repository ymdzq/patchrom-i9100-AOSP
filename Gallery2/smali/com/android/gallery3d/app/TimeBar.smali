.class public Lcom/android/gallery3d/app/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/TimeBar$Listener;
    }
.end annotation


# instance fields
.field private currentTime:I

.field private final listener:Lcom/android/gallery3d/app/TimeBar$Listener;

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final scrubber:Landroid/graphics/Bitmap;

.field private scrubberCorrection:I

.field private scrubberLeft:I

.field private final scrubberPadding:I

.field private scrubberTop:I

.field private scrubbing:Z

.field private showScrubber:Z

.field private showTimes:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:I

.field private vPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/TimeBar$Listener;

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    .line 83
    iput-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    .line 84
    iput-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    .line 86
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    .line 89
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4160

    mul-float v1, v2, v3

    .line 96
    .local v1, textSizeInPx:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 102
    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00:00"

    const/4 v4, 0x0

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    .line 105
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    .line 107
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41f0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    .line 108
    return-void
.end method

.method private clampScrubber()V
    .locals 4

    .prologue
    .line 175
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 176
    .local v0, half:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 177
    .local v1, max:I
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 178
    .local v2, min:I
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 179
    return-void
.end method

.method private getScrubberTime()I
    .locals 4

    .prologue
    .line 182
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 168
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 169
    .local v1, scrubberRight:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 170
    .local v0, scrubberBottom:I
    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 10
    .parameter "millis"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 272
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 273
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 274
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 275
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 276
    .local v0, hours:I
    if-lez v0, :cond_0

    .line 277
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private update()V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->invalidate()V

    .line 124
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 215
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 218
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/app/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    :cond_1
    return-void
.end method

.method public getBarHeight()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 188
    sub-int v3, p4, p2

    .line 189
    .local v3, w:I
    sub-int v0, p5, p3

    .line 190
    .local v0, h:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-nez v4, :cond_0

    .line 191
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 203
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    .line 204
    return-void

    .line 193
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 194
    .local v1, margin:I
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showTimes:Z

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    .line 197
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 198
    .local v2, progressY:I
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberTop:I

    .line 199
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->showScrubber:Z

    if-eqz v4, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 237
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 239
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    move v2, v3

    .line 268
    :goto_0
    return v2

    .line 241
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_0
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/app/TimeBar;->inScrubber(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    iput-boolean v2, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    .line 243
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberCorrection:I

    .line 244
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-interface {v3}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_0

    .line 250
    iget v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberCorrection:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubberLeft:I

    .line 251
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->clampScrubber()V

    .line 252
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v3

    iput v3, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    .line 253
    iget-object v3, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    iget v4, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    invoke-interface {v3, v4}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingMove(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/gallery3d/app/TimeBar;->invalidate()V

    goto :goto_0

    .line 260
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/gallery3d/app/TimeBar;->listener:Lcom/android/gallery3d/app/TimeBar$Listener;

    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->getScrubberTime()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/gallery3d/app/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 262
    iput-boolean v3, p0, Lcom/android/gallery3d/app/TimeBar;->scrubbing:Z

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTime(II)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 141
    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    if-ne v0, p2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/app/TimeBar;->currentTime:I

    .line 145
    iput p2, p0, Lcom/android/gallery3d/app/TimeBar;->totalTime:I

    .line 146
    invoke-direct {p0}, Lcom/android/gallery3d/app/TimeBar;->update()V

    goto :goto_0
.end method
