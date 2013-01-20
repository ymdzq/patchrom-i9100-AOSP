.class Lcom/android/gallery3d/photoeditor/EffectsBar$2;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field final synthetic val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->val$effect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    #setter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v1, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$202(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$300(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z

    .line 91
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar$2;)V

    .line 98
    .local v0, listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;)V

    .line 100
    .end local v0           #listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    :cond_0
    return-void
.end method
