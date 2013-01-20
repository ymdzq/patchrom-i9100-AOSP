.class public Lcom/android/gallery3d/photoeditor/actions/CropAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "CropAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 6

    .prologue
    const v5, 0x3f4ccccd

    const v4, 0x3e4ccccd

    .line 39
    new-instance v2, Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    invoke-direct {v2}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;-><init>()V

    .line 40
    .local v2, filter:Lcom/android/gallery3d/photoeditor/filters/CropFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->disableFilterOutput()V

    .line 42
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/CropAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addCropView()Lcom/android/gallery3d/photoeditor/actions/CropView;

    move-result-object v1

    .line 43
    .local v1, cropView:Lcom/android/gallery3d/photoeditor/actions/CropView;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/photoeditor/actions/CropAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;Lcom/android/gallery3d/photoeditor/filters/CropFilter;)V

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/actions/CropView;->setOnCropChangeListener(Lcom/android/gallery3d/photoeditor/actions/CropView$OnCropChangeListener;)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 55
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/CropView;->setCropBounds(Landroid/graphics/RectF;)V

    .line 56
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->setCropBounds(Landroid/graphics/RectF;)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 58
    return-void
.end method
