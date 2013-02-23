.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;
.super Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 98
    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 230
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 232
    invoke-virtual {p0, p3}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 236
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 220
    return-void
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 240
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .line 242
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 327
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 329
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 331
    :goto_1
    return-void

    .line 244
    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 245
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 246
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 249
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    .line 250
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 254
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020036

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 258
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 259
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 262
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    .line 263
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 265
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 266
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_5

    .line 272
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 276
    :goto_3
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b017d

    sget-object v6, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 281
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 284
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_6

    .line 285
    new-instance v4, Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/OriginalSettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 289
    :goto_4
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b017e

    sget-object v6, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 292
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 293
    .local v1, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 295
    if-nez v1, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    iput-boolean v9, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 300
    :cond_2
    if-nez v2, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    if-ne p2, v8, :cond_7

    .line 303
    iput-boolean v9, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 304
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    .line 311
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 256
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f02003c

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 274
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .line 287
    .restart local v2       #numberOfPairedDevices:I
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 306
    .restart local v1       #numberOfAvailableDevices:I
    :cond_7
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 315
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0b0086

    .line 316
    goto/16 :goto_0

    .line 319
    :pswitch_2
    const v0, 0x7f0b0187

    .line 320
    goto/16 :goto_0

    .line 323
    :pswitch_3
    const v0, 0x7f0b0085

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 111
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 115
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 118
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 119
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 123
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 125
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 132
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    .line 134
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 135
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 385
    const v0, 0x7f0b0658

    return v0
.end method

.method initDevicePreference(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 377
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 107
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 337
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    .line 186
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 171
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 172
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0b017b

    .line 174
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    const/4 v3, 0x2

    const v5, 0x7f0b0068

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 180
    const/4 v3, 0x3

    const v5, 0x7f0b005e

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    const/4 v3, 0x4

    const v5, 0x7f0b007d

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_1
    move v0, v4

    .line 170
    goto :goto_1

    .line 172
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_2
    const v2, 0x7f0b017a

    goto :goto_2

    .restart local v2       #textId:I
    :cond_3
    move v5, v4

    .line 174
    goto :goto_3
.end method

.method public onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 350
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 225
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 192
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 198
    :pswitch_1
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_2
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->pause()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 165
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->resume()V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 153
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 341
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 344
    return-void
.end method
