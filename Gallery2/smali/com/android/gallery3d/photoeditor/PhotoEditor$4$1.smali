.class Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$4;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->showSpinner()V

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$4$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutputBitmap(Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V

    .line 152
    return-void
.end method
