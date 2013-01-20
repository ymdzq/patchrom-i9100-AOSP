.class public Lcom/android/gallery3d/photoeditor/EffectsBar;
.super Landroid/widget/LinearLayout;
.source "EffectsBar.java"


# instance fields
.field private activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field private effectsGallery:Landroid/view/View;

.field private effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

.field private filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

.field private final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/EffectsBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/EffectsBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->createEffectsGallery(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/EffectAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/photoeditor/EffectsBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/photoeditor/EffectsBar;)Lcom/android/gallery3d/photoeditor/FilterStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    return-object v0
.end method

.method private createEffectsGallery(I)V
    .locals 6
    .parameter "effectsId"

    .prologue
    const/4 v5, 0x0

    .line 71
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04002a

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 72
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    const v4, 0x7f0c0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 73
    .local v2, scrollView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, effects:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct {p0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v2, v5, v5}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 79
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v3, v5}, Lcom/android/gallery3d/photoeditor/EffectsBar;->addView(Landroid/view/View;I)V

    .line 80
    return-void
.end method

.method private exitActiveEffect(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "runnableOnDone"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/Toolbar;

    .line 120
    .local v0, toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;
    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->showSpinner()V

    .line 121
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    new-instance v2, Lcom/android/gallery3d/photoeditor/EffectsBar$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$3;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/Toolbar;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V

    .line 132
    const/4 v1, 0x1

    .line 134
    .end local v0           #toolbar:Lcom/android/gallery3d/photoeditor/Toolbar;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private exitEffectsGallery()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->activeEffect:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->removeView(Landroid/view/View;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsGallery:Landroid/view/View;

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupEffect(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 83
    new-instance v0, Lcom/android/gallery3d/photoeditor/EffectsBar$2;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar$2;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public exit(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "runnableOnDone"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->clearSelected()V

    .line 146
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exitEffectsGallery()Z

    move-result v0

    .line 151
    .local v0, exited:Z
    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public initialize(Lcom/android/gallery3d/photoeditor/FilterStack;)V
    .locals 2
    .parameter "filterStack"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;

    .line 48
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsMenu;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar;->effectsMenu:Lcom/android/gallery3d/photoeditor/EffectsMenu;

    new-instance v1, Lcom/android/gallery3d/photoeditor/EffectsBar$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/EffectsBar$1;-><init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsMenu;->setOnToggleListener(Lcom/android/gallery3d/photoeditor/EffectsMenu$OnToggleListener;)V

    .line 67
    return-void
.end method
