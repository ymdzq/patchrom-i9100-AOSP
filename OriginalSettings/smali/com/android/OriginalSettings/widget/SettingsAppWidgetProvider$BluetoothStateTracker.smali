.class final Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 465
    packed-switch p0, :pswitch_data_0

    .line 475
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 467
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 469
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 471
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 473
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 422
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 423
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 424
    .local v0, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 425
    const/4 v1, 0x4

    .line 429
    .end local v0           #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 427
    .restart local v0       #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 429
    .end local v0           #manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 413
    const v0, 0x7f08016c

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 416
    if-eqz p1, :cond_0

    const v0, 0x7f02002b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02002a

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 414
    const v0, 0x7f08016d

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 453
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 457
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 434
    invoke-static {}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 442
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
