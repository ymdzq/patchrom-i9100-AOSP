.class Lcom/android/server/am/ContentProviderRecord;
.super Ljava/lang/Object;
.source "ContentProviderRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    }
.end annotation


# instance fields
.field final appInfo:Landroid/content/pm/ApplicationInfo;

.field final connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field externalProcessNoHandleCount:I

.field externalProcessTokenToHandle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final info:Landroid/content/pm/ProviderInfo;

.field launchingApp:Lcom/android/server/am/ProcessRecord;

.field final name:Landroid/content/ComponentName;

.field public noReleaseNeeded:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field public provider:Landroid/content/IContentProvider;

.field final service:Lcom/android/server/am/ActivityManagerService;

.field shortStringName:Ljava/lang/String;

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "_service"
    .parameter "_info"
    .parameter "ai"
    .parameter "_name"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 61
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 62
    iput-object p3, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 64
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 65
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 1
    .parameter "cpr"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 69
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 70
    iget v0, p1, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iput v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    .line 71
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 73
    iget-boolean v0, p1, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 129
    .local v0, handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->unlinkFromOwnDeathLocked()V

    .line 130
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public addExternalProcessHandleLocked(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    .line 103
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 97
    .local v0, handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .end local v0           #handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)V

    .line 99
    .restart local v0       #handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$008(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    goto :goto_0
.end method

.method public canRunHere(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .parameter "app"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"
    .parameter "full"

    .prologue
    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string v2, " process="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "proc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchingApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 150
    :cond_1
    if-eqz p3, :cond_2

    .line 151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 152
    const-string v2, " provider="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "authority="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    if-eqz p3, :cond_4

    .line 156
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    if-eqz v2, :cond_4

    .line 157
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "isSyncable="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    const-string v2, " multiprocess="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v2, v2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 159
    const-string v2, " initOrder="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v2, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    :cond_4
    if-eqz p3, :cond_8

    .line 163
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "externals="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 174
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 175
    if-eqz p3, :cond_6

    .line 176
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 179
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 180
    .local v0, conn:Lcom/android/server/am/ContentProviderConnection;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  -> "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eq v2, p0, :cond_7

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    *** WRONG PROVIDER: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-object v2, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 178
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v0           #conn:Lcom/android/server/am/ContentProviderConnection;
    .end local v1           #i:I
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v2, :cond_5

    .line 169
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 170
    const-string v2, " connections, "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    const-string v2, " external handles"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    goto :goto_0

    .line 223
    .end local v0           #iterator:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    :catchall_1
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1

    .line 223
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 227
    return-void
.end method

.method public hasExternalProcessHandles()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newHolder(Lcom/android/server/am/ContentProviderConnection;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 2
    .parameter "conn"

    .prologue
    .line 77
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 78
    .local v0, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    iput-object v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 79
    iget-boolean v1, p0, Lcom/android/server/am/ContentProviderRecord;->noReleaseNeeded:Z

    iput-boolean v1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 80
    iput-object p1, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 81
    return-object v0
.end method

.method public removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z
    .locals 4
    .parameter "token"

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, hasHandle:Z
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    .line 110
    .local v0, handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 112
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$010(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    .line 113
    #getter for: Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I
    invoke-static {v0}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->access$000(Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;)I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 124
    .end local v0           #handle:Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
    .end local v1           #hasHandle:Z
    :goto_0
    return v2

    .line 119
    .restart local v1       #hasHandle:Z
    :cond_0
    if-nez v1, :cond_1

    .line 120
    iget v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    goto :goto_0

    .line 124
    .end local v1           #hasHandle:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    .line 211
    :goto_0
    return-object v1

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    .line 200
    :goto_0
    return-object v1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
