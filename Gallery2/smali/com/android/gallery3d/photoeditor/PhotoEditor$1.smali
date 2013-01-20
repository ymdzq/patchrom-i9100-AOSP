.class Lcom/android/gallery3d/photoeditor/PhotoEditor$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->onCreate(Landroid/os/Bundle;)V
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
    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStackChanged(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/ActionBar;->updateButtons(ZZ)V

    .line 59
    return-void
.end method
