.class Lcom/android/gallery3d/photoeditor/EffectsBar$1;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(ZI)Z
    .locals 3
    .parameter "isSelected"
    .parameter "effectsId"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #getter for: Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 57
    .local v0, select:Z
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$1;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/EffectsBar$1$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar$1;I)V

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 64
    return v0

    .line 56
    .end local v0           #select:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    .restart local v0       #select:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
