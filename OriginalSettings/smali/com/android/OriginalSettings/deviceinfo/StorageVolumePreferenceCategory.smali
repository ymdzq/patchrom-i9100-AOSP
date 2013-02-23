.class public Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;,
        Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sMediaCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

.field public static final sPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowFormat:Z

.field private mColors:[I

.field private mFormatPreference:Landroid/preference/Preference;

.field private mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02d9

    invoke-direct {v1, v2, v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02db

    const v3, 0x7f0a0004

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02de

    const v3, 0x7f0a0006

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02df

    const v3, 0x7f0a0007

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f0b02dd

    const v3, 0x7f0a0005

    invoke-direct {v1, v2, v3}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02e0

    const v4, 0x7f0a0008

    invoke-direct {v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f0b02d8

    const v4, 0x7f0a0003

    invoke-direct {v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    .line 113
    new-array v0, v6, [Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    .line 123
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 2
    .parameter "context"
    .parameter "resources"
    .parameter "storageVolume"
    .parameter "storageManager"
    .parameter "isPrimary"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 136
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 166
    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 167
    iput-object p3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 168
    iput-object p4, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 169
    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {p1, p3, p5}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    .line 178
    if-nez p5, :cond_0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    .line 179
    :cond_0
    return-void

    .line 169
    :cond_1
    const v0, 0x7f0b03d3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 175
    goto :goto_1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 388
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 389
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 390
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 391
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->measure()V

    .line 368
    return-void
.end method

.method private resetPreferences()V
    .locals 4

    .prologue
    .line 234
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v1, v2

    .line 236
    .local v1, numberOfCategories:I
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 246
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 250
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 253
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 254
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 258
    return-void
.end method

.method private updatePreference(JJI)V
    .locals 3
    .parameter "size"
    .parameter "totalSize"
    .parameter "category"

    .prologue
    .line 357
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 8

    .prologue
    const v4, 0x7f0b02e4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 261
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 263
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, state:Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 268
    .local v0, readOnly:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string v1, "mounted"

    .line 270
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b02e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b02e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b02e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    :cond_3
    :goto_1
    return-void

    .line 263
    .end local v0           #readOnly:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/String;
    :cond_4
    const-string v1, "mounted"

    goto/16 :goto_0

    .line 290
    .restart local v0       #readOnly:Ljava/lang/String;
    .restart local v1       #state:Ljava/lang/String;
    :cond_5
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 292
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b02e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 296
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b02e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    .line 182
    new-instance v6, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    .line 184
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v7, 0x7f0d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 185
    .local v5, width:I
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 187
    .local v0, height:I
    sget-object v6, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v6

    .line 188
    .local v2, numberOfCategories:I
    new-array v6, v2, [Landroid/preference/Preference;

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    .line 189
    new-array v6, v2, [I

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 191
    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v4, preference:Landroid/preference/Preference;
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aput-object v4, v6, v1

    .line 193
    sget-object v6, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v6, v6, v1

    iget v6, v6, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 194
    const v6, 0x7f0b02da

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 195
    if-eqz v1, :cond_0

    .line 197
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v8, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v6, v1

    .line 198
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v6, v6, v1

    invoke-static {v5, v0, v6}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v4           #preference:Landroid/preference/Preference;
    :cond_1
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 203
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0b02e1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 204
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v7, 0x7f0b02e2

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 206
    iget-boolean v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v6, :cond_2

    .line 207
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 208
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0b02e6

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v7, 0x7f0b02e7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 212
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 214
    .local v3, pm:Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    .line 216
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v7, 0x7f0b02f0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 217
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v7, 0x7f0b02f1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 223
    :goto_1
    return-void

    .line 219
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 221
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 418
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 426
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_2

    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_3

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 434
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_4

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_5

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 442
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 444
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->getMiscSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/OriginalSettings/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 381
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 385
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 372
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 373
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 377
    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 5
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {p0, p3, p4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 314
    sub-long v0, p1, p3

    .line 316
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->clear()V

    .line 317
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 318
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->commit()V

    .line 320
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 321
    return-void
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 403
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method

.method public updateExact(JJJJJ[J)V
    .locals 19
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "appsSize"
    .parameter "downloadsSize"
    .parameter "miscSize"
    .parameter "mediaSizes"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->clear()V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-direct/range {p0 .. p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    sub-long v17, p1, p3

    .line 332
    .local v17, usedSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    move-wide/from16 v0, v17

    long-to-float v5, v0

    move-wide/from16 v0, p1

    long-to-float v6, v0

    div-float/2addr v5, v6

    const v6, -0x777778

    invoke-virtual {v2, v5, v6}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 335
    .end local v17           #usedSize:J
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 337
    const-wide/16 v15, 0x0

    .line 338
    .local v15, totalMediaSize:J
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v2, v2

    if-ge v14, v2, :cond_1

    .line 339
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v2, v2, v14

    iget v7, v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 340
    .local v7, category:I
    aget-wide v3, p11, v14

    .local v3, size:J
    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    .line 341
    invoke-direct/range {v2 .. v7}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 342
    add-long/2addr v15, v3

    .line 338
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 345
    .end local v3           #size:J
    .end local v7           #category:I
    :cond_1
    const/4 v13, 0x4

    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 349
    const/4 v13, 0x5

    move-object/from16 v8, p0

    move-wide/from16 v9, p9

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 351
    const/4 v13, 0x6

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->commit()V

    .line 354
    return-void
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 410
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void
.end method
