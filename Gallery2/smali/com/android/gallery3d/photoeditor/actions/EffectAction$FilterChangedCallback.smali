.class Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterChangedCallback"
.end annotation


# instance fields
.field private done:Z

.field private runnableOnReady:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 161
    :cond_0
    return-void
.end method
