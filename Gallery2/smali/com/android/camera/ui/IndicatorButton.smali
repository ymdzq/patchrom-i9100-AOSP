.class public Lcom/android/camera/ui/IndicatorButton;
.super Lcom/android/camera/ui/AbstractIndicatorButton;
.source "IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/BasicSettingPopup$Listener;
.implements Lcom/android/camera/ui/EffectSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/IndicatorButton$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/IconListPreference;)V
    .locals 0
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 50
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 105
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c005f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 108
    .local v3, root:Landroid/view/ViewGroup;
    const-string v4, "pref_video_effect_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const v4, 0x7f04000f

    invoke-virtual {v2, v4, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/EffectSettingPopup;

    .line 111
    .local v1, effect:Lcom/android/camera/ui/EffectSettingPopup;
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v4}, Lcom/android/camera/ui/EffectSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 112
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/EffectSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/EffectSettingPopup$Listener;)V

    .line 113
    iput-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 121
    .end local v1           #effect:Lcom/android/camera/ui/EffectSettingPopup;
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    return-void

    .line 115
    :cond_0
    const v4, 0x7f040005

    invoke-virtual {v2, v4, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BasicSettingPopup;

    .line 117
    .local v0, basic:Lcom/android/camera/ui/BasicSettingPopup;
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/BasicSettingPopup;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 118
    invoke-virtual {v0, p0}, Lcom/android/camera/ui/BasicSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/BasicSettingPopup$Listener;)V

    .line 119
    iput-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    goto :goto_0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->dismissPopupDelayed()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorButton$Listener;->onSettingChanged()V

    .line 132
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 4
    .parameter "keyvalues"

    .prologue
    .line 88
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 90
    aget-object v1, p1, v0

    .line 91
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 92
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    iput-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 94
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorButton;->setEnabled(Z)V

    .line 98
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 99
    return-void

    .line 94
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 55
    .local v0, iconIds:[I
    if-eqz v0, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, index:I
    :cond_0
    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    .line 74
    .end local v1           #index:I
    :goto_0
    invoke-super {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    .line 75
    :goto_1
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 62
    .restart local v1       #index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 64
    const-string v2, "IndicatorButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to find override value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->print()V

    goto :goto_1

    .line 72
    .end local v1           #index:I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/IconListPreference;->getSingleIcon()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    .line 44
    return-void
.end method
