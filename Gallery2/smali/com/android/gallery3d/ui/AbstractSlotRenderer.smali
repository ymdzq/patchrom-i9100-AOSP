.class public abstract Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SlotView$SlotRenderer;


# instance fields
.field private final mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

.field private final mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f02008b

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 35
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020041

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020069

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 37
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020034

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 38
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020035

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 39
    return-void
.end method

.method protected static drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "padding"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 117
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 119
    return-void
.end method


# virtual methods
.method protected drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V
    .locals 7
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 43
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 45
    if-eqz p5, :cond_0

    .line 46
    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 47
    int-to-float v2, p5

    invoke-interface {p1, v2, v4, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 48
    neg-int v2, p3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v3, p4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-interface {p1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 49
    rem-int/lit8 v2, p5, 0x5a

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 50
    move v1, p4

    .line 51
    .local v1, temp:I
    move p4, p3

    .line 52
    move p3, p4

    .line 57
    .end local v1           #temp:I
    :cond_0
    int-to-float v2, p3

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p4

    invoke-interface {p2}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 60
    .local v0, scale:F
    invoke-interface {p1, v0, v0, v5}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 61
    invoke-interface {p2, p1, v6, v6}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 63
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 64
    return-void
.end method

.method protected drawPanoramaBorder(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 80
    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 81
    .local v6, scale:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 82
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 84
    .local v5, h:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mPanoramaBorder:Lcom/android/gallery3d/ui/NinePatchTexture;

    sub-int v3, p3, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 87
    return-void
.end method

.method protected drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 109
    return-void
.end method

.method protected drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/gallery3d/ui/FadeOutTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/FadeOutTexture;-><init>(Lcom/android/gallery3d/ui/BasicTexture;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressed:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 105
    return-void
.end method

.method protected drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFrameSelected:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawFrame(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;Lcom/android/gallery3d/ui/Texture;IIII)V

    .line 113
    return-void
.end method

.method protected drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 14
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 70
    .local v1, v:Lcom/android/gallery3d/ui/ResourceTexture;
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 71
    .local v13, scale:F
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 72
    .local v5, w:I
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 73
    .local v6, h:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 75
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v11, v2, 0x6

    .line 76
    .local v11, s:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/android/gallery3d/ui/ResourceTexture;

    sub-int v2, p2, v11

    div-int/lit8 v9, v2, 0x2

    sub-int v2, p3, v11

    div-int/lit8 v10, v2, 0x2

    move-object v8, p1

    move v12, v11

    invoke-virtual/range {v7 .. v12}, Lcom/android/gallery3d/ui/ResourceTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 77
    return-void
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/android/gallery3d/ui/FadeOutTexture;

    .line 97
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
