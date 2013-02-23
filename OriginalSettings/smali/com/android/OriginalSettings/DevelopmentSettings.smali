.class public Lcom/android/OriginalSettings/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;,
        Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTracesPref:Landroid/preference/MultiCheckPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 975
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 458
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    .local v0, enabled:Z
    :goto_0
    return v1

    .line 461
    .end local v0           #enabled:Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 462
    .restart local v0       #enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 887
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 889
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 893
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 895
    :cond_1
    return-void
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 233
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-object v0
.end method

.method private static isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1010
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1011
    :catch_0
    move-exception v0

    .line 1012
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 275
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 277
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    .end local v0           #hdcpChecking:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 361
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 362
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 364
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    invoke-virtual {p0, v4, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 362
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 370
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 371
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 372
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 373
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 374
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 375
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 376
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 377
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 378
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 379
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1020
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 288
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 290
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 291
    return-void
.end method

.method private updateAllOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 332
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 333
    .local v1, cr:Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 334
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 336
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 338
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 339
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "mock_location"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 342
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 344
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 345
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 347
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 348
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 349
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 350
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 351
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 352
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 353
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 354
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 355
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 357
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 358
    return-void

    :cond_0
    move v2, v4

    .line 334
    goto :goto_0

    :cond_1
    move v2, v4

    .line 336
    goto :goto_1

    :cond_2
    move v3, v4

    .line 339
    goto :goto_2
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 652
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 653
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 654
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 655
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 632
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 633
    .local v1, scale:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 634
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 636
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 637
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 638
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 639
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 640
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 641
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 649
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 637
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    .end local v2           #val:F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 646
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 647
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 668
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 669
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 670
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 671
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 672
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 673
    if-eqz v0, :cond_0

    .line 674
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 676
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 677
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 670
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 682
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 683
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 600
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 602
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 591
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 431
    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 433
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 438
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 439
    .local v2, lab:Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 443
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    .local v3, label:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b05ad

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 445
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 450
    .end local v3           #label:Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 431
    goto :goto_0

    .line 439
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #lab:Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 440
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #lab:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3       #label:Ljava/lang/String;
    goto :goto_1

    .line 447
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #label:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b05ac

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateEnableTracesOptions()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 708
    const-string v9, "debug.atrace.tags.enableflags"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, strValue:Ljava/lang/String;
    const-string v9, "debug.atrace.tags.enableflags"

    invoke-static {v9, v11, v12}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 710
    .local v0, flags:J
    iget-object v9, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v9}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, values:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 712
    .local v3, numSet:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_2

    .line 713
    shl-int v9, v7, v2

    int-to-long v9, v9

    and-long/2addr v9, v0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    move v4, v7

    .line 714
    .local v4, set:Z
    :goto_1
    iget-object v9, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10, v4}, Landroid/preference/MultiCheckPreference;->setValue(IZ)V

    .line 715
    if-eqz v4, :cond_0

    .line 716
    add-int/lit8 v3, v3, 0x1

    .line 712
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #set:Z
    :cond_1
    move v4, v8

    .line 713
    goto :goto_1

    .line 719
    :cond_2
    if-nez v3, :cond_3

    .line 720
    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v8, 0x7f0b05c3

    invoke-virtual {v7, v8}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    .line 728
    :goto_2
    return-void

    .line 721
    :cond_3
    array-length v9, v6

    if-ne v3, v9, :cond_4

    .line 722
    iput-boolean v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 723
    iget-object v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v8, 0x7f0b05c5

    invoke-virtual {v7, v8}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    goto :goto_2

    .line 725
    :cond_4
    iput-boolean v7, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 726
    iget-object v9, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v10, 0x7f0b05c4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-virtual {p0, v10, v7}, Lcom/android/OriginalSettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/preference/MultiCheckPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 500
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 501
    .local v3, flinger:Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 503
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 504
    .local v4, reply:Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 507
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 509
    .local v6, showCpu:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .local v2, enableGL:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 511
    .local v7, showUpdates:I
    iget-object v11, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 513
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 514
    .local v5, showBackground:I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .local v1, disableOverlays:I
    iget-object v10, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 516
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v3           #flinger:Landroid/os/IBinder;
    .end local v4           #reply:Landroid/os/Parcel;
    .end local v5           #showBackground:I
    .end local v6           #showCpu:I
    .end local v7           #showUpdates:I
    :cond_0
    :goto_2
    return-void

    .restart local v0       #data:Landroid/os/Parcel;
    .restart local v2       #enableGL:I
    .restart local v3       #flinger:Landroid/os/IBinder;
    .restart local v4       #reply:Landroid/os/Parcel;
    .restart local v6       #showCpu:I
    .restart local v7       #showUpdates:I
    :cond_1
    move v10, v9

    .line 511
    goto :goto_0

    .restart local v1       #disableOverlays:I
    .restart local v5       #showBackground:I
    :cond_2
    move v8, v9

    .line 515
    goto :goto_1

    .line 519
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #enableGL:I
    .end local v3           #flinger:Landroid/os/IBinder;
    .end local v4           #reply:Landroid/os/Parcel;
    .end local v5           #showBackground:I
    .end local v6           #showCpu:I
    .end local v7           #showUpdates:I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 559
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 382
    const/4 v3, 0x1

    .line 383
    .local v3, index:I
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 384
    .local v1, hdcpChecking:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 385
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 389
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    move v3, v2

    .line 394
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 395
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 388
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 626
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 628
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0543

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b0542

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 485
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 703
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 705
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 580
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 493
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 495
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 474
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 475
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 569
    return-void
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 659
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 660
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 659
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 662
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 689
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 690
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 691
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 689
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 692
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 605
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 606
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 610
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 615
    :goto_1
    return-void

    .line 606
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 613
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 594
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 597
    return-void

    .line 594
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 542
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 543
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 547
    .local v1, disableOverlays:I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #disableOverlays:I
    .end local v2           #flinger:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeEnableTracesOptions()V
    .locals 6

    .prologue
    .line 731
    const-wide/16 v1, 0x0

    .line 732
    .local v1, value:J
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 734
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/preference/MultiCheckPreference;->getValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 735
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 740
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 741
    return-void
