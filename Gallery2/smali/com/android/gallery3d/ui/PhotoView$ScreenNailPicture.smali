.class Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 747
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 750
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    .line 751
    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSize()V
    .locals 5

    .prologue
    .line 845
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 853
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 854
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 855
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 862
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v1, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 863
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v0, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 864
    .local v0, h:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 865
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 866
    return-void

    .line 847
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 859
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 21
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_1

    .line 774
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3200(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v18

    .line 780
    .local v18, w:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v13

    .line 781
    .local v13, h:I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v13, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_3

    .line 782
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->noDraw()V

    goto :goto_0

    .line 786
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v12

    .line 787
    .local v12, filmRatio:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-lez v3, :cond_9

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v19, 0x1

    .line 789
    .local v19, wantsCardEffect:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-nez v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    if-eq v3, v4, :cond_a

    const/16 v20, 0x1

    .line 791
    .local v20, wantsOffsetEffect:Z
    :goto_2
    if-eqz v19, :cond_b

    div-int/lit8 v3, v18, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(FFF)F

    move-result v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v10, v3

    .line 794
    .local v10, cx:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 795
    .local v11, cy:I
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 796
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 797
    if-eqz v19, :cond_c

    .line 798
    div-int/lit8 v3, v18, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    div-float v15, v3, v4

    .line 799
    .local v15, progress:F
    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-static {v15, v3, v4}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v15

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v3, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 801
    .local v9, alpha:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v3, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v17

    .line 802
    .local v17, scale:F
    const/high16 v3, 0x3f80

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v9, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(FFF)F

    move-result v9

    .line 803
    const/high16 v3, 0x3f80

    move/from16 v0, v17

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v12, v0, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(FFF)F

    move-result v17

    .line 804
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 805
    const/high16 v3, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 811
    .end local v9           #alpha:F
    .end local v15           #progress:F
    .end local v17           #scale:F
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_5

    .line 812
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 814
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v7

    .line 815
    .local v7, drawW:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v8

    .line 816
    .local v8, drawH:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    neg-int v4, v7

    div-int/lit8 v5, v4, 0x2

    neg-int v4, v8

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 820
    :cond_6
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 821
    .local v16, s:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move/from16 v1, v16

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 822
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    invoke-static {v3, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 825
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto/16 :goto_0

    .line 787
    .end local v7           #drawW:I
    .end local v8           #drawH:I
    .end local v10           #cx:I
    .end local v11           #cy:I
    .end local v16           #s:I
    .end local v19           #wantsCardEffect:Z
    .end local v20           #wantsOffsetEffect:Z
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 789
    .restart local v19       #wantsCardEffect:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 791
    .restart local v20       #wantsOffsetEffect:Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto/16 :goto_3

    .line 806
    .restart local v10       #cx:I
    .restart local v11       #cy:I
    :cond_c
    if-eqz v20, :cond_4

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v13

    div-float v14, v3, v4

    .line 808
    .local v14, offset:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v3, v14}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v9

    .line 809
    .restart local v9       #alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_4
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 842
    return-void
.end method

.method public getSize()Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    .line 756
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    .line 757
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 758
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 759
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 761
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 762
    return-void
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 835
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 836
    return-void
.end method
