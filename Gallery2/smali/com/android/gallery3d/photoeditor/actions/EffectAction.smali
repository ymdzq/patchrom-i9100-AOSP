.class public abstract Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.super Landroid/widget/LinearLayout;
.source "EffectAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;,
        Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;
    }
.end annotation


# instance fields
.field private disableFilterOutput:Z

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

.field private listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

.field private pushedFilter:Z

.field protected toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

.field private tooltip:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->close()V

    .line 114
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 118
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    return-void
.end method


# virtual methods
.method public begin(Landroid/view/View;Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;)V
    .locals 3
    .parameter "root"
    .parameter "filterStack"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    .line 64
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 65
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->prepare()V

    .line 74
    return-void
.end method

.method protected disableFilterOutput()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    .line 124
    return-void
.end method

.method public end(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnableOnODone"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->tooltip:Landroid/widget/Toast;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->cancel()V

    .line 94
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->outputFilter()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->done:Z
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->access$000(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    #setter for: Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->runnableOnReady:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;->access$102(Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method

.method protected notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->pushFilter(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->pushedFilter:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->disableFilterOutput:Z

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->outputFilter()V

    .line 140
    :cond_1
    return-void
.end method

.method protected notifyOk()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->listener:Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;->onOk()V

    .line 144
    return-void
.end method

.method protected outputFilter()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->lastFilterChangedCallback:Lcom/android/gallery3d/photoeditor/actions/EffectAction$FilterChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->topFilterChanged(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 130
    return-void
.end method

.method protected abstract prepare()V
.end method
