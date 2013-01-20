.class Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OtherSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/OtherSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/camera/ListPreference;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/camera/ui/OtherSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/OtherSettingsPopup;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/ui/OtherSettingsPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    #getter for: Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/camera/ui/OtherSettingsPopup;->access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method private getSettingLayoutId(Lcom/android/camera/ListPreference;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 61
    if-nez p1, :cond_0

    const v0, 0x7f040013

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_0
    const-string v0, "pref_power_shutter"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_1
    const v0, 0x7f040014

    goto :goto_0

    .line 69
    :cond_2
    const v0, 0x7f040012

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 75
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    #getter for: Lcom/android/camera/ui/OtherSettingsPopup;->mListItem:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/ui/OtherSettingsPopup;->access$000(Lcom/android/camera/ui/OtherSettingsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ListPreference;

    .line 77
    .local v0, pref:Lcom/android/camera/ListPreference;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->getSettingLayoutId(Lcom/android/camera/ListPreference;)I

    move-result v2

    .line 78
    .local v2, viewLayoutId:I
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/InLineSettingItem;

    .line 80
    .local v1, view:Lcom/android/camera/ui/InLineSettingItem;
    const v3, 0x7f040013

    if-ne v2, v3, :cond_0

    .line 81
    const/high16 v3, 0x7f0c

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/InLineSettingItem;->setId(I)V

    .line 84
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 85
    iget-object v3, p0, Lcom/android/camera/ui/OtherSettingsPopup$OtherSettingsAdapter;->this$0:Lcom/android/camera/ui/OtherSettingsPopup;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/InLineSettingItem;->setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V

    .line 86
    return-object v1
.end method
