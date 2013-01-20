.class public Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;
.super Ljava/lang/Object;
.source "EffectToolKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$2;,
        Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private final toolFullscreen:Landroid/view/ViewGroup;

.field private final toolPanel:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "root"
    .parameter "label"

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    .line 51
    const v2, 0x7f0c005c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, effectsBar:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040025

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    .line 54
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    const v3, 0x7f0c0053

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 59
    const v2, 0x7f0c005b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/PhotoView;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 60
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, parent:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040024

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    .line 63
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method private addFullscreenTool(I)Landroid/view/View;
    .locals 4
    .parameter "toolId"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;

    .line 102
    .local v0, tool:Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FullscreenToolView;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 103
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    return-object v0
.end method

.method private addPanelTool(I)Landroid/view/View;
    .locals 5
    .parameter "toolId"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, tool:Landroid/view/View;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    const v4, 0x7f0c0053

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 111
    return-object v0
.end method

.method private getScalePickerProgressDrawable(Landroid/content/res/Resources;Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"
    .parameter "type"

    .prologue
    .line 115
    sget-object v0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$2;->$SwitchMap$com$android$gallery3d$photoeditor$actions$EffectToolKit$ScaleType:[I

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    const v0, 0x7f0200d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 117
    :pswitch_0
    const v0, 0x7f0200d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 120
    :pswitch_1
    const v0, 0x7f0200d4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_2
    const v0, 0x7f0200d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addColorPicker()Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f040021

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    return-object v0
.end method

.method public addCropView()Lcom/android/gallery3d/photoeditor/actions/CropView;
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f040022

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/CropView;

    return-object v0
.end method

.method public addDoodleView()Lcom/android/gallery3d/photoeditor/actions/DoodleView;
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f040023

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    return-object v0
.end method

.method public addFlipView()Lcom/android/gallery3d/photoeditor/actions/FlipView;
    .locals 1

    .prologue
    .line 149
    const v0, 0x7f04002c

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/FlipView;

    return-object v0
.end method

.method public addRotateView()Lcom/android/gallery3d/photoeditor/actions/RotateView;
    .locals 1

    .prologue
    .line 153
    const v0, 0x7f04002e

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/RotateView;

    return-object v0
.end method

.method public addScalePicker(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    .locals 2
    .parameter "type"

    .prologue
    .line 129
    const v1, 0x7f04002f

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addPanelTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    .line 131
    .local v0, scalePicker:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getScalePickerProgressDrawable(Landroid/content/res/Resources;Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-object v0
.end method

.method public addTouchView()Lcom/android/gallery3d/photoeditor/actions/TouchView;
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f040030

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->addFullscreenTool(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/actions/TouchView;

    return-object v0
.end method

.method public cancel()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 76
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 77
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 78
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 79
    new-instance v9, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;

    invoke-direct {v9, p0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;)V

    .line 87
    .local v9, listener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolFullscreen:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->toolPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method
