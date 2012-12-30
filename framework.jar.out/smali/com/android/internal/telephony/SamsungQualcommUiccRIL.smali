.class public Lcom/android/internal/telephony/SamsungQualcommUiccRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "SamsungQualcommUiccRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field public static final INVALID_SNR:I = 0x7fffffff

.field public static final SEND_SMS_TIMEOUT_IN_MS:J = 0x7530L


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private mIsSendingSMS:Z

.field private mSMSLock:Ljava/lang/Object;

.field private mSignalbarCount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->RILJ_LOGV:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->RILJ_LOGD:Z

    .line 43
    const-string/jumbo v0, "ro.telephony.sends_barcount"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSignalbarCount:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSMSLock:Ljava/lang/Object;

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mIsSendingSMS:Z

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mQANElements:I

    .line 51
    return-void
.end method


# virtual methods
.method protected handleNitzTimeReceived(Landroid/os/Parcel;)V
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, nitz:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->RILJ_LOGD:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x3f0

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 96
    .local v3, nitzReceiveTime:J
    new-array v5, v10, [Ljava/lang/Object;

    .line 98
    .local v5, result:[Ljava/lang/Object;
    move-object v0, v1

    .line 99
    .local v0, fixedNitz:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, nitzParts:[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    aput-object v0, v5, v8

    .line 106
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    .line 108
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    if-eqz v6, :cond_2

    .line 110
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mNITZTimeRegistrant:Landroid/os/Registrant;

    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v11, v5, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_2
    iput-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mLastNITZTimeInfo:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 58
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 85
    :goto_0
    return-void

    .line 62
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->handleNitzTimeReceived(Landroid/os/Parcel;)V

    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, ret:Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->RILJ_LOGD:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->unsljLog(I)V

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f0 -> :sswitch_0
        0x40e -> :sswitch_1
    .end sparse-switch

    .line 75
    :pswitch_data_0
    .packed-switch 0x40e
        :pswitch_0
    .end packed-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .parameter "p"

    .prologue
    .line 165
    new-instance v5, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 166
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .local v4, numApplications:I
    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    .line 177
    const/16 v4, 0x8

    .line 179
    :cond_0
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 181
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 182
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 183
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 186
    iget-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v6, v7, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    if-eq v6, v7, :cond_1

    iget-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    if-ne v6, v7, :cond_2

    .line 190
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 191
    const-string v6, "RILJ"

    const-string v7, "ca.app_state == AppState.APPSTATE_SUBSCRIPTION_PERSO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v6, "RILJ"

    const-string v7, "ca.perso_substate == PersoSubState.PERSOSUBSTATE_READY"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 205
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    const/4 v0, -0x1

    .line 208
    .local v0, appIndex:I
    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mPhoneType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 209
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 210
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a CDMA PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    if-lez v4, :cond_5

    .line 217
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 218
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 219
    iget-object v6, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v7, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v6, v7, :cond_7

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mUSIM:Z

    .line 221
    iget v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mPreferredNetworkType:I

    iput v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSetPreferredNetworkType:I

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 224
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mAid:Ljava/lang/String;

    .line 225
    :cond_4
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mUSIM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mUSIM:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSetPreferredNetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSetPreferredNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_5
    return-object v5

    .line 212
    :cond_6
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 213
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is a GSM PHONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter "p"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mIsSendingSMS:Z

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .parameter "p"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 234
    const/16 v1, 0xc

    .line 241
    .local v1, numInts:I
    new-array v3, v1, [I

    .line 242
    .local v3, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    const-string v5, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "responseSignalStength BEFORE: mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSignalbarCount:Z

    if-eqz v4, :cond_1

    const-string v4, "bars"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " gsmDbm="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " gsmEcio="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRsrp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRsrq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x9

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRssnr="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteCqi="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xb

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSignalbarCount:Z

    if-eqz v4, :cond_2

    .line 254
    aget v4, v3, v9

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 257
    .local v2, num_bars:I
    packed-switch v2, :pswitch_data_0

    .line 264
    aget v4, v3, v9

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    .line 269
    .end local v2           #num_bars:I
    :goto_2
    aput v7, v3, v11

    .line 272
    const/4 v4, 0x2

    aput v7, v3, v4

    .line 273
    const/4 v4, 0x3

    aput v7, v3, v4

    .line 276
    const/4 v4, 0x4

    aput v7, v3, v4

    .line 277
    const/4 v4, 0x5

    aput v7, v3, v4

    .line 278
    const/4 v4, 0x6

    aput v7, v3, v4

    .line 281
    aget v4, v3, v10

    const/16 v5, 0x63

    if-ne v4, v5, :cond_3

    .line 284
    aput v7, v3, v10

    .line 285
    aput v7, v3, v8

    .line 286
    const/16 v4, 0x9

    aput v7, v3, v4

    .line 287
    const/16 v4, 0xa

    aput v7, v3, v4

    .line 288
    const/16 v4, 0xb

    aput v7, v3, v4

    .line 309
    :goto_3
    const-string v5, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "responseSignalStength AFTER: mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSignalbarCount:Z

    if-eqz v4, :cond_5

    const-string v4, "bars"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " gsmDbm="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " gsmEcio="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRsrp="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v3, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRsrq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x9

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteRssnr="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " lteCqi="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xb

    aget v6, v3, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v3

    .line 245
    :cond_1
    const-string/jumbo v4, "raw"

    goto/16 :goto_1

    .line 258
    .restart local v2       #num_bars:I
    :pswitch_0
    aput v11, v3, v9

    goto/16 :goto_2

    .line 259
    :pswitch_1
    const/4 v4, 0x3

    aput v4, v3, v9

    goto/16 :goto_2

    .line 260
    :pswitch_2
    const/4 v4, 0x5

    aput v4, v3, v9

    goto/16 :goto_2

    .line 261
    :pswitch_3
    aput v8, v3, v9

    goto/16 :goto_2

    .line 262
    :pswitch_4
    const/16 v4, 0xc

    aput v4, v3, v9

    goto/16 :goto_2

    .line 263
    :pswitch_5
    const/16 v4, 0xf

    aput v4, v3, v9

    goto/16 :goto_2

    .line 267
    .end local v2           #num_bars:I
    :cond_2
    aget v4, v3, v9

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v9

    goto/16 :goto_2

    .line 289
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSignalbarCount:Z

    if-eqz v4, :cond_4

    .line 290
    aget v4, v3, v10

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 291
    .restart local v2       #num_bars:I
    aget v4, v3, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v10

    .line 292
    const/16 v4, 0xa

    const v5, 0x7fffffff

    aput v5, v3, v4

    .line 295
    packed-switch v2, :pswitch_data_1

    .line 302
    aget v4, v3, v8

    mul-int/lit8 v4, v4, -0x1

    aput v4, v3, v8

    goto/16 :goto_3

    .line 296
    :pswitch_6
    aput v7, v3, v8

    goto/16 :goto_3

    .line 297
    :pswitch_7
    const/16 v4, -0x74

    aput v4, v3, v8

    goto/16 :goto_3

    .line 298
    :pswitch_8
    const/16 v4, -0x73

    aput v4, v3, v8

    goto/16 :goto_3

    .line 299
    :pswitch_9
    const/16 v4, -0x69

    aput v4, v3, v8

    goto/16 :goto_3

    .line 300
    :pswitch_a
    const/16 v4, -0x5f

    aput v4, v3, v8

    goto/16 :goto_3

    .line 301
    :pswitch_b
    const/16 v4, -0x55

    aput v4, v3, v8

    goto/16 :goto_3

    .line 305
    .end local v2           #num_bars:I
    :cond_4
    aget v4, v3, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v10

    .line 306
    aget v4, v3, v8

    mul-int/lit8 v4, v4, -0x1

    aput v4, v3, v8

    goto/16 :goto_3

    .line 309
    :cond_5
    const-string/jumbo v4, "raw"

    goto/16 :goto_4

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "result"

    .prologue
    const-wide/16 v10, 0x0

    .line 124
    iget-object v5, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSMSLock:Ljava/lang/Object;

    monitor-enter v5

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long v0, v6, v8

    .line 126
    .local v0, timeoutTime:J
    const-wide/16 v2, 0x7530

    .line 127
    .local v2, waitTimeLeft:J
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mIsSendingSMS:Z

    if-eqz v4, :cond_0

    cmp-long v4, v2, v10

    if-lez v4, :cond_0

    .line 128
    const-string v4, "RILJ"

    const-string/jumbo v6, "sendSMS() waiting for response of previous SEND_SMS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mSMSLock:Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v0, v6

    goto :goto_0

    .line 136
    :cond_0
    cmp-long v4, v2, v10

    if-gtz v4, :cond_1

    .line 137
    const-string v4, "RILJ"

    const-string/jumbo v6, "sendSms() timed out waiting for response of previous CDMA_SEND_SMS"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->mIsSendingSMS:Z

    .line 140
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 143
    return-void

    .line 140
    .end local v0           #timeoutTime:J
    .end local v2           #waitTimeLeft:J
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 131
    .restart local v0       #timeoutTime:J
    .restart local v2       #waitTimeLeft:J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 148
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 152
    .local v0, rr:Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->riljLog(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SamsungQualcommUiccRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 158
    return-void
.end method
