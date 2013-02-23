.class public Lcom/android/OriginalSettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 62
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$1;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 70
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$2;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 83
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 84
    const v0, 0x7f02005c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogIcon(I)V

    .line 85
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 145
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 146
    .local v1, mode:I
    const/4 v0, 0x0

    .line 152
    .local v0, brightness:F
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 158
    :goto_0
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 161
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 156
    :cond_0
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 165
    move v0, p1

    .line 167
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 176
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 181
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 183
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 184
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_1
    move v1, v2

    .line 183
    goto :goto_1
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 206
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 208
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 214
    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    .line 251
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v3, 0xff

    .line 233
    .local v1, range:I
    mul-int v3, p1, v1

    div-int/lit16 v3, v3, 0x2710

    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int p1, v3, v4

    .line 235
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 237
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 243
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 248
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 246
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_2
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 254
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 255
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 105
    invoke-static {p1}, Lcom/android/OriginalSettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 107
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    const v0, 0x7f0800be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 111
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 114
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 126
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 292
    :goto_0
    return-void

    .line 285
    :cond_1
    check-cast p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    .line 286
    invoke-virtual {p1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 287
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 288
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 289
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 290
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 291
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 288
    goto :goto_1

    :cond_3
    move v1, v2

    .line 289
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 261
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 262
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 274
    :goto_0
    return-object v0

    .line 265
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 266
    .local v0, myState:Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    .line 267
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    .line 268
    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 269
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 270
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 273
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    .line 268
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 130
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 134
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 99
    return-void
.end method
