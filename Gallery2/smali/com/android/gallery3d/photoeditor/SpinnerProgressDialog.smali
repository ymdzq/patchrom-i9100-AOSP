.class public Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;
.super Landroid/app/Dialog;
.source "SpinnerProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;
    }
.end annotation


# instance fields
.field private final enabledTools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, tools:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, -0x2

    .line 50
    const v2, 0x7f0e0031

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/List;

    .line 51
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->setCancelable(Z)V

    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 56
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->listener:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;

    .line 61
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 76
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 77
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 79
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->listener:Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog$OnTouchListener;->onTouch(Landroid/content/DialogInterface;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 67
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SpinnerProgressDialog;->enabledTools:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 68
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 70
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method
