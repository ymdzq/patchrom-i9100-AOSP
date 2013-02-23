.class public Lcom/android/OriginalSettings/accounts/SyncSettings;
.super Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/OriginalSettings/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 121
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 122
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/OriginalSettings/AccountPreference;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V
    .locals 3
    .parameter "acctPref"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->finish()V

    .line 108
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 135
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_4

    .line 136
    aget-object v2, p1, v7

    .line 137
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 139
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 140
    .local v12, showAccount:Z
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 141
    const/4 v12, 0x0

    .line 142
    iget-object v6, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_1

    aget-object v11, v6, v8

    .line 143
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const/4 v12, 0x1

    .line 150
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_2

    .line 151
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 152
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/OriginalSettings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 154
    .local v0, preference:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    .end local v0           #preference:Lcom/android/OriginalSettings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 142
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 158
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v12           #showAccount:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 79
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 83
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 166
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/OriginalSettings/AccountPreference;

    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/AccountPreference;

    .line 169
    .local v0, accPref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    .end local v0           #accPref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/OriginalSettings/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/accounts/SyncSettings$1;-><init>(Lcom/android/OriginalSettings/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 65
    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 94
    instance-of v0, p2, Lcom/android/OriginalSettings/AccountPreference;

    if-eqz v0, :cond_0

    .line 95
    check-cast p2, Lcom/android/OriginalSettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/accounts/SyncSettings;->startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V

    .line 99
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 97
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 72
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStop()V

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 90
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/SyncSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
