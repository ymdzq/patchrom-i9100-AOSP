.class public Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$3;
    }
.end annotation


# static fields
.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 96
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 800
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 700
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 701
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 703
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 704
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 706
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020056

    iget-wide v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 709
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/OriginalSettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 760
    iget-wide v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 761
    :cond_0
    iget-wide v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 762
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 764
    .local v0, bs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->usageTime:J

    .line 765
    iput p5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->iconId:I

    .line 766
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 693
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 695
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020060

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 697
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 8
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v5, v3

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 614
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020065

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 616
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 11
    .parameter

    .prologue
    .line 640
    const-wide/16 v1, 0x0

    .line 642
    const-wide/16 v3, 0x0

    .line 643
    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 644
    iget-object v5, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v5, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 645
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    long-to-double v7, v7

    iget-object v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "radio.on"

    invoke-virtual {v9, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 647
    add-long/2addr v3, v5

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 650
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v6, v1, v5

    .line 652
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020058

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 655
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v1, v2, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    long-to-double v1, v1

    const-wide/high16 v5, 0x4059

    mul-double/2addr v1, v5

    long-to-double v3, v3

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 659
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x3e8

    .line 619
    const-wide/16 v0, 0x0

    .line 620
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    div-long v3, v2, v11

    .line 621
    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double v1, v0, v5

    .line 622
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v0, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    .line 624
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v0, v7, :cond_0

    .line 625
    int-to-float v7, v0

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-double v7, v7

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x4014

    div-double/2addr v7, v9

    .line 627
    iget-object v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v10, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v9, v0, p1, p2, v10}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 628
    long-to-double v9, v9

    mul-double/2addr v7, v9

    add-double/2addr v1, v7

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double v6, v1, v5

    .line 635
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02005c

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 637
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v0, 0x0

    .line 676
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    div-long v5, v2, v7

    .line 677
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v7

    .line 680
    iget-wide v7, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long v3, v2, v7

    .line 681
    cmp-long v2, v3, v0

    if-gez v2, :cond_0

    move-wide v3, v0

    .line 682
    :cond_0
    mul-long/2addr v0, v5

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 686
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b04c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020066

    iget-wide v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v2, "WIFI"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/OriginalSettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method private aggregateSippers(Lcom/android/OriginalSettings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 663
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 665
    .local v1, wbs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 666
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 667
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 668
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 669
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 670
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 671
    iget-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v1           #wbs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 713
    .line 715
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double v2, v0, v2

    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L

    div-double v4, v0, v4

    .line 719
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 721
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 723
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 724
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 728
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 729
    const-wide v4, 0x40fe848000000000L

    div-double/2addr v2, v4

    .line 730
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 731
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 734
    :goto_1
    return-wide v0

    .line 724
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 734
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 775
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 776
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    .line 780
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 81

    .prologue
    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/hardware/SensorManager;

    .line 423
    .local v48, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v77, v0

    .line 424
    .local v77, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v53

    .line 425
    .local v53, speedSteps:I
    move/from16 v0, v53

    new-array v0, v0, [D

    move-object/from16 v38, v0

    .line 426
    .local v38, powerCpuNormal:[D
    move/from16 v0, v53

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 427
    .local v20, cpuSpeedStepTimes:[J
    const/16 v35, 0x0

    .local v35, p:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v53

    if-ge v0, v1, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v38, v35

    .line 427
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    .line 431
    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v65

    .line 432
    .local v65, uSecTime:J
    const-wide/16 v14, 0x0

    .line 433
    .local v14, appWakelockTime:J
    const/16 v34, 0x0

    .line 434
    .local v34, osApp:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v65

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v67

    .line 436
    .local v67, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v67 .. v67}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 437
    .local v13, NU:I
    const/16 v31, 0x0

    .local v31, iu:I
    :goto_1
    move/from16 v0, v31

    if-ge v0, v13, :cond_14

    .line 438
    move-object/from16 v0, v67

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 439
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v36, 0x0

    .line 440
    .local v36, power:D
    const-wide/16 v28, 0x0

    .line 441
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 443
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v41

    .line 444
    .local v41, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 445
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 446
    .local v18, cpuFgTime:J
    const-wide/16 v75, 0x0

    .line 447
    .local v75, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 448
    .local v26, gpsTime:J
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 451
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 453
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Proc;

    .line 454
    .local v42, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v68

    .line 455
    .local v68, userTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v55

    .line 456
    .local v55, systemTime:J
    move-object/from16 v0, v42

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 457
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 458
    add-long v5, v68, v55

    const-wide/16 v9, 0xa

    mul-long v62, v5, v9

    .line 459
    .local v62, tmpCpuTime:J
    const/16 v64, 0x0

    .line 461
    .local v64, totalTimeAtSpeeds:I
    const/16 v54, 0x0

    .local v54, step:I
    :goto_3
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_2

    .line 462
    move-object/from16 v0, v42

    move/from16 v1, v54

    move/from16 v2, v77

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v54

    .line 463
    move/from16 v0, v64

    int-to-long v5, v0

    aget-wide v9, v20, v54

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v64, v0

    .line 461
    add-int/lit8 v54, v54, 0x1

    goto :goto_3

    .line 465
    :cond_2
    if-nez v64, :cond_3

    const/16 v64, 0x1

    .line 467
    :cond_3
    const-wide/16 v39, 0x0

    .line 468
    .local v39, processPower:D
    const/16 v54, 0x0

    :goto_4
    move/from16 v0, v54

    move/from16 v1, v53

    if-ge v0, v1, :cond_4

    .line 469
    aget-wide v5, v20, v54

    long-to-double v5, v5

    move/from16 v0, v64

    int-to-double v9, v0

    div-double v43, v5, v9

    .line 470
    .local v43, ratio:D
    move-wide/from16 v0, v62

    long-to-double v5, v0

    mul-double v5, v5, v43

    aget-wide v9, v38, v54

    mul-double/2addr v5, v9

    add-double v39, v39, v5

    .line 468
    add-int/lit8 v54, v54, 0x1

    goto :goto_4

    .line 472
    .end local v43           #ratio:D
    :cond_4
    add-long v21, v21, v62

    .line 473
    add-double v36, v36, v39

    .line 474
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 476
    :cond_5
    move-wide/from16 v28, v39

    .line 477
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 478
    :cond_6
    cmpg-double v5, v28, v39

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    move-wide/from16 v28, v39

    .line 481
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 487
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v39           #processPower:D
    .end local v42           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v54           #step:I
    .end local v55           #systemTime:J
    .end local v62           #tmpCpuTime:J
    .end local v64           #totalTimeAtSpeeds:I
    .end local v68           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 491
    move-wide/from16 v21, v18

    .line 493
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v36, v36, v5

    .line 496
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v74

    .line 498
    .local v74, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v74 .. v74}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/util/Map$Entry;

    .line 499
    .local v73, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v73 .. v73}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 502
    .local v72, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 503
    .local v61, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v61, :cond_9

    .line 504
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v75, v75, v5

    goto :goto_5

    .line 507
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    .end local v72           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v73           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v75, v75, v5

    .line 508
    add-long v14, v14, v75

    .line 511
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 515
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v57

    .line 516
    .local v57, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v59

    .line 517
    .local v59, tcpBytesSent:J
    add-long v5, v57, v59

    long-to-double v5, v5

    mul-double v5, v5, v16

    add-double v36, v36, v5

    .line 520
    move-wide/from16 v0, v65

    move/from16 v2, v77

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v78, v5, v9

    .line 521
    .local v78, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v78

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 522
    move-wide/from16 v0, v78

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 526
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v49

    .line 528
    .local v49, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/Map$Entry;

    .line 529
    .local v47, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Sensor;

    .line 530
    .local v45, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v52

    .line 531
    .local v52, sensorType:I
    invoke-virtual/range {v45 .. v45}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v61

    .line 532
    .restart local v61       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v61

    move-wide/from16 v1, v65

    move/from16 v3, v77

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v50, v5, v9

    .line 533
    .local v50, sensorTime:J
    const-wide/16 v32, 0x0

    .line 534
    .local v32, multiplier:D
    packed-switch v52, :pswitch_data_0

    .line 540
    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v46

    .line 542
    .local v46, sensorData:Landroid/hardware/Sensor;
    if-eqz v46, :cond_b

    .line 543
    invoke-virtual/range {v46 .. v46}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v32, v0

    .line 550
    .end local v46           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v50

    long-to-double v5, v0

    mul-double v5, v5, v32

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v36, v36, v5

    .line 551
    goto :goto_6

    .line 536
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v32

    .line 537
    move-wide/from16 v26, v50

    .line 538
    goto :goto_7

    .line 556
    .end local v32           #multiplier:D
    .end local v45           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v47           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v50           #sensorTime:J
    .end local v52           #sensorType:I
    .end local v61           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const-wide/16 v5, 0x0

    cmpl-double v5, v36, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 557
    :cond_d
    new-instance v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v80, 0x0

    aput-wide v36, v12, v80

    invoke-direct/range {v4 .. v12}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 560
    .local v4, app:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    .line 561
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->gpsTime:J

    .line 562
    move-wide/from16 v0, v78

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 563
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 564
    move-wide/from16 v0, v75

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 565
    move-wide/from16 v0, v57

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 566
    move-wide/from16 v0, v59

    iput-wide v0, v4, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 567
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_f

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 575
    move-object/from16 v34, v4

    .line 578
    .end local v4           #app:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :cond_e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_11

    .line 579
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 437
    :goto_9
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 569
    .restart local v4       #app:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :cond_f
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_10

    .line 570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 572
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 580
    .end local v4           #app:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :cond_11
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_12

    .line 581
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 583
    :cond_12
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v36, v5

    if-lez v5, :cond_13

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 584
    :cond_13
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto :goto_9

    .line 592
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v36           #power:D
    .end local v41           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v49           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v57           #tcpBytesReceived:J
    .end local v59           #tcpBytesSent:J
    .end local v74           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v75           #wakelockTime:J
    .end local v78           #wifiRunningTimeMs:J
    :cond_14
    if-eqz v34, :cond_16

    .line 593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v70, v5, v9

    .line 595
    .local v70, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v77

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v70, v70, v5

    .line 597
    const-wide/16 v5, 0x0

    cmp-long v5, v70, v5

    if-lez v5, :cond_16

    .line 598
    move-wide/from16 v0, v70

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v36, v5, v9

    .line 601
    .restart local v36       #power:D
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v70

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 602
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v36

    move-object/from16 v0, v34

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->value:D

    .line 603
    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v36

    aput-wide v9, v5, v6

    .line 604
    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_15

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 605
    :cond_15
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v36

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 608
    .end local v36           #power:D
    .end local v70           #wakeTimeMillis:J
    :cond_16
    return-void

    .line 534
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 739
    iget v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 740
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 741
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 742
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 747
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 748
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 749
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 750
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 751
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 753
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 754
    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 756
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    .line 363
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->load()V

    .line 366
    :cond_0
    iput-wide v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 367
    iput-wide v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 368
    iput-wide v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 369
    iput-wide v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 370
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 372
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 373
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 374
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 375
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 376
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 378
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 379
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 380
    new-instance v0, Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v8, v9}, Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 381
    .local v0, hist:Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 382
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "screen.full"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 385
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 418
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 389
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 391
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 392
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 393
    .local v7, sipper:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 394
    invoke-virtual {v7}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 395
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_2

    .line 396
    new-instance v6, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v6, v8, v9, v7}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/OriginalSettings/fuelgauge/BatterySipper;)V

    .line 397
    .local v6, pref:Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v2, v8, v10

    .line 398
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->percent:D

    .line 399
    iget-object v8, v7, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 400
    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 401
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 402
    iget-object v8, v7, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_3

    .line 403
    iget-object v8, v7, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 405
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 406
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_2

    .line 408
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :cond_4
    iget-object v9, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 409
    :try_start_0
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 410
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_5

    .line 411
    new-instance v8, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 412
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 413
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 415
    :cond_5
    iget-object v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 417
    :cond_6
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    sget-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 134
    :cond_0
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 135
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 137
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 139
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v4, 0x2

    const v5, 0x7f0b04ea

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020049

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 322
    .local v3, refresh:Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b065d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, helpUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    const/4 v4, 0x3

    const v5, 0x7f0b0656

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 328
    .local v0, help:Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v1, helpIntent:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 332
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 334
    .end local v0           #help:Landroid/view/MenuItem;
    .end local v1           #helpIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 168
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 352
    :goto_0
    return v0

    .line 340
    :pswitch_0
    iget v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 341
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 345
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 343
    :cond_0
    iput v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 348
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 349
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 160
    return-void

    .line 156
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 172
    instance-of v0, p2, Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 176
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string v1, "stats"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 179
    const-class v1, Lcom/android/OriginalSettings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04bb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 181
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 183
    :cond_0
    instance-of v0, p2, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 186
    check-cast v0, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;

    .line 187
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    move-result-object v3

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v0, "title"

    iget-object v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "percent"

    invoke-virtual {v3}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v0, "gauge"

    invoke-virtual {v3}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    const-string v0, "duration"

    iget-wide v4, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    const-string v0, "iconPackage"

    iget-object v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "iconId"

    iget v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v0, "noCoverage"

    iget-wide v4, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 198
    iget-object v0, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "uid"

    iget-object v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    :cond_2
    const-string v0, "drainType"

    iget-object v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->drainType:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 205
    sget-object v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->drainType:Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 295
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v4, 0x7f0b04d0

    aput v4, v1, v0

    .line 298
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    .line 303
    :goto_1
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 304
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 305
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 306
    const-class v1, Lcom/android/OriginalSettings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04bc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 309
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    iget-object v4, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 209
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [D

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x3

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x4

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x5

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v5, 0x6

    iget-wide v6, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v0, v5

    const/4 v3, 0x7

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    const/16 v3, 0x8

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    .line 232
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 233
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 234
    iget-object v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 235
    const-string v5, "report_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 238
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 239
    iget-object v6, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 240
    const-string v4, "report_checkin_details"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 257
    :pswitch_2
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 265
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 276
    :pswitch_3
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 284
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, v3, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    goto/16 :goto_1

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 209
    :array_0
    .array-data 0x4
        0xc6t 0x4t 0xbt 0x7ft
        0xc7t 0x4t 0xbt 0x7ft
        0xc8t 0x4t 0xbt 0x7ft
        0xc9t 0x4t 0xbt 0x7ft
        0xcat 0x4t 0xbt 0x7ft
        0xcct 0x4t 0xbt 0x7ft
        0xcdt 0x4t 0xbt 0x7ft
        0xcet 0x4t 0xbt 0x7ft
        0xcft 0x4t 0xbt 0x7ft
    .end array-data

    .line 245
    :array_1
    .array-data 0x4
        0xd0t 0x4t 0xbt 0x7ft
        0xd1t 0x4t 0xbt 0x7ft
    .end array-data

    .line 257
    :array_2
    .array-data 0x4
        0xcat 0x4t 0xbt 0x7ft
        0xc6t 0x4t 0xbt 0x7ft
        0xc7t 0x4t 0xbt 0x7ft
        0xc8t 0x4t 0xbt 0x7ft
        0xcct 0x4t 0xbt 0x7ft
        0xcdt 0x4t 0xbt 0x7ft
    .end array-data

    .line 276
    :array_3
    .array-data 0x4
        0xd0t 0x4t 0xbt 0x7ft
        0xc6t 0x4t 0xbt 0x7ft
        0xc7t 0x4t 0xbt 0x7ft
        0xc8t 0x4t 0xbt 0x7ft
        0xcct 0x4t 0xbt 0x7ft
        0xcdt 0x4t 0xbt 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    invoke-direct {p0}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 150
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 787
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 788
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 789
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 790
    monitor-exit v2

    return-void

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;

    .line 793
    .local v0, bs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 793
    .end local v0           #bs:Lcom/android/OriginalSettings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