.end method

.method private writeEnableTracesOptions(J)V
    .locals 3
    .parameter

    .prologue
    .line 744
    const-string v0, "debug.atrace.tags.enableflags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 747
    return-void
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 562
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 564
    return-void

    .line 562
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 619
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    return-void

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 583
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 586
    return-void

    .line 583
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 525
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 526
    .local v1, flinger:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 528
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 530
    .local v2, showUpdates:I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #flinger:Landroid/os/IBinder;
    .end local v2           #showUpdates:I
    :cond_1
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 471
    :goto_1
    return-void

    .line 467
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions()V
    .locals 2

    .prologue
    .line 572
    const-string v1, "debug.hwui.profile"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 575
    return-void

    .line 572
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 250
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 251
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 778
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 779
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 780
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 781
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 782
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 751
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 752
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 753
    if-eqz p2, :cond_2

    .line 754
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 755
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 756
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b047a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0479

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 764
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 766
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 767
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    iput-boolean p2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 770
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 898
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 899
    if-ne p2, v1, :cond_1

    .line 900
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 901
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 908
    if-ne p2, v1, :cond_3

    .line 909
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 910
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 912
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 913
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 166
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 170
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 172
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v3, "keep_screen_on"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 174
    const-string v3, "enforce_read_external"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    .line 175
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 176
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 177
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 180
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 182
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 184
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 186
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 188
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 189
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    .line 190
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 191
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 192
    const-string v3, "window_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 193
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    const-string v3, "transition_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 196
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    const-string v3, "animator_duration_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 199
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v3, "enable_traces"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/MultiCheckPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    .line 202
    sget-object v3, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/String;

    .line 203
    .local v2, traceValues:[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 204
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    sget-object v4, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, v2}, Landroid/preference/MultiCheckPreference;->setEntryValues([Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v3, p0}, Landroid/preference/MultiCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 213
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v3, "app_process_limit"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 216
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 221
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 225
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 939
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 940
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 923
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 924
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 927
    :cond_0
    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 934
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 929
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    .line 930
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 932
    :cond_3
    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 862
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 865
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 883
    :goto_0
    return v0

    .line 867
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 868
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 870
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 871
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 873
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 874
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 876
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    if-ne p1, v2, :cond_4

    .line 877
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions()V

    goto :goto_0

    .line 879
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 880
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 883
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 792
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v1

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 797
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 798
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 800
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0478

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0477

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 807
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 813
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 817
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 818
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 819
    invoke-static {p0}, Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;->show(Lcom/android/OriginalSettings/DevelopmentSettings;)V

    goto/16 :goto_0

    .line 821
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 823
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 824
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    .line 827
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_b

    .line 828
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 829
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 830
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 831
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 832
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 833
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 834
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 835
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 836
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 837
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 838
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 839
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 840
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 841
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    .line 842
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 843
    :cond_12
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 844
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 845
    :cond_13
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 846
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 847
    :cond_14
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 848
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 849
    :cond_15
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 850
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeTrackFrameTimeOptions()V

    goto/16 :goto_0

    .line 851
    :cond_16
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 852
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 853
    :cond_17
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 295
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 297
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 308
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 310
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 311
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 313
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 321
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 323
    :cond_1
    return-void

    .line 304
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 256
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 257
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 264
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 268
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 946
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 326
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 328
    return-void
.end method
