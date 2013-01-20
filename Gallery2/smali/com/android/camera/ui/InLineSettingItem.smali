.class public abstract Lcom/android/camera/ui/InLineSettingItem;
.super Landroid/widget/LinearLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/InLineSettingItem$Listener;
    }
.end annotation


# instance fields
.field protected mIndex:I

.field private mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 68
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged()V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 59
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 91
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 82
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    .line 86
    return-void
.end method

.method protected setTitle(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 54
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method protected abstract updateView()V
.end method
