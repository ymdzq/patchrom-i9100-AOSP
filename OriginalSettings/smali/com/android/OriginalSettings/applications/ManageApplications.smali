.class public Lcom/android/OriginalSettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/OriginalSettings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 169
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 1215
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$2;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 987
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 988
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 991
    const-class v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03a5

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 993
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1061
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1062
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1063
    const v1, 0x7f0b03c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1064
    const v1, 0x7f0b03c9

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1065
    const v1, 0x7f0b00e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1066
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1067
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1069
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 969
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 972
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1083
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1085
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1086
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1087
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/applications/ManageApplications$1;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1148
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 805
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 807
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 809
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 810
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 811
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_0
    if-nez v0, :cond_0

    .line 816
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 818
    :cond_0
    const-class v1, Lcom/android/OriginalSettings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v8

    .line 831
    :goto_1
    if-eqz p1, :cond_8

    .line 832
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 833
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 834
    if-eq v0, v5, :cond_7

    .line 835
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 838
    :goto_3
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    .line 840
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 842
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 844
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 845
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b03e7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 847
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03ce

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 850
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 853
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03d0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 856
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_2
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03cf

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 862
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b03cd

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/OriginalSettings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 867
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    return-void

    .line 813
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 821
    :cond_4
    const-class v1, Lcom/android/OriginalSettings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    move v1, v7

    .line 825
    goto/16 :goto_1

    .line 826
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v7

    .line 828
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 997
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1001
    const v0, 0x7f0b03c2

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1004
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b03c3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1007
    const/4 v0, 0x6

    const v1, 0x7f0b03c4

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1009
    const/4 v0, 0x7

    const v1, 0x7f0b03c5

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1011
    const/16 v0, 0x8

    const v1, 0x7f0b03c6

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1014
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 876
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040037

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 878
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 879
    iput-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 881
    const v5, 0x7f08009e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 882
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V

    .line 883
    .local v0, adapter:Lcom/android/OriginalSettings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 884
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 885
    const v5, 0x7f08009f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 886
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 890
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 891
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 894
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->buildResetDialog()V

    .line 898
    :cond_1
    if-nez p3, :cond_2

    .line 900
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 901
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 902
    .local v3, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 903
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 909
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 900
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1029
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1030
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1024
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 958
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 962
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->detachView()V

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1076
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1180
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1181
    iget-object v1, p1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1182
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1183
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1185
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1153
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1154
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 1155
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1174
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1175
    :cond_2
    return v1

    .line 1158
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1159
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1160
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1163
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1164
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 1165
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1168
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1169
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 940
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 941
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 942
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1019
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 919
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 921
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 922
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 923
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 928
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 929
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 930
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 934
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 936
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 914
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 915
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 949
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 950
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 952
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 954
    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 975
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 976
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 977
    .local v1, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 981
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 975
    .restart local v1       #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1188
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1189
    .local v3, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1192
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1193
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1194
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1198
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1199
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    .line 1200
    .local v2, t:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1201
    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    .line 1198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1196
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1205
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1206
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1208
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1211
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1033
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurTab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1042
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/ManageApplications;->tabForType(I)Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1043
    .local v1, tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;->access$1000(Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;)Lcom/android/OriginalSettings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1045
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1046
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1047
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1048
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1049
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1043
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1048
    goto :goto_2

    .line 1051
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/OriginalSettings/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1052
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1053
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1055
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1051
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1052
    goto :goto_4
.end method
