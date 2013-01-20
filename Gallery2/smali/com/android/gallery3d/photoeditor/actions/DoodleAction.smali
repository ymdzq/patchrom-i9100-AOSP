.class public Lcom/android/gallery3d/photoeditor/actions/DoodleAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "DoodleAction.java"


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
    .locals 4

    .prologue
    .line 38
    new-instance v2, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-direct {v2}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;-><init>()V

    .line 39
    .local v2, filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->disableFilterOutput()V

    .line 41
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v1

    .line 42
    .local v1, doodleView:Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;)V

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setOnDoodleChangeListener(Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;)V

    .line 61
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addColorPicker()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    move-result-object v0

    .line 62
    .local v0, colorPicker:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
    new-instance v3, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$2;-><init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/actions/DoodleView;)V

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setOnColorChangeListener(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar$OnColorChangeListener;)V

    .line 71
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->setColorIndex(I)V

    .line 72
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setColor(I)V

    .line 73
    return-void
.end method
