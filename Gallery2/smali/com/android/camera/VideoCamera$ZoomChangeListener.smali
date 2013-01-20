.class Lcom/android/camera/VideoCamera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 2406
    iput-object p1, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2406
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/camera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->processZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/camera/VideoCamera;->access$2200(Lcom/android/camera/VideoCamera;I)V

    .line 2410
    return-void
.end method
