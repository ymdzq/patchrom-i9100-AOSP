.class public Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

.field private mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 86
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 131
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 132
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 133
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 134
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 135
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 136
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 137
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 165
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 954
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 984
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 967
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 982
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 973
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 975
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 977
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 945
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 946
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 947
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 948
    .local v1, newEnt:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_0

    .line 949
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 952
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 252
    const-string v0, ""

    :goto_0
    return-object v0

    .line 240
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 213
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0b03b8

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b03ca

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 256
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 261
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 262
    :goto_1
    const/4 v1, 0x1

    .line 263
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 264
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b03eb

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 274
    :goto_2
    if-eqz v1, :cond_5

    .line 275
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 261
    goto :goto_1

    .line 265
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 266
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b03ec

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 268
    const/4 v1, 0x0

    goto :goto_2

    .line 270
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f0b03ed

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 271
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 272
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 277
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 342
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 344
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 346
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 351
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 357
    :goto_1
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 347
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 294
    const/4 v1, 0x1

    .line 295
    .local v1, enabled:Z
    iget-boolean v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_3

    .line 296
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b03b9

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 331
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const/4 v1, 0x0

    .line 334
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 335
    if-eqz v1, :cond_2

    .line 337
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_2
    return-void

    .line 298
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 299
    const/4 v1, 0x0

    .line 305
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 307
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 311
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 313
    :cond_5
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b03b6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_7

    .line 315
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b03b6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 316
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :cond_7
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b03b7

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 326
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :cond_8
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b03b5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 773
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 779
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 780
    if-nez v0, :cond_1

    .line 782
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b03d5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 284
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 285
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 288
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 725
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 726
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 727
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0b03b8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 728
    if-ne v0, v4, :cond_0

    .line 729
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 734
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 735
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 751
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 752
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 754
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 755
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 756
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 762
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 763
    return-void

    .line 760
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 740
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 741
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 742
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 748
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0b03ee

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 745
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 664
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 666
    :cond_0
    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 667
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 674
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 718
    :goto_0
    return-void

    .line 677
    :cond_2
    iput-boolean v9, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 678
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->codeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 679
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->codeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 680
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->codeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_3
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 683
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 684
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :cond_4
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 687
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 688
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    sub-long v2, v4, v6

    .line 691
    .local v2, nonCacheExtDataSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 692
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 693
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v4, v6

    .line 696
    .local v0, cacheSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_7

    .line 697
    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 698
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    :cond_7
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 701
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 702
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v4, :cond_a

    .line 706
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 711
    :goto_1
    cmp-long v4, v0, v12

    if-gtz v4, :cond_b

    .line 712
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 708
    :cond_a
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 709
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 714
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 715
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 41

    .prologue
    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_0

    .line 483
    const/16 v36, 0x1

    .line 645
    :goto_0
    return v36

    .line 485
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    .line 486
    .local v10, args:Landroid/os/Bundle;
    if-eqz v10, :cond_2

    const-string v36, "package"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 487
    .local v25, packageName:Ljava/lang/String;
    :goto_1
    if-nez v25, :cond_1

    .line 488
    if-nez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 490
    .local v23, intent:Landroid/content/Intent;
    :goto_2
    if-eqz v23, :cond_1

    .line 491
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v25

    .line 494
    .end local v23           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v36, v0

    if-nez v36, :cond_4

    .line 497
    const/16 v36, 0x0

    goto :goto_0

    .line 486
    .end local v25           #packageName:Ljava/lang/String;
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 488
    .restart local v25       #packageName:Ljava/lang/String;
    :cond_3
    const-string v36, "intent"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    move-object/from16 v23, v36

    goto :goto_2

    .line 502
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x2240

    invoke-virtual/range {v36 .. v38}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v30, prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v24, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 519
    const/16 v21, 0x0

    .line 521
    .local v21, hasUsbDefaults:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    .line 525
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v20

    .line 528
    .local v20, hasBindAppWidgetPermission:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f080087

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 529
    .local v14, autoLaunchTitleView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f080088

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 530
    .local v15, autoLaunchView:Landroid/widget/TextView;
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v36

    if-gtz v36, :cond_5

    if-eqz v21, :cond_6

    :cond_5
    const/4 v13, 0x1

    .line 531
    .local v13, autoLaunchEnabled:Z
    :goto_4
    if-nez v13, :cond_7

    if-nez v20, :cond_7

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 571
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const-string v37, "activity"

    invoke-virtual/range {v36 .. v37}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 573
    .local v8, am:Landroid/app/ActivityManager;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v17

    .line 584
    .local v17, compatMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v36, v0

    const/16 v37, 0x8

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setVisibility(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f08008d

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/LinearLayout;

    .line 589
    .local v27, permsView:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    .local v11, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v36

    if-lez v36, :cond_17

    .line 591
    const/16 v36, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    const v36, 0x7f08008f

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    .line 595
    .local v33, securityList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v33 .. v33}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 596
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v26

    .line 600
    .local v26, packages:[Ljava/lang/String;
    if-eqz v26, :cond_12

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_12

    .line 601
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v29, pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v22, 0x0

    .local v22, i:I
    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v22

    move/from16 v1, v36

    if-ge v0, v1, :cond_11

    .line 603
    aget-object v28, v26, v22

    .line 604
    .local v28, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 602
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 506
    .end local v8           #am:Landroid/app/ActivityManager;
    .end local v11           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v13           #autoLaunchEnabled:Z
    .end local v14           #autoLaunchTitleView:Landroid/widget/TextView;
    .end local v15           #autoLaunchView:Landroid/widget/TextView;
    .end local v17           #compatMode:I
    .end local v20           #hasBindAppWidgetPermission:Z
    .end local v21           #hasUsbDefaults:Z
    .end local v22           #i:I
    .end local v24           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v26           #packages:[Ljava/lang/String;
    .end local v27           #permsView:Landroid/widget/LinearLayout;
    .end local v28           #pkg:Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v30           #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33           #securityList:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v19

    .line 507
    .local v19, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v36, "InstalledAppDetails"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Exception when retrieving package:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 522
    .end local v19           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21       #hasUsbDefaults:Z
    .restart local v24       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v30       #prefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v19

    .line 523
    .local v19, e:Landroid/os/RemoteException;
    const-string v36, "InstalledAppDetails"

    const-string v37, "mUsbManager.hasDefaults"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 530
    .end local v19           #e:Landroid/os/RemoteException;
    .restart local v14       #autoLaunchTitleView:Landroid/widget/TextView;
    .restart local v15       #autoLaunchView:Landroid/widget/TextView;
    .restart local v20       #hasBindAppWidgetPermission:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 534
    .restart local v13       #autoLaunchEnabled:Z
    :cond_7
    if-eqz v20, :cond_c

    if-eqz v13, :cond_c

    const/16 v35, 0x1

    .line 536
    .local v35, useBullets:Z
    :goto_8
    if-eqz v20, :cond_d

    .line 537
    const v36, 0x7f0b03a8

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 542
    :goto_9
    const/16 v34, 0x0

    .line 543
    .local v34, text:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0d000b

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 545
    .local v16, bulletIndent:I
    if-eqz v13, :cond_9

    .line 546
    const v36, 0x7f0b03ba

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 547
    .local v12, autoLaunchEnableText:Ljava/lang/CharSequence;
    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 548
    .local v32, s:Landroid/text/SpannableString;
    if-eqz v35, :cond_8

    .line 549
    new-instance v36, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v37, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 551
    :cond_8
    if-nez v34, :cond_e

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v32, v36, v37

    const/16 v37, 0x1

    const-string v38, "\n"

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    .line 554
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .end local v32           #s:Landroid/text/SpannableString;
    :cond_9
    :goto_a
    if-eqz v20, :cond_b

    .line 555
    const v36, 0x7f0b03bb

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 557
    .local v7, alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 558
    .restart local v32       #s:Landroid/text/SpannableString;
    if-eqz v35, :cond_a

    .line 559
    new-instance v36, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v37, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 562
    :cond_a
    if-nez v34, :cond_f

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v32, v36, v37

    const/16 v37, 0x1

    const-string v38, "\n"

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    .line 565
    .end local v7           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v32           #s:Landroid/text/SpannableString;
    :cond_b
    :goto_b
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 534
    .end local v16           #bulletIndent:I
    .end local v34           #text:Ljava/lang/CharSequence;
    .end local v35           #useBullets:Z
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_8

    .line 539
    .restart local v35       #useBullets:Z
    :cond_d
    const v36, 0x7f0b03a7

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 551
    .restart local v12       #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v16       #bulletIndent:I
    .restart local v32       #s:Landroid/text/SpannableString;
    .restart local v34       #text:Ljava/lang/CharSequence;
    :cond_e
    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v34, v36, v37

    const/16 v37, 0x1

    const-string v38, "\n"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    aput-object v32, v36, v37

    const/16 v37, 0x3

    const-string v38, "\n"

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    goto/16 :goto_a

    .line 562
    .end local v12           #autoLaunchEnableText:Ljava/lang/CharSequence;
    .restart local v7       #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    :cond_f
    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v34, v36, v37

    const/16 v37, 0x1

    const-string v38, "\n"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    aput-object v32, v36, v37

    const/16 v37, 0x3

    const-string v38, "\n"

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v34

    goto :goto_b

    .line 608
    .end local v7           #alwaysAllowBindAppWidgetsText:Ljava/lang/CharSequence;
    .end local v16           #bulletIndent:I
    .end local v32           #s:Landroid/text/SpannableString;
    .end local v34           #text:Ljava/lang/CharSequence;
    .end local v35           #useBullets:Z
    .restart local v8       #am:Landroid/app/ActivityManager;
    .restart local v11       #asp:Landroid/widget/AppSecurityPermissions;
    .restart local v17       #compatMode:I
    .restart local v22       #i:I
    .restart local v26       #packages:[Ljava/lang/String;
    .restart local v27       #permsView:Landroid/widget/LinearLayout;
    .restart local v28       #pkg:Ljava/lang/String;
    .restart local v29       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v33       #securityList:Landroid/widget/LinearLayout;
    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 609
    .local v6, ainfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 610
    .end local v6           #ainfo:Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v36

    goto/16 :goto_7

    .line 613
    .end local v28           #pkg:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 614
    .local v5, N:I
    if-lez v5, :cond_12

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 617
    .local v31, res:Landroid/content/res/Resources;
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v5, v0, :cond_13

    .line 618
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/CharSequence;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 631
    .local v9, appListStr:Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f08008e

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 633
    .local v18, descr:Landroid/widget/TextView;
    const v36, 0x7f0b03e2

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v9, v37, v38

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    .end local v5           #N:I
    .end local v9           #appListStr:Ljava/lang/String;
    .end local v18           #descr:Landroid/widget/TextView;
    .end local v22           #i:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v31           #res:Landroid/content/res/Resources;
    .end local v33           #securityList:Landroid/widget/LinearLayout;
    :cond_12
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 643
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 644
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 645
    const/16 v36, 0x1

    goto/16 :goto_0

    .line 619
    .restart local v5       #N:I
    .restart local v22       #i:I
    .restart local v26       #packages:[Ljava/lang/String;
    .restart local v29       #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v31       #res:Landroid/content/res/Resources;
    .restart local v33       #securityList:Landroid/widget/LinearLayout;
    :cond_13
    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v5, v0, :cond_14

    .line 620
    const v36, 0x7f0b03e3

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #appListStr:Ljava/lang/String;
    goto/16 :goto_c

    .line 623
    .end local v9           #appListStr:Ljava/lang/String;
    :cond_14
    add-int/lit8 v36, v5, -0x2

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/CharSequence;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 624
    .restart local v9       #appListStr:Ljava/lang/String;
    add-int/lit8 v22, v5, -0x3

    :goto_e
    if-ltz v22, :cond_16

    .line 625
    if-nez v22, :cond_15

    const v36, 0x7f0b03e5

    :goto_f
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    aput-object v9, v37, v38

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 624
    add-int/lit8 v22, v22, -0x1

    goto :goto_e

    .line 625
    :cond_15
    const v36, 0x7f0b03e6

    goto :goto_f

    .line 628
    :cond_16
    const v36, 0x7f0b03e4

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v9, v37, v38

    const/16 v38, 0x1

    add-int/lit8 v39, v5, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c

    .line 638
    .end local v5           #N:I
    .end local v9           #appListStr:Ljava/lang/String;
    .end local v22           #i:I
    .end local v26           #packages:[Ljava/lang/String;
    .end local v29           #pnames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v31           #res:Landroid/content/res/Resources;
    .end local v33           #securityList:Landroid/widget/LinearLayout;
    :cond_17
    const/16 v36, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter "title"
    .parameter "autoLaunchView"

    .prologue
    .line 649
    const v0, 0x7f0b03a7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 650
    const v0, 0x7f0b03bc

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 652
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 653
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 418
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f080072

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f080047

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 420
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 421
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    const v3, 0x7f0800a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 424
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v3, 0x7f0800a1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 428
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b03ea

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 657
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 658
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 660
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 661
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1005
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1006
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1009
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1010
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 790
    invoke-static {p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 791
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 792
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 937
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 939
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 940
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 964
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1084
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1085
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1087
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1088
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1090
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1092
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    .line 1093
    if-nez p2, :cond_4

    .line 1094
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1096
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1021
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1022
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 1023
    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1024
    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1027
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1028
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1030
    :cond_2
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1035
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 1038
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1039
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1048
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f080088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1049
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1050
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1051
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1052
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1059
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1061
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1063
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 1064
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1066
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1067
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 1068
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1070
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 1072
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1074
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 1076
    :cond_c
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1077
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1078
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 365
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->newSession(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    .line 366
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 367
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 368
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 369
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 370
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 372
    new-instance v1, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    .line 373
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f080143

    const v5, 0x7f080142

    .line 377
    const v3, 0x7f040031

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 379
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b03e7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 382
    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 383
    const v3, 0x7f080079

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 384
    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 385
    const v3, 0x7f08007b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 386
    const v3, 0x7f080080

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 389
    const v3, 0x7f080073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 390
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 391
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f0b03af

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 392
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 393
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    const v3, 0x7f080081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 397
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 398
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 401
    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 402
    const v3, 0x7f080086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 404
    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 407
    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 408
    const v3, 0x7f08008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 409
    const v3, 0x7f08008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 411
    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 413
    return-object v2
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 464
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 475
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 450
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->pause()V

    .line 451
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 439
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 441
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 442
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 445
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 479
    return-void
.end method
