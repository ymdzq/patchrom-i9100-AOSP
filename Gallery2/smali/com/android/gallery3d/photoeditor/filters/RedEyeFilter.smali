.class public Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "RedEyeFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final redeyes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addRedEyePosition(Landroid/graphics/PointF;)V
    .locals 1
    .parameter "point"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
    .locals 10
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 46
    const-string v6, "android.media.effect.effects.RedEyeEffect"

    invoke-virtual {p0, v6}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v1

    .line 47
    .local v1, effect:Landroid/media/effect/Effect;
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v0, v6, [F

    .line 48
    .local v0, centers:[F
    const/4 v3, 0x0

    .line 49
    .local v3, i:I
    iget-object v6, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 50
    .local v2, eye:Landroid/graphics/PointF;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    iget v6, v2, Landroid/graphics/PointF;->x:F

    aput v6, v0, v3

    .line 51
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    iget v6, v2, Landroid/graphics/PointF;->y:F

    aput v6, v0, v4

    goto :goto_0

    .line 53
    .end local v2           #eye:Landroid/graphics/PointF;
    :cond_0
    const-string v6, "centers"

    invoke-virtual {v1, v6, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->width()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/Photo;->height()I

    move-result v8

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/Photo;->texture()I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 55
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->redeyes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 61
    .local v0, eye:Landroid/graphics/PointF;
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 63
    .end local v0           #eye:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method
