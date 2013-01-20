.class Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->onComplete(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->dismissSpinner()V

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2$1;->val$result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
