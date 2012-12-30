.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/QualcommSharedRIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# instance fields
.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_UNAVAILABLE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "networkMode"
    .parameter "cdmaSubscription"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/QualcommSharedRIL;-><init>(Landroid/content/Context;II)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->RIL_INT_RADIO_UNAVAILABLE:I

    .line 43
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 47
    return-void
.end method

.method private setRadioStateFromRILInt(I)V
    .locals 6
    .parameter "stateCode"

    .prologue
    const/4 v4, 0x0

    .line 207
    sparse-switch p1, :sswitch_data_0

    .line 232
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 210
    .local v2, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 211
    iput-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 212
    iput-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 235
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 236
    return-void

    .line 216
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 217
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 219
    .end local v2           #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    if-nez v3, :cond_1

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, handlerThread:Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 225
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 226
    .local v1, looper:Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;-><init>(Lcom/android/internal/telephony/QualcommSharedRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/QualcommSharedRIL$IccHandler;->run()V

    .line 229
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    .end local v1           #looper:Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 230
    .restart local v2       #radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 166
    .local v0, dataPosition:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 168
    .local v1, response:I
    sparse-switch v1, :sswitch_data_0

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    invoke-super {p0, p1}, Lcom/android/internal/telephony/QualcommSharedRIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 169
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, ret:Ljava/lang/Object;
    :goto_1
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 185
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .local v3, state:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 170
    .end local v2           #ret:Ljava/lang/Object;
    .end local v3           #state:I
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 171
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 172
    .end local v2           #ret:Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/Object;
    goto :goto_1

    .line 191
    :sswitch_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x520c -> :sswitch_2
        0x520d -> :sswitch_3
        0x520f -> :sswitch_4
    .end sparse-switch

    .line 183
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x520c -> :sswitch_5
        0x520d -> :sswitch_5
        0x520f -> :sswitch_5
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11
    .parameter "p"

    .prologue
    .line 56
    const-string/jumbo v8, "subscriptionFromSource"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v7

    .line 57
    .local v7, subscriptionFromSource:Z
    const-string v8, "icccardstatus"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/HTCQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v5

    .line 59
    .local v5, oldRil:Z
    new-instance v6, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/IccCardStatus;-><init>()V

    .line 60
    .local v6, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IccCardStatus;->setCardState(I)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IccCardStatus;->setUniversalPinState(I)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IccCardStatus;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IccCardStatus;->setCdmaSubscriptionAppIndex(I)V

    .line 65
    if-nez v5, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/IccCardStatus;->setImsSubscriptionAppIndex(I)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 71
    .local v4, numApplications:I
    const/16 v8, 0x8

    if-le v4, v8, :cond_1

    .line 72
    const/16 v4, 0x8

    .line 74
    :cond_1
    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/IccCardStatus;->setNumApplications(I)V

    .line 76
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 77
    new-instance v2, Lcom/android/internal/telephony/IccCardApplication;

    invoke-direct {v2}, Lcom/android/internal/telephony/IccCardApplication;-><init>()V

    .line 78
    .local v2, ca:Lcom/android/internal/telephony/IccCardApplication;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->AppStateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$AppState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 81
    iget-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v8, v9, :cond_3

    iget-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    if-eq v8, v9, :cond_2

    iget-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    if-ne v8, v9, :cond_3

    .line 85
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 86
    const-string v8, "RILJ"

    const-string v9, "ca.app_state == AppState.APPSTATE_SUBSCRIPTION_PERSO"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v8, "RILJ"

    const-string v9, "ca.perso_substate == PersoSubState.PERSOSUBSTATE_READY"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/IccCardApplication;->PinStateFromRILInt(I)Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v8

    iput-object v8, v2, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 94
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/IccCardStatus;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v2           #ca:Lcom/android/internal/telephony/IccCardApplication;
    :cond_4
    if-eqz v7, :cond_6

    .line 122
    :cond_5
    :goto_1
    return-object v6

    .line 101
    :cond_6
    const/4 v0, -0x1

    .line 102
    .local v0, appIndex:I
    iget v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPhoneType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 103
    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v0

    .line 104
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is a CDMA PHONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_2
    if-lez v4, :cond_5

    .line 111
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v1

    .line 112
    .local v1, application:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v8, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mAid:Ljava/lang/String;

    .line 113
    iget-object v8, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mUSIM:Z

    .line 115
    iget v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mPreferredNetworkType:I

    iput v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mSetPreferredNetworkType:I

    .line 117
    iget-object v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mAid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 118
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mAid:Ljava/lang/String;

    .line 119
    :cond_7
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 106
    .end local v1           #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_8
    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v0

    .line 107
    const-string v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is a GSM PHONE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    .restart local v1       #application:Lcom/android/internal/telephony/IccCardApplication;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3
.end method

.method protected responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .parameter "p"

    .prologue
    .line 128
    const/16 v1, 0xe

    .line 148
    .local v1, numInts:I
    new-array v2, v1, [I

    .line 149
    .local v2, response:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 150
    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    .line 151
    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 152
    const/4 v3, -0x1

    aput v3, v2, v0

    .line 149
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    goto :goto_1

    .line 158
    :cond_1
    return-object v2
.end method
