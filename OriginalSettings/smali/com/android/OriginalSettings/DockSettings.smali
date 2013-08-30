.class public Lcom/android/OriginalSettings/DockSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DockSettings.java"


# instance fields
.field private mAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/android/OriginalSettings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DockSettings$1;-><init>(Lcom/android/OriginalSettings/DockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DockSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DockSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 164
    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 165
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    iget-object v5, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 92
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, dockState:I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 96
    .local v1, isBluetooth:Z
    :goto_0
    if-nez v1, :cond_2

    .line 98
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v4, 0x7f0b027d

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 120
    :goto_1
    if-eqz v0, :cond_0

    .line 123
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DockSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v4

    .line 94
    goto :goto_0

    .line 101
    .restart local v1       #isBluetooth:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 103
    iput-object p1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    .line 104
    const v2, 0x7f0b027d

    .line 105
    .local v2, resId:I
    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_3
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 107
    :pswitch_0
    const v2, 0x7f0b027b

    .line 108
    goto :goto_3

    .line 112
    :pswitch_1
    const v2, 0x7f0b027a

    .line 113
    goto :goto_3

    .line 115
    :pswitch_2
    const v2, 0x7f0b027c

    goto :goto_3

    .line 124
    .end local v2           #resId:I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private initDockSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    .line 80
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    const v3, 0x7f0b027c

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 84
    :cond_0
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 86
    iget-object v3, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 88
    return-void

    :cond_1
    move v1, v2

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DockSettings;->addPreferencesFromResource(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->initDockSettings()V

    .line 59
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/OriginalSettings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mAudioSettings:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    :cond_0
    if-nez v0, :cond_2

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DockSettings;->showDialog(I)V

    .line 150
    :cond_1
    :goto_0
    return v1

    .line 140
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 141
    const-string v2, "com.android.OriginalSettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method
