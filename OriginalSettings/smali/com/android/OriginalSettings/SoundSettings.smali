.class public Lcom/android/OriginalSettings/SoundSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 87
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$1;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 206
    if-nez p2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 208
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 209
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 210
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040405

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 213
    const v0, 0x1040403

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 217
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 223
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 225
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 287
    const v0, 0x7f0b065c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 106
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 108
    .local v0, activePhoneType:I
    const-string v12, "audio"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    const v12, 0x7f050027

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 112
    const/4 v12, 0x2

    if-eq v12, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "emergency_tone"

    invoke-virtual {p0, v13}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 118
    const-string v12, "ring_volume"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 121
    :cond_1
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 123
    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v12, "vibrate_when_ringing"

    const/4 v14, 0x0

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    const-string v12, "dtmf_tone"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 127
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 128
    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v12, "dtmf_tone"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    const-string v12, "sound_effects"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 131
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 132
    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v12, "sound_effects_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 135
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 136
    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v12, "haptic_feedback_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 138
    const-string v12, "lock_sounds"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 140
    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v12, "lockscreen_sounds_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 144
    const-string v12, "notification_sound"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 146
    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 147
    .local v11, vibrator:Landroid/os/Vibrator;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_3

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_3
    const/4 v12, 0x2

    if-ne v12, v0, :cond_4

    .line 153
    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 155
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v12, "emergency_tone"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_4
    const-string v12, "sound_settings"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 162
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v13, "musicfx"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 165
    .local v6, p:Landroid/content/pm/PackageManager;
    const/16 v12, 0x200

    invoke-virtual {v6, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 166
    .local v10, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_5

    .line 172
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v13, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 176
    sget-object v1, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v5, :cond_c

    aget-object v8, v1, v4

    .line 177
    .local v8, prefKey:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 178
    .local v7, pref:Landroid/preference/Preference;
    if-eqz v7, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 123
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Landroid/content/pm/PackageManager;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v10           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #vibrator:Landroid/os/Vibrator;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 128
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 132
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 136
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 140
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 184
    .restart local v3       #i:Landroid/content/Intent;
    .restart local v6       #p:Landroid/content/pm/PackageManager;
    .restart local v10       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #vibrator:Landroid/os/Vibrator;
    :cond_c
    new-instance v12, Lcom/android/OriginalSettings/SoundSettings$2;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/SoundSettings$2;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 196
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v0, v1

    .line 267
    :goto_1
    return v0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 245
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 246
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 251
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 249
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 254
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 255
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 258
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 259
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 262
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->lookupRingtoneNames()V

    .line 203
    return-void
.end method
