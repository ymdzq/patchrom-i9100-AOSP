.class public Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "AutoFixAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;-><init>()V

    .line 38
    .local v0, filter:Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/AutoFixFilter;->setScale(F)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/AutoFixAction;->notifyOk()V

    .line 41
    return-void
.end method
