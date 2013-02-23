.class public Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 301
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 12
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 258
    .local v1, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v11, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v8, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 260
    .local v4, onlyShowFallback:Z
    iget-object v8, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v7

    .line 262
    .local v7, weakBiometricAvailable:Z
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_10

    .line 263
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 264
    .local v5, pref:Landroid/preference/Preference;
    instance-of v8, v5, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_2

    move-object v8, v5

    .line 265
    check-cast v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 267
    .local v0, enabled:Z
    const/4 v6, 0x1

    .line 268
    .local v6, visible:Z
    const-string v8, "unlock_set_off"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    if-gtz p1, :cond_3

    move v0, v9

    .line 283
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    if-eqz v4, :cond_f

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 284
    :cond_1
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    .end local v0           #enabled:Z
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #visible:Z
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .restart local v0       #enabled:Z
    .restart local v3       #key:Ljava/lang/String;
    .restart local v6       #visible:Z
    :cond_3
    move v0, v10

    .line 269
    goto :goto_1

    .line 270
    :cond_4
    const-string v8, "unlock_set_none"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 271
    if-gtz p1, :cond_5

    move v0, v9

    :goto_3
    goto :goto_1

    :cond_5
    move v0, v10

    goto :goto_3

    .line 272
    :cond_6
    const-string v8, "unlock_set_biometric_weak"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 273
    const v8, 0x8000

    if-le p1, v8, :cond_7

    iget-boolean v8, p2, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_8

    :cond_7
    move v0, v9

    .line 275
    :goto_4
    move v6, v7

    goto :goto_1

    :cond_8
    move v0, v10

    .line 273
    goto :goto_4

    .line 276
    :cond_9
    const-string v8, "unlock_set_pattern"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 277
    const/high16 v8, 0x1

    if-gt p1, v8, :cond_a

    move v0, v9

    :goto_5
    goto :goto_1

    :cond_a
    move v0, v10

    goto :goto_5

    .line 278
    :cond_b
    const-string v8, "unlock_set_pin"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 279
    const/high16 v8, 0x2

    if-gt p1, v8, :cond_c

    move v0, v9

    :goto_6
    goto :goto_1

    :cond_c
    move v0, v10

    goto :goto_6

    .line 280
    :cond_d
    const-string v8, "unlock_set_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 281
    const/high16 v8, 0x6

    if-gt p1, v8, :cond_e

    move v0, v9

    :goto_7
    goto :goto_1

    :cond_e
    move v0, v10

    goto :goto_7

    .line 285
    :cond_f
    if-nez v0, :cond_2

    .line 286
    const v8, 0x7f0b013f

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 287
    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 291
    .end local v0           #enabled:Z
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #visible:Z
    :cond_10
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0b012d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 318
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 176
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 177
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, quality:I
    if-ne v3, v5, :cond_1

    .line 180
    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 181
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v6}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 182
    .local v0, allowBiometric:Llibcore/util/MutableBoolean;
    invoke-direct {p0, v3, v0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v3

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 184
    .local v2, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 187
    :cond_0
    const v4, 0x7f050022

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 188
    invoke-direct {p0, v3, v0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 192
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 196
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 197
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 198
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 199
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 202
    if-eqz p2, :cond_2

    .line 203
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 211
    .end local p1
    :goto_1
    return p1

    .line 203
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 217
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 218
    move p1, v0

    .line 220
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 232
    .local v1, encryptionStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 234
    .local v0, encrypted:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 235
    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 236
    const/high16 p1, 0x2

    .line 239
    :cond_1
    return p1

    .line 232
    .end local v0           #encrypted:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 245
    const/high16 p1, 0x1

    .line 248
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 392
    const v0, 0x7f0b065f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    iput-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 154
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 156
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 77
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 78
    new-instance v2, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 81
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 87
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 90
    :cond_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 102
    :cond_1
    :goto_1
    return-void

    .line 83
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 92
    :cond_3
    iget-boolean v2, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_1

    .line 93
    new-instance v1, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 95
    .local v1, helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 96
    iput-boolean v3, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 99
    :cond_4
    iput-boolean v3, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 141
    .local v1, onlyShowFallback:Z
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040077

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, header:Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-virtual {v3, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 147
    .end local v0           #header:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 111
    .local v0, handled:Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 132
    :goto_0
    return v0

    .line 114
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0, v3, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 117
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 127
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 130
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x200

    const/16 v8, 0x65

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 333
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 340
    invoke-direct {p0, p1, v5}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v4

    .line 342
    const/high16 v1, 0x2

    if-lt v4, v1, :cond_3

    .line 343
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 344
    if-ge v1, v0, :cond_9

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 348
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/OriginalSettings/ChooseLockPassword;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 349
    const-string v6, "lockscreen.password_type"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v4, "lockscreen.password_min"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    const-string v0, "confirm_credentials"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    if-eqz v3, :cond_1

    .line 356
    invoke-virtual {p0, v5, v8}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 388
    :goto_1
    return-void

    .line 359
    :cond_1
    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 387
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 362
    :cond_3
    const/high16 v0, 0x1

    if-ne v4, v0, :cond_7

    .line 363
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 364
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 365
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v0, :cond_5

    const-class v0, Lcom/android/OriginalSettings/ChooseLockPatternTutorial;

    :goto_4
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 368
    const-string v0, "key_lock_method"

    const-string v4, "pattern"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    if-eqz v3, :cond_6

    .line 373
    invoke-virtual {p0, v1, v8}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 363
    goto :goto_3

    .line 365
    :cond_5
    const-class v0, Lcom/android/OriginalSettings/ChooseLockPattern;

    goto :goto_4

    .line 376
    :cond_6
    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 379
    :cond_7
    const v0, 0x8000

    if-ne v4, v0, :cond_8

    .line 380
    invoke-direct {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 381
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 382
    :cond_8
    if-nez v4, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method
