.class public Lcom/android/OriginalSettings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;,
        Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;,
        Lcom/android/OriginalSettings/CryptKeeper$FadeToBlack;,
        Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCooldown:I

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mIgnoreBack:Z

    .line 113
    iput v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    .line 210
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptKeeper$1;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/CryptKeeper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method private cooldown()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 467
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 469
    .local v0, status:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    if-gtz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 472
    iput-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mIgnoreBack:Z

    .line 473
    const v2, 0x7f0b05a1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 482
    :goto_0
    return-void

    .line 475
    :cond_0
    const v2, 0x7f0b0127

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 476
    .local v1, template:Ljava/lang/CharSequence;
    new-array v2, v3, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    .line 479
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private delayAudioNotification()V
    .locals 2

    .prologue
    .line 725
    const-string v0, "CryptKeeper"

    const-string v1, "User entering password: delay audio notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    .line 727
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 396
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 398
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 400
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 401
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 404
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 406
    iput-boolean v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mIgnoreBack:Z

    .line 409
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    .line 410
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 590
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 591
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 592
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 594
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 550
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 555
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 557
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 583
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 558
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 561
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 562
    add-int/lit8 v2, v2, 0x1

    .line 563
    goto :goto_0

    .line 566
    :cond_2
    const/4 v0, 0x0

    .line 567
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 568
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 572
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 577
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 578
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 579
    goto :goto_0

    .line 583
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 245
    iget v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_1

    .line 246
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Counting down to notify user..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mNotificationCountdown:I

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "CryptKeeper"

    const-string v2, "Notifying user that we are waiting for input..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/high16 v3, 0x42c8

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passwordEntryInit()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 485
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 486
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 487
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 489
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 490
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 494
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 495
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 496
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    .local v0, emergencyCall:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 498
    const-string v5, "CryptKeeper"

    const-string v6, "Removing the emergency Call button"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 503
    .end local v0           #emergencyCall:Landroid/view/View;
    :cond_0
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 504
    .local v1, imeSwitcher:Landroid/view/View;
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 506
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-direct {p0, v2, v7}, Lcom/android/OriginalSettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 508
    new-instance v5, Lcom/android/OriginalSettings/CryptKeeper$3;

    invoke-direct {v5, p0, v2}, Lcom/android/OriginalSettings/CryptKeeper$3;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_2

    .line 520
    const-string v5, "CryptKeeper"

    const-string v6, "Acquiring wakelock."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 522
    .local v3, pm:Landroid/os/PowerManager;
    if-eqz v3, :cond_2

    .line 523
    const/16 v5, 0x1a

    const-string v6, "CryptKeeper"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 524
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 529
    .end local v3           #pm:Landroid/os/PowerManager;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/OriginalSettings/CryptKeeper$4;

    invoke-direct {v6, p0, v2}, Lcom/android/OriginalSettings/CryptKeeper$4;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 537
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 539
    return-void
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 704
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 705
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 707
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 639
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 641
    .local v1, isLteDevice:Z
    :goto_0
    if-nez v1, :cond_0

    .line 642
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 648
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 639
    .end local v1           #isLteDevice:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f04001c

    .line 337
    iget-boolean v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 339
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, progress:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 348
    :cond_5
    const v1, 0x7f04001a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 350
    :cond_6
    iget-boolean v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 352
    new-instance v2, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    const v2, 0x7f08002e

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 417
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 418
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 419
    new-instance v2, Lcom/android/OriginalSettings/CryptKeeper$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/CryptKeeper$2;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0129

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 429
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 431
    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->resumeCall()V

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 657
    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 659
    .local v0, emergencyCall:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 663
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 664
    new-instance v5, Lcom/android/OriginalSettings/CryptKeeper$5;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/CryptKeeper$5;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 678
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 680
    const v4, 0x7f0b0615

    .line 681
    .local v4, textId:I
    const v3, 0x7f02009a

    .line 682
    .local v3, phoneCallIcon:I
    const v5, 0x7f02009a

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 688
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 672
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 684
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f0b0614

    .line 685
    .restart local v4       #textId:I
    const v1, 0x7f020041

    .line 686
    .local v1, emergencyIcon:I
    const v5, 0x7f020041

    invoke-virtual {v0, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 439
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 463
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v1, 0x0

    .line 449
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    const/16 v1, 0x32

    .line 454
    :goto_1
    const v5, 0x7f0b0126

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 455
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 457
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 458
    new-array v5, v8, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 449
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 753
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 743
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 282
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 296
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->finish()V

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 303
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 310
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 311
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 313
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 314
    instance-of v1, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_1

    .line 315
    check-cast v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    .line 316
    iget-object v0, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 317
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 387
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 599
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 601
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 620
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 608
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 613
    iput-boolean v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mIgnoreBack:Z

    .line 615
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 618
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->delayAudioNotification()V

    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 373
    .local v0, state:Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 375
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 329
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    .line 330
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 360
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->delayAudioNotification()V

    .line 749
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->delayAudioNotification()V

    .line 738
    const/4 v0, 0x0

    return v0
.end method
