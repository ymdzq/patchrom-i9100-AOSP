.class public Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "RedEyeAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;-><init>()V

    .line 39
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addTouchView()Lcom/android/gallery3d/photoeditor/actions/TouchView;

    move-result-object v1

    .line 40
    .local v1, touchView:Lcom/android/gallery3d/photoeditor/actions/TouchView;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->setSingleTapListener(Lcom/android/gallery3d/photoeditor/actions/TouchView$SingleTapListener;)V

    .line 53
    return-void
.end method
