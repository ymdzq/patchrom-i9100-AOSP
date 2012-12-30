.class Landroid/webkit/HTML5VideoView$1;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
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
    .line 598
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$1;->this$0:Landroid/webkit/HTML5VideoView;

    #getter for: Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v0}, Landroid/webkit/HTML5VideoView;->access$1200(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->prepareExitFullscreen()V

    .line 601
    return-void
.end method
