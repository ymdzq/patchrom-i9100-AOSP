.class public Lcom/android/OriginalSettings/LocationSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 83
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 86
    :cond_0
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LocationSettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 89
    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 90
    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 91
    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 92
    const-string v1, "assisted_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    return-object v0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 175
    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    .line 178
    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 147
    .local v2, res:Landroid/content/ContentResolver;
    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 149
    .local v0, gpsEnabled:Z
    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 151
    .local v1, networkEnabled:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 159
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 153
    goto :goto_0

    :cond_3
    move v5, v4

    .line 155
    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 168
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/LocationSettings;->onToggleLocationAccess(Z)V

    .line 185
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 122
    const-string v2, "network"

    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 126
    .local v1, enabled:Z
    const-string v2, "gps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 128
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 131
    .end local v1           #enabled:Z
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 132
    const-string v4, "assisted_gps_enabled"

    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 136
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 104
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 105
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/OriginalSettings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/LocationSettings$1;-><init>(Lcom/android/OriginalSettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 70
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 71
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 79
    :cond_0
    return-void
.end method
