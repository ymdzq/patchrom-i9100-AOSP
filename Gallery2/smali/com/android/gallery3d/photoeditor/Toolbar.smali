.class public Lcom/android/gallery3d/photoeditor/Toolbar;
.super Landroid/widget/RelativeLayout;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    }
.end annotation


# instance fields
.field private final idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

.field private spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/Toolbar$1;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/Toolbar;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 63
    new-instance v0, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/photoeditor/Toolbar;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/photoeditor/Toolbar;)Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    return-object v0
.end method


# virtual methods
.method public dismissSpinner()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->dismiss()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    .line 89
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->idleHandler:Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/Toolbar$ToolbarIdleHandler;->killIdle()V

    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showSpinner()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->tools:Ljava/util/List;

    new-instance v3, Lcom/android/gallery3d/photoeditor/Toolbar$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/photoeditor/Toolbar$2;-><init>(Lcom/android/gallery3d/photoeditor/Toolbar;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/Toolbar;->spinner:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->show()V

    .line 82
    :cond_0
    return-void
.end method
