.class public Lcom/android/gallery3d/photoeditor/ImageActionButton;
.super Landroid/widget/ImageButton;
.source "ImageActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 39
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/ImageActionButton;->setAlpha(F)V

    .line 40
    return-void

    .line 39
    :cond_0
    const v0, 0x3e8f5c29

    goto :goto_0
.end method
