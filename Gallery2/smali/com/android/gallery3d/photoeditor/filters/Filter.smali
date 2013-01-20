.class public abstract Lcom/android/gallery3d/photoeditor/filters/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static context:Landroid/media/effect/EffectContext;

.field private static final effects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            "Landroid/media/effect/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/gallery3d/photoeditor/filters/Filter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, filterClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/filters/FilterCreator;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static releaseContext()V
    .locals 3

    .prologue
    .line 43
    sget-object v2, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/effect/Effect;

    .line 46
    .local v0, effect:Landroid/media/effect/Effect;
    invoke-virtual {v0}, Landroid/media/effect/Effect;->release()V

    goto :goto_0

    .line 48
    .end local v0           #effect:Landroid/media/effect/Effect;
    :cond_0
    sget-object v2, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 49
    sget-object v2, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    invoke-virtual {v2}, Landroid/media/effect/EffectContext;->release()V

    .line 50
    const/4 v2, 0x0

    sput-object v2, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;
    .locals 3
    .parameter "name"

    .prologue
    .line 62
    sget-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/effect/Effect;

    .line 63
    .local v0, effect:Landroid/media/effect/Effect;
    if-nez v0, :cond_1

    .line 64
    sget-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Landroid/media/effect/EffectContext;->createWithCurrentGlContext()Landroid/media/effect/EffectContext;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    .line 67
    :cond_0
    sget-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->context:Landroid/media/effect/EffectContext;

    invoke-virtual {v1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 68
    const-string v1, "tile_size"

    const/16 v2, 0x280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    return-object v0
.end method

.method public abstract process(Lcom/android/gallery3d/photoeditor/Photo;Lcom/android/gallery3d/photoeditor/Photo;)V
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 99
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/android/gallery3d/photoeditor/filters/Filter;->effects:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/effect/Effect;

    .line 56
    .local v0, effect:Landroid/media/effect/Effect;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/media/effect/Effect;->release()V

    .line 59
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/filters/Filter;->writeToParcel(Landroid/os/Parcel;)V

    .line 109
    return-void
.end method
