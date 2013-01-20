.class public Lcom/android/camera/ui/OtherSettingsPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "OtherSettingsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/camera/ui/InLineSettingItem$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;,
        Lcom/android/camera/ui/OtherSettingsPopup$Listener;
    }
.end annotation


# instance fields
.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ListPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;)V
    .locals 5
    .parameter "group"
    .parameter "keys"

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 101
    aget-object v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 102
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;-><init>(Lcom/android/camera/ui/OtherSettingsPopup;)V

    .line 109
    .local v1, mListItemAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/camera/ListPreference;>;"
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 112
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onRestorePreferencesClicked()V

    .line 144
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/OtherSettingsPopup$Listener;->onSettingChanged()V

    .line 119
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 123
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 124
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 125
    aget-object v3, p1, v1

    .line 126
    .local v3, key:Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    aget-object v6, p1, v7

    .line 127
    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 128
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ListPreference;

    .line 129
    .local v4, pref:Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    iget-object v7, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/InLineSettingItem;

    .line 132
    .local v5, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v5, v6}, Lcom/android/camera/ui/InLineSettingItem;->overrideSettings(Ljava/lang/String;)V

    .line 127
    .end local v5           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v4           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 136
    .end local v2           #j:I
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reloadPreference()V
    .locals 5

    .prologue
    .line 148
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 149
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ListPreference;

    .line 151
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/InLineSettingItem;

    .line 155
    .local v3, settingItem:Lcom/android/camera/ui/InLineSettingItem;
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 156
    invoke-virtual {v3}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    .line 149
    .end local v3           #settingItem:Lcom/android/camera/ui/InLineSettingItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup;->mListener:Lcom/android/camera/ui/OtherSettingsPopup$Listener;

    .line 92
    return-void
.end method
