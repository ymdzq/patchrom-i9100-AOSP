.class public Lcom/android/OriginalSettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/OriginalSettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/OriginalSettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1337
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 207
    iput v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 238
    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 244
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    .line 250
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 649
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$2;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 664
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$3;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1012
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$4;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1033
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$5;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1047
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$6;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1063
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$7;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1073
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$8;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1087
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$9;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1186
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$10;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1217
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$11;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1270
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$12;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2110
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/net/ChartData;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Lcom/android/OriginalSettings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 600
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 601
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2089
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2090
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2102
    :goto_0
    return-object v0

    .line 2092
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2102
    goto :goto_0

    .line 2094
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2096
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2098
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2100
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 593
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 586
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 587
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 589
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 590
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 591
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 592
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1341
    .line 1343
    sget-object v8, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1344
    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1345
    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1347
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1265
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1267
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 888
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 889
    .local v0, appId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getAppPolicy(I)I

    move-result v1

    .line 890
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 871
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2186
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2174
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2175
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2178
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2209
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2210
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2255
    const v0, 0x7f040020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2257
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2246
    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2247
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2249
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2324
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2325
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2329
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2330
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2331
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2333
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2334
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2335
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 865
    :goto_0
    return v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 845
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1247
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1249
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1251
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 857
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 896
    .local v0, appId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setAppPolicy(II)V

    .line 898
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 899
    return-void

    .line 896
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 878
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 879
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 880
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 852
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 853
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 854
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1258
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1260
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1262
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 831
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 832
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter "warningBytes"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 826
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2351
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2352
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2353
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2354
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2342
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2343
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2344
    return-void
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 758
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 760
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 762
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 773
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 776
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/OriginalSettings/DataUsageSummary$AppItem;->appId:I

    .line 777
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v2

    .line 778
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 780
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 781
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 782
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 783
    iget-object v10, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 765
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 768
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 820
    :goto_1
    return-void

    .line 786
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 791
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 792
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 793
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 794
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 798
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 806
    :goto_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    .line 808
    invoke-static {v6}, Landroid/os/UserId;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b05f6

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 811
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b05f7

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 797
    goto :goto_2

    .line 802
    :cond_4
    iput-object v13, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 803
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 818
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 679
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 684
    if-nez v1, :cond_1

    .line 685
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 692
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 693
    :cond_2
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 697
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 700
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 702
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 703
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b05f2

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 704
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b05e7

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 705
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 738
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/OriginalSettings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 742
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 744
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    goto :goto_0

    .line 707
    :cond_3
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b05f3

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 709
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b05e9

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 711
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 713
    :cond_4
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 714
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b05f4

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 715
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b05e8

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 717
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 719
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 723
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 725
    :cond_6
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 729
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 732
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 946
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 947
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 949
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 953
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_8

    .line 954
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 955
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 958
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 959
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 960
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 963
    :goto_2
    if-eqz p1, :cond_5

    .line 965
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 968
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 969
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 970
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 974
    const/4 v0, 0x1

    move-wide v4, v2

    .line 975
    goto :goto_3

    .line 978
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 981
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 984
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 985
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 986
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 988
    goto :goto_5

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 995
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 996
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1001
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1010
    :goto_6
    return-void

    .line 1005
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1008
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1129
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1134
    const/4 v7, 0x0

    .line 1135
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1138
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1139
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1140
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1142
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1144
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->removeAllSlices()V

    .line 1145
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1146
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1148
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->generatePath()V

    .line 1150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1168
    :goto_0
    if-eqz v7, :cond_3

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1169
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1170
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1173
    const-string v0, "mobile"

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3g"

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4g"

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentApp:Lcom/android/OriginalSettings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1175
    :cond_0
    const v0, 0x7f0b060e

    .line 1180
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1184
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1164
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/OriginalSettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1168
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1177
    :cond_4
    const v0, 0x7f0b060d

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 906
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 914
    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 915
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 916
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 919
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 920
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 921
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 922
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 923
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 933
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 935
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 937
    :cond_2
    return-void

    .line 909
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 922
    goto :goto_1

    .line 929
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 611
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 613
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 614
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 615
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b05ef

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 616
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b05ee

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 620
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b05eb

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 623
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b05ec

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 628
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 629
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 630
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 631
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 633
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    .line 637
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 644
    :cond_3
    :goto_5
    return-void

    .line 617
    :cond_4
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b05ed

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 627
    goto :goto_1

    :cond_6
    move v1, v2

    .line 628
    goto :goto_2

    .line 629
    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    .line 635
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 638
    :cond_9
    if-eqz v0, :cond_3

    .line 640
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 2221
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2222
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2225
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2227
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2238
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2230
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 2231
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2234
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 2238
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, context:Landroid/content/Context;
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 269
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 271
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 272
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 276
    new-instance v1, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->read()V

    .line 279
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 280
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 283
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 288
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 289
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 442
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 443
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f040028

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 298
    .local v3, view:Landroid/view/View;
    new-instance v4, Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 301
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 307
    const v4, 0x7f080051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 308
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 309
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 313
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x200

    if-ne v4, v7, :cond_1

    move v2, v5

    .line 315
    .local v2, shouldInset:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050027

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 323
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v5}, Lcom/android/OriginalSettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 325
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 326
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 328
    const v4, 0x7f040026

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 329
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 331
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 332
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 334
    iget v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 336
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 337
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 342
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08004e

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 344
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08004f

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 346
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 347
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 348
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 349
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 352
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 353
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 354
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v7}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 355
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 356
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 357
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080044

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 363
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f080045

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 364
    new-instance v4, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    .line 365
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 366
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 368
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08003b

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    .line 369
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setListener(Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 370
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v4, v9}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 374
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080046

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 375
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080047

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 376
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080048

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 377
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08004b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/OriginalSettings/widget/PieChartView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    .line 378
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080049

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 379
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08004a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 380
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08004d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 382
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08004c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 383
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 386
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 387
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 388
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 389
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 390
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 391
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f080050

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 396
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 398
    new-instance v4, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v5, v6}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/OriginalSettings/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    .line 399
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 400
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 402
    return-object v3

    .line 302
    .end local v2           #shouldInset:Z
    :catch_0
    move-exception v1

    .line 303
    .local v1, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    move v2, v6

    .line 313
    goto/16 :goto_0

    .line 319
    .restart local v2       #shouldInset:Z
    :cond_2
    iput v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 561
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 562
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 564
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->clearCache()V

    .line 565
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 574
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 575
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 503
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 556
    :goto_0
    return v7

    .line 505
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 506
    :goto_1
    if-eqz v0, :cond_1

    .line 507
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 505
    goto :goto_1

    .line 510
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 516
    :goto_2
    if-eqz v0, :cond_3

    .line 517
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 515
    goto :goto_2

    .line 520
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 525
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v7

    .line 526
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 527
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 528
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 532
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 535
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 539
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 540
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 541
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 542
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 546
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 547
    const-class v1, Lcom/android/OriginalSettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b060f

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 552
    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    move v6, v7

    :cond_7
    invoke-static {p0, v6}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x7f0801e3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 447
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 448
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 450
    .local v0, appDetailMode:Z
    const v9, 0x7f0801e3

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 451
    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v0, :cond_1

    move v9, v10

    :goto_0
    invoke-interface {v12, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getDataRoaming()Z

    move-result v12

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 454
    const v9, 0x7f0801e4

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 455
    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v0, :cond_2

    move v9, v10

    :goto_1
    invoke-interface {v12, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v12}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v12

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 458
    const v9, 0x7f0801e6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 459
    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 461
    const v9, 0x7f0801e5

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 462
    .local v8, split4g:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v0, :cond_3

    move v9, v10

    :goto_2
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 465
    const v9, 0x7f0801e7

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 466
    .local v7, showWifi:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 467
    if-nez v0, :cond_4

    move v9, v10

    :goto_3
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    iget-boolean v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 473
    :goto_4
    const v9, 0x7f0801e8

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 474
    .local v6, showEthernet:Landroid/view/MenuItem;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 475
    if-nez v0, :cond_6

    move v9, v10

    :goto_5
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    iget-boolean v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 481
    :goto_6
    const v9, 0x7f0801e9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 482
    .local v5, metered:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 483
    :cond_0
    if-nez v0, :cond_8

    :goto_7
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 488
    :goto_8
    const v9, 0x7f0801ea

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 490
    .local v2, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0659

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, helpUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 491
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 492
    .local v3, helpIntent:Landroid/content/Intent;
    const/high16 v9, 0x1080

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 495
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 499
    .end local v3           #helpIntent:Landroid/content/Intent;
    :goto_9
    return-void

    .end local v2           #help:Landroid/view/MenuItem;
    .end local v4           #helpUrl:Ljava/lang/String;
    .end local v5           #metered:Landroid/view/MenuItem;
    .end local v6           #showEthernet:Landroid/view/MenuItem;
    .end local v7           #showWifi:Landroid/view/MenuItem;
    .end local v8           #split4g:Landroid/view/MenuItem;
    :cond_1
    move v9, v11

    .line 451
    goto/16 :goto_0

    :cond_2
    move v9, v11

    .line 455
    goto/16 :goto_1

    .restart local v8       #split4g:Landroid/view/MenuItem;
    :cond_3
    move v9, v11

    .line 462
    goto/16 :goto_2

    .restart local v7       #showWifi:Landroid/view/MenuItem;
    :cond_4
    move v9, v11

    .line 467
    goto :goto_3

    .line 470
    :cond_5
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .restart local v6       #showEthernet:Landroid/view/MenuItem;
    :cond_6
    move v9, v11

    .line 475
    goto :goto_5

    .line 478
    :cond_7
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .restart local v5       #metered:Landroid/view/MenuItem;
    :cond_8
    move v10, v11

    .line 483
    goto :goto_7

    .line 485
    :cond_9
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .line 497
    .restart local v2       #help:Landroid/view/MenuItem;
    .restart local v4       #helpUrl:Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 407
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 410
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 411
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    .line 418
    new-instance v1, Lcom/android/OriginalSettings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/DataUsageSummary$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 884
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 885
    return-void
.end method
