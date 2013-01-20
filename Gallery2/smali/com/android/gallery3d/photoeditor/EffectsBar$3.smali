.class Lcom/android/gallery3d/photoeditor/EffectsBar$3;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$runnableOnDone:Ljava/lang/Runnable;

.field final synthetic val$toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/Toolbar;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->dismissSpinner()V

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$202(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$3;->val$runnableOnDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    :cond_0
    return-void
.end method
