.class Lcom/android/gallery3d/ui/ActionModeHandler$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler;Landroid/view/ActionMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
