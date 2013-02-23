.class public Lcom/android/OriginalSettings/wifi/WifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoFinishOnConnection:Z

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 653
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 845
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 848
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;

    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    .line 662
    .local v2, apMap:Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;,"Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 663
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_0

    .line 664
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 665
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 666
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v10, v11}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 667
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v10, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 672
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 673
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_4

    .line 674
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 676
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 681
    const/4 v5, 0x0

    .line 682
    .local v5, found:Z
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 683
    .restart local v0       #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 684
    const/4 v5, 0x1

    goto :goto_2

    .line 686
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_3
    if-nez v5, :cond_1

    .line 687
    new-instance v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10, v8}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 688
    .restart local v0       #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v10, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 695
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    .end local v5           #found:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 696
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 719
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 727
    :cond_3
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 734
    const-string v3, "newState"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    .line 736
    .local v2, state:Landroid/net/wifi/SupplicantState;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 739
    .end local v2           #state:Landroid/net/wifi/SupplicantState;
    :cond_4
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 740
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 742
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 743
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 744
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 745
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 746
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 750
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 604
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 606
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 607
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 608
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 573
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 574
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 576
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 577
    return-void
.end method

.method private updateAccessPoints()V
    .locals 5

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 623
    .local v3, wifiState:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    const v4, 0x7f0b01bd

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 626
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 627
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 628
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 629
    const v4, 0x7f0b01d2

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 631
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 632
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 637
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 645
    :pswitch_3
    const v4, 0x7f0b01d1

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 757
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 781
    :cond_0
    return-void

    .line 762
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 763
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 768
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 769
    if-eqz p1, :cond_2

    .line 770
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 773
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 776
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 777
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 778
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 773
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 765
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 800
    :goto_0
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 801
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 802
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 803
    :goto_1
    return-void

    .line 788
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 792
    :pswitch_1
    const v0, 0x7f0b01bc

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 796
    :pswitch_2
    const v0, 0x7f0b01d1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 890
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_0
    return-void

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 896
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 899
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 902
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 957
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0657

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 245
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 246
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 248
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 258
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 268
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$6;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 278
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 280
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 281
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 285
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 288
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 290
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 298
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 364
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 307
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 309
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 310
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 313
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 314
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 316
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 321
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    const v7, 0x7f050039

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 323
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 333
    :cond_4
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_7

    .line 334
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 336
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_6

    move-object v6, v1

    .line 337
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 338
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_6

    .line 339
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 341
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 342
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 344
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 351
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 354
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 355
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 357
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_8

    .line 358
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 360
    :cond_8
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 363
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 921
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 922
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 923
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 851
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget()V

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 516
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 517
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 545
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 521
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 522
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 528
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 529
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 532
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 192
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 495
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 499
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 500
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 501
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 502
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 504
    const/4 v1, 0x7

    const v2, 0x7f0b01ce

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 507
    const/16 v1, 0x8

    const v2, 0x7f0b01cf

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 508
    const/16 v1, 0x9

    const v2, 0x7f0b01d0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    .line 600
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 583
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 584
    .local v0, ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    if-nez v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 586
    new-instance v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v0           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 588
    .restart local v0       #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 592
    :cond_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 593
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 594
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 596
    .end local v0           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :pswitch_1
    new-instance v1, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 598
    :pswitch_2
    new-instance v1, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f020085

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 396
    .local v0, wifiIsEnabled:Z
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_0

    .line 398
    const v1, 0x7f0b01c9

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 402
    const v1, 0x7f0b01c7

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 430
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 431
    return-void

    .line 406
    :cond_0
    const v1, 0x7f0b01c9

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 410
    const v1, 0x7f0b01c7

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020047

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 414
    const/4 v1, 0x6

    const v2, 0x7f0b01cc

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 418
    const v1, 0x7f0b01ca

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 421
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v1, :cond_1

    .line 422
    const/4 v1, 0x3

    const v2, 0x7f0b01cb

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 426
    :cond_1
    const/4 v1, 0x5

    const v2, 0x7f0b01cd

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 198
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v3, :cond_1

    .line 199
    const v3, 0x7f040068

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, other:Landroid/view/View;
    new-instance v3, Lcom/android/OriginalSettings/wifi/WifiSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v3, 0x7f080123

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 210
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 211
    new-instance v3, Lcom/android/OriginalSettings/wifi/WifiSettings$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v1           #other:Landroid/view/View;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 452
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 453
    goto :goto_0

    .line 455
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0227

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 464
    goto :goto_0

    .line 462
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 466
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 467
    goto :goto_0

    .line 469
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v0, v7

    .line 472
    goto :goto_0

    .line 474
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v0, v7

    .line 477
    goto :goto_0

    .line 479
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0212

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 488
    goto :goto_0

    .line 486
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 391
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 550
    instance-of v0, p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 551
    check-cast p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 553
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 556
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 563
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 561
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 368
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v4, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 378
    :cond_1
    iput v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 380
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 381
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 442
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 443
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 446
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 914
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 950
    :cond_0
    return-void
.end method

.method submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    .line 860
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 862
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 881
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 884
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 885
    return-void

    .line 869
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 870
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 874
    :cond_3
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 875
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 877
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
