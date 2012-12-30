.class Landroid/webkit/HTML5VideoView$VideoTextureView;
.super Landroid/view/TextureView;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoTextureView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoView;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoView;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "surface"

    .prologue
    .line 482
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    .line 483
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 486
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_0
    invoke-virtual {p0, p3}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 491
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 530
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/HTML5VideoView;->mNeedsAttachToInlineGlContext:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$1102(Landroid/webkit/HTML5VideoView;Z)Z

    .line 531
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->attachToInlineGlContextIfNeeded()V

    .line 532
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 495
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->getDefaultSize(II)I

    move-result v1

    #setter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$002(Landroid/webkit/HTML5VideoView;I)I

    .line 496
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    invoke-static {v1, p2}, Landroid/webkit/HTML5VideoView$VideoTextureView;->getDefaultSize(II)I

    move-result v1

    #setter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$202(Landroid/webkit/HTML5VideoView;I)I

    .line 497
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$200(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$000(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$000(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$202(Landroid/webkit/HTML5VideoView;I)I

    .line 504
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$000(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$200(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setMeasuredDimension(II)V

    .line 506
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mAnimationState:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$400(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->getInlineXOffset()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$500(Landroid/webkit/HTML5VideoView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setTranslationX(F)V

    .line 509
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->getInlineYOffset()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$700(Landroid/webkit/HTML5VideoView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setTranslationY(F)V

    .line 510
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->getInlineXScale()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$800(Landroid/webkit/HTML5VideoView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setScaleX(F)V

    .line 511
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->getInlineYScale()F
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$900(Landroid/webkit/HTML5VideoView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setScaleY(F)V

    .line 514
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/webkit/HTML5VideoView$VideoTextureView$1;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoView$VideoTextureView$1;-><init>(Landroid/webkit/HTML5VideoView$VideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 520
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 521
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/HTML5VideoView;->mAnimationState:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$402(Landroid/webkit/HTML5VideoView;I)I

    .line 522
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 524
    :cond_1
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$200(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$000(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoView;->access$200(Landroid/webkit/HTML5VideoView;)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$100(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoView;->access$300(Landroid/webkit/HTML5VideoView;)I

    move-result v2

    div-int/2addr v1, v2

    #setter for: Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$002(Landroid/webkit/HTML5VideoView;I)I

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setOpaque(Z)V

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setOpaque(Z)V

    .line 541
    return-void
.end method
