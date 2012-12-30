.class Lcom/android/server/WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private switchState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "devName"
    .parameter "state1Bits"
    .parameter "state2Bits"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 63
    iput p2, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 64
    iput p3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 65
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeNewHeadsetState(Ljava/lang/String;I)I
    .locals 7
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v4, "usb_audio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$100()I

    move-result v4

    and-int/lit8 v4, v4, 0x13

    if-ne p2, v2, :cond_0

    :goto_0
    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    .line 114
    :goto_1
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState switchState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    return v0

    .line 86
    :cond_0
    if-ne p2, v3, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 89
    :cond_2
    const-string v4, "dock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$100()I

    move-result v4

    and-int/lit8 v4, v4, 0x13

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    or-int v0, v4, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 100
    :cond_5
    const-string v0, "hdmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-ne p2, v2, :cond_6

    const/16 v1, 0x10

    :cond_6
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 104
    :cond_7
    const-string v0, "Headset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    and-int/lit8 v1, p2, 0x3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    .line 109
    :cond_8
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->access$100()I

    move-result v0

    and-int/lit8 v0, v0, 0x1c

    if-ne p2, v2, :cond_a

    move v1, v2

    :cond_9
    :goto_2
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->switchState:I

    goto :goto_1

    :cond_a
    if-ne p2, v3, :cond_9

    move v1, v3

    goto :goto_2
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "/devices/virtual/switch/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const-string v0, "/sys/class/switch/%s/state"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
