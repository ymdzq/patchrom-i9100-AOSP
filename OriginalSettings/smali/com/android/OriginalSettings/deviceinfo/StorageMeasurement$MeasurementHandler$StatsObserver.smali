.class Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsSizeForThisStatsObserver:J

.field final synthetic this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 319
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAppsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$300(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;)Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 328
    :cond_0
    if-eqz p2, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v0, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    .line 343
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    monitor-exit v1

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 331
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    iget-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    goto :goto_1

    .line 336
    :cond_3
    iget-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    goto :goto_1

    .line 346
    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    iget-object v0, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    iget-wide v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsSizeForThisStatsObserver:J

    #setter for: Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAppsSize:J
    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->this$1:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    #calls: Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->access$600(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    goto :goto_0
.end method

.method public queuePackageMeasurementLocked(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->mAppsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
