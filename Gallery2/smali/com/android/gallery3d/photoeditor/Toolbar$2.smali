.class Lcom/android/gallery3d/photoeditor/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/Toolbar;->showSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$2;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/content/DialogInterface;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "event"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$2;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 77
    const/4 v0, 0x1

    return v0
.end method
