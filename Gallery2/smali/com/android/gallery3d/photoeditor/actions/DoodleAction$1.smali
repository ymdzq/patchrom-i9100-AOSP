.class Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;
.super Ljava/lang/Object;
.source "DoodleAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoodleChanged(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->addDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 58
    :cond_0
    return-void
.end method
