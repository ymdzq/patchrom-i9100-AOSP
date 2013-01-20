.class Lcom/android/gallery3d/photoeditor/PhotoEditor$5$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$5;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$5;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->startActivity(Landroid/content/Intent;)V

    .line 173
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
