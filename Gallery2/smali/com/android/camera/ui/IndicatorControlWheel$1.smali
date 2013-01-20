.class Lcom/android/camera/ui/IndicatorControlWheel$1;
.super Ljava/lang/Object;
.source "IndicatorControlWheel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/IndicatorControlWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/IndicatorControlWheel;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/IndicatorControlWheel;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorControlWheel$1;->this$0:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControlWheel$1;->this$0:Lcom/android/camera/ui/IndicatorControlWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorControlWheel;->requestLayout()V

    .line 138
    return-void
.end method
