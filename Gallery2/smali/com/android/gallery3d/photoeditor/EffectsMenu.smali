.class public Lcom/android/gallery3d/photoeditor/EffectsMenu;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "EffectsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V
    .locals 1
    .parameter "listener"
    .parameter "toggleId"
    .parameter "effectsId"

    .prologue
    .line 62
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/gallery3d/photoeditor/EffectsMenu$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsMenu;ILcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;I)V

    invoke-virtual {p0, p2, v0}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f04002b

    return v0
.end method

.method public clearSelected()V
    .locals 5

    .prologue
    .line 73
    const v3, 0x7f0c0055

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 74
    .local v1, menu:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, toggle:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setViewSelected(IZ)V

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v2           #toggle:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 54
    const v0, 0x7f0c0056

    const v1, 0x7f040028

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 55
    const v0, 0x7f0c0057

    const v1, 0x7f040026

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 56
    const v0, 0x7f0c0058

    const v1, 0x7f040027

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 57
    const v0, 0x7f0c0059

    const v1, 0x7f040029

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setToggleRunnable(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;II)V

    .line 58
    return-void
.end method
