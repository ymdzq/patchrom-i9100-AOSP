.class public Lcom/android/OriginalSettings/ProgressCategory;
.super Lcom/android/OriginalSettings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    .line 33
    const v0, 0x7f040053

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ProgressCategory;->setLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 39
    const v4, 0x7f0800d2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, progressBar:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    .line 43
    .local v0, noDeviceFound:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_5

    .line 46
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_2

    .line 47
    iget-object v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 48
    iput-boolean v2, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 62
    :cond_2
    :goto_2
    return-void

    .end local v0           #noDeviceFound:Z
    :cond_3
    move v0, v2

    .line 41
    goto :goto_0

    .line 43
    .restart local v0       #noDeviceFound:Z
    :cond_4
    const/16 v4, 0x8

    goto :goto_1

    .line 51
    :cond_5
    iget-boolean v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_2

    .line 52
    iget-object v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    .line 53
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 54
    iget-object v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f04004b

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 55
    iget-object v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f0b0079

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 56
    iget-object v4, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 58
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 59
    iput-boolean v3, p0, Lcom/android/OriginalSettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/OriginalSettings/ProgressCategory;->mProgress:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ProgressCategory;->notifyChanged()V

    .line 68
    return-void
.end method
