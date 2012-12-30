.class Landroid/webkit/HTML5VideoView$FullscreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullscreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "video"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 768
    iput-object p2, p0, Landroid/webkit/HTML5VideoView$FullscreenMediaController;->mVideoView:Landroid/view/View;

    .line 769
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$FullscreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$FullscreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 785
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    .line 786
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 773
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    .line 774
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$FullscreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$FullscreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 777
    :cond_0
    return-void
.end method
