.class Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;
.super Ljava/lang/Object;
.source "RedEyeAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final bounds:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public onSingleTap(Landroid/graphics/PointF;)V
    .locals 3
    .parameter "point"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->bounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->addRedEyePosition(Landroid/graphics/PointF;)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 51
    :cond_0
    return-void
.end method
