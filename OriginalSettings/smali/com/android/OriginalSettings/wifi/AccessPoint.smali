.class Lcom/android/OriginalSettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/AccessPoint$1;,
        Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 45
    new-array v0, v2, [I

    sput-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 66
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 152
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 153
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 154
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 155
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 66
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 145
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 146
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 147
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "savedState"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 66
    sget-object v0, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 159
    const v0, 0x7f040059

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 161
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 165
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 169
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 170
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 174
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 129
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 130
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 131
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 132
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 139
    :goto_0
    return-object v2

    .line 133
    :cond_0
    if-eqz v1, :cond_1

    .line 134
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 135
    :cond_1
    if-eqz v0, :cond_2

    .line 136
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->WPA:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 138
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v2, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const/4 v0, 0x3

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 81
    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 186
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 189
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 190
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 191
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 192
    return-void

    .line 186
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 195
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    .line 198
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 199
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 200
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 201
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    .line 202
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 203
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 204
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 320
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    :goto_0
    return-void

    .line 325
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 326
    const v3, 0x7f0b01f9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_2

    .line 328
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    const v3, 0x7f0b01f6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :pswitch_1
    const v3, 0x7f0b01f8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 334
    :pswitch_2
    const v3, 0x7f0b01f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    .line 342
    const v3, 0x7f0b01f5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 348
    const v3, 0x7f0b01fc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_5

    .line 356
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 357
    const v3, 0x7f0b01fa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 350
    :cond_6
    const v3, 0x7f0b01fd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 359
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_7
    const v3, 0x7f0b01fb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 306
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 307
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 309
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 311
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 222
    instance-of v4, p1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v4, :cond_1

    move v2, v3

    .line 244
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 225
    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 227
    .local v1, other:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v4, v5, :cond_2

    .line 228
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 231
    :cond_2
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_3

    .line 232
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 235
    :cond_3
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget v5, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 236
    iget v4, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 239
    :cond_4
    iget v2, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 240
    .local v0, difference:I
    if-eqz v0, :cond_5

    move v2, v0

    .line 241
    goto :goto_0

    .line 244
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 377
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 288
    const/4 v0, -0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 124
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 101
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 104
    :pswitch_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint$1;->$SwitchMap$com$android$OriginalSettings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 116
    if-eqz p1, :cond_4

    const v1, 0x7f0b0202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 106
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 109
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b0201

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_4
    const v1, 0x7f0b0209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b0205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_6
    const v1, 0x7f0b0204

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 104
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 209
    const v1, 0x7f0800e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 210
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 214
    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 177
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 178
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 270
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 271
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 272
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 273
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 274
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 281
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 284
    :cond_1
    return-void

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 277
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 278
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 279
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 249
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 251
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->mRssi:I

    .line 252
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->notifyChanged()V

    .line 257
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 258
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/AccessPoint;->pskType:Lcom/android/OriginalSettings/wifi/AccessPoint$PskType;

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->refresh()V

    .line 261
    const/4 v1, 0x1

    .line 263
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
