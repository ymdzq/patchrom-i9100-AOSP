.class public Lcom/android/gallery3d/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;,
        Lcom/android/gallery3d/app/AlbumDataLoader$UpdateContent;,
        Lcom/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;,
        Lcom/android/gallery3d/app/AlbumDataLoader$UpdateInfo;,
        Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;,
        Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    }
.end annotation


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private final mSource:Lcom/android/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 5
    .parameter "context"
    .parameter "mediaSet"

    .prologue
    const-wide/16 v3, -0x1

    const/16 v2, 0x3e8

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 60
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 62
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 63
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 66
    iput-wide v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    .line 69
    iput v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    .line 72
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    .line 78
    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 80
    new-array v0, v2, [Lcom/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    .line 81
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 82
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 86
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$1;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/LoadingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumDataLoader;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumDataLoader;)Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumDataLoader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/gallery3d/app/AlbumDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method private clearSlot(I)V
    .locals 4
    .parameter "slotIndex"

    .prologue
    const-wide/16 v2, -0x1

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    .line 140
    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 207
    .local v1, task:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 212
    :goto_0
    return-object v2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setContentWindow(II)V
    .locals 7
    .parameter "contentStart"
    .parameter "contentEnd"

    .prologue
    .line 143
    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v6, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 145
    .local v0, end:I
    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 148
    .local v5, start:I
    monitor-enter p0

    .line 149
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    .line 150
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    .line 153
    .local v2, itemVersion:[J
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    .line 154
    .local v4, setVersion:[J
    if-ge p1, v0, :cond_2

    if-lt v5, p2, :cond_3

    .line 155
    :cond_2
    move v1, v5

    .local v1, i:I
    move v3, v0

    .local v3, n:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 156
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v1           #i:I
    .end local v2           #itemVersion:[J
    .end local v3           #n:I
    .end local v4           #setVersion:[J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 159
    .restart local v2       #itemVersion:[J
    .restart local v4       #setVersion:[J
    :cond_3
    move v1, v5

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 160
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 162
    :cond_4
    move v1, p2

    move v3, v0

    .restart local v3       #n:I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 163
    rem-int/lit16 v6, v1, 0x3e8

    invoke-direct {p0, v6}, Lcom/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 166
    :cond_5
    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public get(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getActiveStart()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method public isActive(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 129
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->terminate()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 114
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSourceListener:Lcom/android/gallery3d/app/AlbumDataLoader$MySourceListener;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumDataLoader;Lcom/android/gallery3d/app/AlbumDataLoader$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataLoader$ReloadTask;->start()V

    .line 108
    return-void
.end method

.method public setActiveWindow(II)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 170
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 175
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/android/gallery3d/data/MediaItem;

    array-length v2, v3

    .line 176
    .local v2, length:I
    iput p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    .line 177
    iput p2, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    .line 180
    if-eq p1, p2, :cond_0

    .line 182
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 184
    .local v1, contentStart:I
    add-int v3, v1, v2

    iget v4, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 185
    .local v0, contentEnd:I
    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 187
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/AlbumDataLoader;->setContentWindow(II)V

    goto :goto_0

    .end local v0           #contentEnd:I
    .end local v1           #contentStart:I
    .end local v2           #length:I
    :cond_3
    move v3, v4

    .line 172
    goto :goto_1
.end method

.method public setDataListener(Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/android/gallery3d/app/AlbumDataLoader$DataListener;

    .line 199
    return-void
.end method

.method public setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;

    .line 203
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method
