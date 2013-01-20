.class public Lcom/android/gallery3d/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "PhotoEditor.java"


# instance fields
.field private actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

.field private effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private saveUri:Landroid/net/Uri;

.field private sourceUri:Landroid/net/Uri;

.field private toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/Toolbar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method private createBackRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$6;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createSaveRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$4;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createShareRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$5;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private createUndoRedoRunnable(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter "undo"

    .prologue
    .line 98
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method private openPhoto()V
    .locals 5

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/Toolbar;->showSpinner()V

    .line 80
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$2;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 94
    .local v0, callback:Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;
    new-instance v1, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->clickBack()V

    .line 215
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;

    .line 51
    :cond_0
    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/Toolbar;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    .line 52
    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/ActionBar;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    .line 53
    new-instance v4, Lcom/android/gallery3d/photoeditor/FilterStack;

    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v5, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-direct {v4, v1, v5, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/FilterStack$StackListener;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v1, "save_uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    .line 63
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/photoeditor/ActionBar;->updateSave(Z)V

    .line 67
    :cond_1
    const v1, 0x7f0c005c

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/photoeditor/EffectsBar;->initialize(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 69
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v4, 0x7f0c004e

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v2, 0x7f0c004f

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createUndoRedoRunnable(Z)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 73
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v2, 0x7f0c0051

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createSaveRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 74
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v2, 0x7f0c0052

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createShareRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 75
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->actionBar:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v2, 0x7f0c004c

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->createBackRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/photoeditor/ActionBar;->setClickRunnable(ILjava/lang/Runnable;)V

    .line 76
    return-void

    :cond_2
    move v1, v3

    .line 63
    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->dismissSpinner()V

    .line 223
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->onResume()V

    .line 229
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->openPhoto()V

    .line 230
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/FilterStack;->saveStacks(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 210
    return-void
.end method
