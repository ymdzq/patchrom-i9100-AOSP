.class public Lcom/android/gallery3d/photoeditor/FilterStack;
.super Ljava/lang/Object;
.source "FilterStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;
    }
.end annotation


# instance fields
.field private final appliedStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final buffers:[Lcom/android/gallery3d/photoeditor/Photo;

.field private outputTopFilter:Z

.field private volatile paused:Z

.field private final photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private queuedTopFilterChange:Ljava/lang/Runnable;

.field private final redoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/android/gallery3d/photoeditor/Photo;

.field private final stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "jni_eglfence"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V
    .locals 4
    .parameter "photoView"
    .parameter "stackListener"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/photoeditor/Photo;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 58
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    const-string v3, "applied_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    const-string v3, "redo_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {p2, v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;->onStackChanged(ZZ)V

    .line 65
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->stackListener:Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->invalidateTopFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/FilterStack;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/Photo;)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/FilterStack;)[Lcom/android/gallery3d/photoeditor/Photo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/FilterStack;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->invalidate()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/photoeditor/FilterStack;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    return-object v0
.end method

.method private callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$1;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method private getFilters(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "savedState"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getOutBufferIndex(I)I
    .locals 1
    .parameter "filterIndex"

    .prologue
    .line 132
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private invalidate()V
    .locals 7

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 87
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v5}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v5

    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    invoke-virtual {v6}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v5

    aput-object v5, v3, v4

    .line 92
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    .line 96
    .local v1, photo:Lcom/android/gallery3d/photoeditor/Photo;
    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    .line 97
    .local v2, size:I
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    if-nez v3, :cond_3

    .line 98
    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    .end local v2           #size:I
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 101
    .restart local v2       #size:I
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-boolean v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    invoke-virtual {v3, v1, v4}, Lcom/android/gallery3d/photoeditor/PhotoView;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 103
    .end local v1           #photo:Lcom/android/gallery3d/photoeditor/Photo;
    .end local v2           #size:I
    :cond_4
    return-void
.end method

.method private invalidateTopFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method private native nativeEglSetFenceAndWait()V
.end method

.method private pushFilterInternal(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->outputTopFilter:Z

    .line 193
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->stackChanged()V

    .line 194
    return-void
.end method

.method private reallocateBuffer(I)V
    .locals 4
    .parameter "target"

    .prologue
    .line 78
    xor-int/lit8 v0, p1, 0x1

    .line 79
    .local v0, other:I
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/Photo;->create(II)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v2

    aput-object v2, v1, p1

    .line 80
    return-void
.end method

.method private runFilter(I)Lcom/android/gallery3d/photoeditor/Photo;
    .locals 4
    .parameter "filterIndex"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->getOutBufferIndex(I)I

    move-result v1

    .line 114
    .local v1, out:I
    if-lez p1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    xor-int/lit8 v3, v1, 0x1

    aget-object v0, v2, v3

    .line 115
    .local v0, input:Lcom/android/gallery3d/photoeditor/Photo;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/photoeditor/Photo;->matchDimension(Lcom/android/gallery3d/photoeditor/Photo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/Photo;->clear()V

    .line 118
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->reallocateBuffer(I)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/photoeditor/filters/Filter;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/android/gallery3d/photoeditor/filters/Filter;->process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 121
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/FilterStack;->nativeEglSetFenceAndWait()V

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->buffers:[Lcom/android/gallery3d/photoeditor/Photo;

    aget-object v2, v2, v1

    .line 124
    :goto_1
    return-object v2

    .line 114
    .end local v0           #input:Lcom/android/gallery3d/photoeditor/Photo;
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;

    goto :goto_0

    .line 124
    .restart local v0       #input:Lcom/android/gallery3d/photoeditor/Photo;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private stackChanged()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 149
    .local v1, canUndo:Z
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 150
    .local v0, canRedo:Z
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v3, Lcom/android/gallery3d/photoeditor/FilterStack$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/gallery3d/photoeditor/FilterStack$2;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void

    .end local v0           #canRedo:Z
    .end local v1           #canUndo:Z
    :cond_0
    move v1, v3

    .line 148
    goto :goto_0

    .restart local v1       #canUndo:Z
    :cond_1
    move v0, v3

    .line 149
    goto :goto_1
.end method


# virtual methods
.method public getOutputBitmap(Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$3;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$3;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->flush()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/FilterStack$9;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onPause()V

    .line 273
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onResume()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->paused:Z

    .line 278
    return-void
.end method

.method public pushFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$5;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$5;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public redo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$7;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$7;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public saveStacks(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 73
    const-string v0, "applied_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->appliedStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    const-string v0, "redo_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->redoStack:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method

.method public setPhotoSource(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "bitmap"
    .parameter "callback"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/FilterStack$4;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/FilterStack$8;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$8;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->queuedTopFilterChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public undo(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/FilterStack$6;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack$6;-><init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method
