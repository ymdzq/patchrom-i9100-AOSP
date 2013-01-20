.class Lcom/android/gallery3d/ui/ActionModeHandler$3;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

.field final synthetic val$item:Landroid/view/MenuItem;

.field final synthetic val$supportShare:Z


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;ZLandroid/view/MenuItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iput-boolean p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    iput-object p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ActionModeHandler$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .parameter "jc"

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    invoke-static {v3, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$100(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v1

    .line 302
    .local v1, operation:I
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #calls: Lcom/android/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    invoke-static {v3, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$200(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$600(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;-><init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-object v2

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move-object v0, v2

    .line 302
    goto :goto_0
.end method
