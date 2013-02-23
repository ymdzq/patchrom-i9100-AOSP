.class public Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 56
    sput-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 79
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 85
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 91
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 108
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 111
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 79
    nop

    :array_0
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    .line 85
    :array_1
    .array-data 0x4
        0xct 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_2
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 869
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput-object p0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 635
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040078

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 637
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f080168

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 639
    const v1, 0x7f080174

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 642
    const v1, 0x7f080171

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 645
    const v1, 0x7f08016e

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 647
    const v1, 0x7f08016b

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 651
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 652
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 588
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 591
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 593
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 778
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 780
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 787
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v0

    .line 785
    :catch_0
    move-exception v2

    .line 787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 798
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 800
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 803
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_0

    .line 808
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 803
    goto :goto_0

    .line 805
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 806
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightnessMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 808
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 718
    const-class v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 719
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 721
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 723
    return-object v0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 818
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 820
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 821
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 822
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 824
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 826
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 828
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 834
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 835
    const/16 v0, 0x1e

    .line 836
    const/4 v1, 0x0

    .line 846
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 849
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    :goto_1
    if-nez v1, :cond_1

    .line 857
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 858
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 837
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    const/16 v5, 0x66

    if-ge v0, v5, :cond_3

    .line 838
    const/16 v0, 0x66

    goto :goto_0

    .line 839
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 840
    const/16 v0, 0xff

    goto :goto_0

    .line 842
    :cond_4
    const/4 v1, 0x1

    .line 843
    const/16 v0, 0x1e

    goto :goto_0

    .line 854
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 861
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 862
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 863
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 864
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f020013

    const/16 v4, 0x4c

    const v3, 0x7f080176

    const v2, 0x7f080175

    .line 675
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 676
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 677
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 678
    sget-object v1, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 680
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    const v1, 0x7f02002c

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 683
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 707
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 688
    .local v0, brightness:I
    const/16 v1, 0xcc

    if-le v0, v1, :cond_1

    .line 689
    const v1, 0x7f02002d

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 699
    :goto_1
    if-le v0, v4, :cond_3

    .line 700
    invoke-virtual {p0, v3, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 691
    :cond_1
    if-le v0, v4, :cond_2

    .line 692
    const v1, 0x7f02002e

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 695
    :cond_2
    const v1, 0x7f02002f

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 703
    :cond_3
    const v1, 0x7f020010

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 661
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 663
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 664
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 665
    invoke-static {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 666
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 619
    const-class v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 621
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 625
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 627
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 629
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 608
    const-class v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;

    .line 609
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 610
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 614
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 734
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 735
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 767
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 768
    :cond_1
    return-void

    .line 738
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 739
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 740
    :cond_3
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 741
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 742
    :cond_4
    sget-object v3, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 744
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 745
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 746
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 747
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 748
    .local v1, buttonId:I
    if-nez v1, :cond_6

    .line 749
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 750
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 751
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 752
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 753
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 754
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 755
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 756
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 757
    sget-object v3, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 599
    invoke-static {p1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 601
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 602
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_0
    return-void
.end method
