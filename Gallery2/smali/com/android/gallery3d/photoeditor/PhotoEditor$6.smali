.class Lcom/android/gallery3d/photoeditor/PhotoEditor$6;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->canSave()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    new-instance v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$6$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$6$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$6;)V

    const v3, 0x7f0d0100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/YesCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    goto :goto_0
.end method
