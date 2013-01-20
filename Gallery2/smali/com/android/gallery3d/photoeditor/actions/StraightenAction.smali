.class public Lcom/android/gallery3d/photoeditor/actions/StraightenAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "StraightenAction.java"


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
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;-><init>()V

    .line 40
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addRotateView()Lcom/android/gallery3d/photoeditor/actions/RotateView;

    move-result-object v1

    .line 41
    .local v1, rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/StraightenAction;Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setOnRotateChangeListener(Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setDrawGrids(Z)V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 63
    const/high16 v2, 0x42b4

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotateSpan(F)V

    .line 64
    return-void
.end method
