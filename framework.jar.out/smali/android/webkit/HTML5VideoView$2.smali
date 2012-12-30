.class Landroid/webkit/HTML5VideoView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoView;->exitFullscreenVideoState(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoView;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$2;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 699
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$2;->this$0:Landroid/webkit/HTML5VideoView;

    #calls: Landroid/webkit/HTML5VideoView;->finishExitingFullscreen()V
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$1300(Landroid/webkit/HTML5VideoView;)V

    .line 700
    return-void
.end method
