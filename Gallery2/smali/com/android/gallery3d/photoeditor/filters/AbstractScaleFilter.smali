.class public abstract Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "AbstractScaleFilter.java"


# instance fields
.field protected scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;->scale:F

    .line 43
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;->scale:F

    .line 33
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    return-void
.end method
