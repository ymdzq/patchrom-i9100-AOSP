.class Lcom/android/camera/Camera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/ui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ZoomChangeListener;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/camera/Camera$ZoomChangeListener;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->processZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;I)V

    .line 638
    return-void
.end method
