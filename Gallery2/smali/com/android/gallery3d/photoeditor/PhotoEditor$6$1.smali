.class Lcom/android/gallery3d/photoeditor/PhotoEditor$6$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$6;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$6;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6$1;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 194
    return-void
.end method
