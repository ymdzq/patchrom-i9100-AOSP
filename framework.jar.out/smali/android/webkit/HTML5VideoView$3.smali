.class Landroid/webkit/HTML5VideoView$3;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 750
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$3;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 752
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$3;->this$0:Landroid/webkit/HTML5VideoView;

    #setter for: Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Landroid/webkit/HTML5VideoView;->access$1402(Landroid/webkit/HTML5VideoView;I)I

    .line 753
    return-void
.end method
