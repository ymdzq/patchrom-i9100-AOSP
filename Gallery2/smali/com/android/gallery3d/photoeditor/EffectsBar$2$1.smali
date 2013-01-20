.class Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$2;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar$2;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;->this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$2$1;->this$1:Lcom/android/gallery3d/photoeditor/EffectsBar$2;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
