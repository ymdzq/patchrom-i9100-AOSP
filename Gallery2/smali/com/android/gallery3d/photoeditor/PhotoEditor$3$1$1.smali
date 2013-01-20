.class Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1$1;->this$2:Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$3;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->dismissSpinner()V

    .line 112
    return-void
.end method
