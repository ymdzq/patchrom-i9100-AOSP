.class Lcom/android/gallery3d/photoeditor/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c005b

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$000(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar$1;->this$0:Lcom/android/gallery3d/photoeditor/Toolbar;

    #getter for: Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->access$000(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
