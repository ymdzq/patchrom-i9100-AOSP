.class public Lcom/android/OriginalSettings/vpn2/VpnSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 58
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 60
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 472
    return-void
.end method

.method private connect(Lcom/android/OriginalSettings/vpn2/VpnProfile;)V
    .locals 14
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v5

    .line 354
    .local v5, network:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 355
    .local v3, interfaze:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v2, v5, v11

    .line 358
    .local v2, gateway:Ljava/lang/String;
    const-string v6, ""

    .line 359
    .local v6, privateKey:Ljava/lang/String;
    const-string v9, ""

    .line 360
    .local v9, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 361
    .local v0, caCert:Ljava/lang/String;
    const-string v8, ""

    .line 362
    .local v8, serverCert:Ljava/lang/String;
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 367
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    iget-object v11, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 369
    .local v10, value:[B
    if-nez v10, :cond_4

    const/4 v9, 0x0

    .line 371
    .end local v10           #value:[B
    :cond_0
    :goto_0
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 372
    iget-object v11, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 373
    .restart local v10       #value:[B
    if-nez v10, :cond_5

    const/4 v0, 0x0

    .line 375
    .end local v10           #value:[B
    :cond_1
    :goto_1
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 376
    iget-object v11, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 377
    .restart local v10       #value:[B
    if-nez v10, :cond_6

    const/4 v8, 0x0

    .line 379
    .end local v10           #value:[B
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    if-nez v8, :cond_7

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0b0634

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 381
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 369
    .restart local v10       #value:[B
    :cond_4
    new-instance v9, Ljava/lang/String;

    .end local v9           #userCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 373
    .restart local v9       #userCert:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 377
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/String;

    .end local v8           #serverCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 385
    .end local v10           #value:[B
    .restart local v8       #serverCert:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 386
    .local v7, racoon:[Ljava/lang/String;
    iget v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 420
    :goto_3
    const/4 v4, 0x0

    .line 421
    .local v4, mtpd:[Ljava/lang/String;
    iget v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_1

    .line 442
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 443
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 444
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 445
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 446
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 447
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 448
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 450
    :cond_8
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 451
    iget-object v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 454
    :cond_9
    iget-object v11, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v1, v7, v4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    return-void

    .line 388
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 392
    .restart local v7       #racoon:[Ljava/lang/String;
    goto :goto_3

    .line 394
    :pswitch_1
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 398
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 400
    :pswitch_2
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 404
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 406
    :pswitch_3
    const/16 v11, 0xb

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0xa

    aput-object v2, v7, v11

    .line 410
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 412
    :pswitch_4
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 423
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    if-eqz v11, :cond_a

    const-string v11, "+mppe"

    :goto_5
    aput-object v11, v4, v12

    .line 430
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 423
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_a
    const-string v11, "nomppe"

    goto :goto_5

    .line 433
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v4, v11

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 421
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v6, 0x7f0b0633

    const/4 v7, 0x1

    .line 326
    iget-object v5, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 327
    .local v3, network:Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 329
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 331
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, interfaze:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 334
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :cond_1
    const/4 v0, 0x0

    .line 337
    .local v0, gateway:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 339
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 340
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 344
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 345
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 346
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 348
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    return-object v5
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 469
    const v0, 0x7f0b065b

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 298
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 303
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 304
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 305
    .local v1, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 306
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 308
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 310
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 312
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 313
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 314
    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 322
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 317
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 187
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v2

    .line 190
    .local v2, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/OriginalSettings/vpn2/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 193
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 194
    .local v1, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 195
    iget-object v3, v2, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/OriginalSettings/vpn2/VpnProfile;)V

    .line 204
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->connect(Lcom/android/OriginalSettings/vpn2/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .end local v2           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 198
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .restart local v2       #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/OriginalSettings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/OriginalSettings/vpn2/VpnProfile;)V

    .line 199
    .restart local v1       #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 237
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return v1

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .line 242
    .local v0, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 243
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 250
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 251
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 252
    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 258
    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f0b0631
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v0

    .line 81
    .local v0, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 86
    .end local v0           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f0b0632

    const v5, 0x7f0b0631

    const/4 v4, 0x0

    .line 216
    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 217
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 224
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 225
    check-cast v0, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v1

    .line 226
    .local v1, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    iget-object v2, v1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 227
    iget-object v2, v1, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 228
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 229
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 183
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->dismiss()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 265
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 266
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local p1
    :goto_0
    return v7

    .line 270
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 271
    check-cast p1, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v2

    .line 272
    .local v2, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v3

    .line 281
    :cond_1
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    .line 291
    .end local v2           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 292
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 284
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 288
    :cond_3
    new-instance v3, Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/OriginalSettings/vpn2/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/OriginalSettings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/OriginalSettings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 102
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_2

    .line 106
    iget-boolean v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_1

    .line 108
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 113
    :goto_0
    iget-boolean v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    iput-boolean v9, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 161
    :goto_1
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 118
    :cond_2
    iput-boolean v9, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUnlocking:Z

    .line 123
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v10, :cond_5

    .line 124
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 127
    .local v2, group:Landroid/preference/PreferenceGroup;
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, keys:[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v10, v5

    if-lez v10, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 131
    .local v1, context:Landroid/content/Context;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v4, v0, v3

    .line 132
    .local v4, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/OriginalSettings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v8

    .line 134
    .local v8, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    if-nez v8, :cond_3

    .line 135
    const-string v10, "VpnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad profile: key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 131
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    :cond_3
    new-instance v7, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v7, p0, v1, v8}, Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/OriginalSettings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/OriginalSettings/vpn2/VpnProfile;)V

    .line 139
    .local v7, preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 144
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #preference:Lcom/android/OriginalSettings/vpn2/VpnSettings$VpnPreference;
    .end local v8           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :cond_4
    const-string v10, "add_network"

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    .end local v2           #group:Landroid/preference/PreferenceGroup;
    .end local v5           #keys:[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v10, :cond_6

    .line 149
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v10, p0}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v10}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->show()V

    .line 154
    :cond_6
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v10, :cond_7

    .line 155
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 157
    :cond_7
    iget-object v10, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->getProfile()Lcom/android/OriginalSettings/vpn2/VpnProfile;

    move-result-object v0

    .line 93
    .local v0, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/OriginalSettings/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 95
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnSettings;->mDialog:Lcom/android/OriginalSettings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    .end local v0           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method
