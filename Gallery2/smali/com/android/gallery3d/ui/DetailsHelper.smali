.class public Lcom/android/gallery3d/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;,
        Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/GLView;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V
    .locals 1
    .parameter "activity"
    .parameter "rootPane"
    .parameter "source"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {v0, p1, p3}, Lcom/android/gallery3d/ui/DialogDetailsView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    .line 50
    return-void
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    .line 92
    sparse-switch p1, :sswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    :sswitch_0
    const v0, 0x7f0d0171

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_1
    const v0, 0x7f0d0172

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :sswitch_2
    const v0, 0x7f0d0173

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :sswitch_3
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :sswitch_4
    const v0, 0x7f0d0175

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :sswitch_5
    const v0, 0x7f0d0176

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :sswitch_6
    const v0, 0x7f0d0177

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :sswitch_7
    const v0, 0x7f0d0178

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :sswitch_8
    const v0, 0x7f0d0179

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :sswitch_9
    const v0, 0x7f0d017a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :sswitch_a
    const v0, 0x7f0d017b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :sswitch_b
    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :sswitch_c
    const v0, 0x7f0d017d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :sswitch_d
    const v0, 0x7f0d017e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :sswitch_e
    const v0, 0x7f0d017f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :sswitch_f
    const v0, 0x7f0d0180

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :sswitch_10
    const v0, 0x7f0d0181

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :sswitch_11
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :sswitch_12
    const v0, 0x7f0d0183

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x64 -> :sswitch_b
        0x65 -> :sswitch_c
        0x66 -> :sswitch_d
        0x67 -> :sswitch_f
        0x68 -> :sswitch_10
        0x69 -> :sswitch_e
        0x6b -> :sswitch_11
        0x6c -> :sswitch_12
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    .line 81
    :cond_0
    return-void
.end method

.method public static resolveAddress(Lcom/android/gallery3d/app/GalleryActivity;[DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1
    .parameter "activity"
    .parameter "latlng"
    .parameter "listener"

    .prologue
    .line 71
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    sput-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    .line 76
    :goto_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/android/gallery3d/ui/DetailsHelper;->sAddressResolver:Lcom/android/gallery3d/ui/DetailsAddressResolver;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsAddressResolver;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->hide()V

    .line 89
    return-void
.end method

.method public layout(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    instance-of v1, v1, Lcom/android/gallery3d/ui/GLView;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    check-cast v0, Lcom/android/gallery3d/ui/GLView;

    .line 55
    .local v0, view:Lcom/android/gallery3d/ui/GLView;
    sub-int v1, p4, p2

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 57
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v1, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 59
    .end local v0           #view:Lcom/android/gallery3d/ui/GLView;
    :cond_0
    return-void
.end method

.method public reloadDetails(I)V
    .locals 1
    .parameter "indexHint"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->reloadDetails(I)V

    .line 63
    return-void
.end method

.method public setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 67
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/DetailsHelper;->mContainer:Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/DetailsHelper$DetailsViewContainer;->show()V

    .line 85
    return-void
.end method
