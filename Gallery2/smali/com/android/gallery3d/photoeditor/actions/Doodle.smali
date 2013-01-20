.class public Lcom/android/gallery3d/photoeditor/actions/Doodle;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/gallery3d/photoeditor/actions/Doodle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final color:I

.field private final normalizedPath:Landroid/graphics/Path;

.field private final points:Ljava/util/Vector;
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
    .line 105
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle$1;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PointF;)V
    .locals 4
    .parameter "color"
    .parameter "startPoint"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    .line 52
    const/16 v0, 0xc0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public static createPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    .local v0, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 46
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public addControlPoint(Landroid/graphics/PointF;)V
    .locals 8
    .parameter "point"

    .prologue
    const/high16 v7, 0x4000

    .line 70
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 71
    .local v0, last:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    div-float/2addr v4, v7

    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 72
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    return v0
.end method

.method public getDrawingPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .parameter "matrix"
    .parameter "path"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 88
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 89
    return-void
.end method

.method public inBounds()Z
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 62
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 63
    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->normalizedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 98
    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->points:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 101
    .local v1, point:Landroid/graphics/PointF;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 103
    .end local v1           #point:Landroid/graphics/PointF;
    :cond_0
    return-void
.end method
