.class Lcom/android/gallery3d/photoeditor/actions/CropAction$1;
.super Ljava/lang/Object;
.source "CropAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/CropAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;Lcom/android/gallery3d/photoeditor/filters/CropFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropChanged(Landroid/graphics/RectF;Z)V
    .locals 2
    .parameter "cropBounds"
    .parameter "fromUser"

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 51
    :cond_0
    return-void
.end method
