.class public Lcom/android/gallery3d/photoeditor/ActionBar;
.super Lcom/android/gallery3d/photoeditor/RestorableView;
.source "ActionBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/RestorableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private showSaveOrShare()V
    .locals 5

    .prologue
    const v4, 0x7f0c0051

    .line 69
    const v3, 0x7f0c004e

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 71
    .local v1, showShare:Z
    :goto_0
    const v3, 0x7f0c0050

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    .line 72
    .local v2, switcher:Landroid/widget/ViewSwitcher;
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    .local v0, next:I
    if-eqz v1, :cond_0

    const v3, 0x7f0c0052

    if-eq v0, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-ne v0, v4, :cond_2

    .line 75
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 77
    :cond_2
    return-void

    .line 69
    .end local v0           #next:I
    .end local v1           #showShare:Z
    .end local v2           #switcher:Landroid/widget/ViewSwitcher;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canSave()Z
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected childLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040020

    return v0
.end method

.method public clickBack()V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 93
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/gallery3d/photoeditor/RestorableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->showSaveOrShare()V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-super {p0}, Lcom/android/gallery3d/photoeditor/RestorableView;->onFinishInflate()V

    .line 55
    invoke-virtual {p0, v0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->updateButtons(ZZ)V

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 42
    invoke-super/range {p0 .. p5}, Lcom/android/gallery3d/photoeditor/RestorableView;->onLayout(ZIIII)V

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    const v2, 0x7f0c004d

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sub-int v2, p4, p2

    if-le v1, v2, :cond_1

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void

    .line 49
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateButtons(ZZ)V
    .locals 1
    .parameter "canUndo"
    .parameter "canRedo"

    .prologue
    .line 80
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 81
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery3d/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 82
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 83
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->showSaveOrShare()V

    .line 84
    return-void
.end method

.method public updateSave(Z)V
    .locals 1
    .parameter "canSave"

    .prologue
    .line 87
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/photoeditor/ActionBar;->setViewEnabled(IZ)V

    .line 88
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ActionBar;->showSaveOrShare()V

    .line 89
    return-void
.end method
