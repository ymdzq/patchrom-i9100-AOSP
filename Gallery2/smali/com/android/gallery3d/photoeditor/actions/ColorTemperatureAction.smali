.class public Lcom/android/gallery3d/photoeditor/actions/ColorTemperatureAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "ColorTemperatureAction.java"


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
    .line 37
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/ColorTemperatureFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/ColorTemperatureFilter;-><init>()V

    .line 39
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/ColorTemperatureFilter;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/ColorTemperatureAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    sget-object v3, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->COLOR:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addScalePicker(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    move-result-object v1

    .line 40
    .local v1, scalePicker:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/ColorTemperatureAction$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ColorTemperatureAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/ColorTemperatureAction;Lcom/android/gallery3d/photoeditor/filters/ColorTemperatureFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setOnScaleChangeListener(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;)V

    .line 50
    const/high16 v2, 0x3f00

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setProgress(F)V

    .line 51
    return-void
.end method
