.class Landroid/webkit/HTML5VideoView$VideoTextureView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoView$VideoTextureView;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/HTML5VideoView$VideoTextureView;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoView$VideoTextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 516
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoView$VideoTextureView;

    iget-object v0, v0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    const/4 v1, 0x2

    #setter for: Landroid/webkit/HTML5VideoView;->mAnimationState:I
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoView;->access$402(Landroid/webkit/HTML5VideoView;I)I

    .line 517
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$VideoTextureView$1;->this$1:Landroid/webkit/HTML5VideoView$VideoTextureView;

    iget-object v0, v0, Landroid/webkit/HTML5VideoView$VideoTextureView;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->attachMediaController()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$1000(Landroid/webkit/HTML5VideoView;)V

    .line 518
    return-void
.end method
