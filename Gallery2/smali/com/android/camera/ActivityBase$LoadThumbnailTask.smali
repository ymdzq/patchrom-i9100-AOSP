.class Lcom/android/camera/ActivityBase$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Z)V
    .locals 0
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 304
    iput-boolean p2, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    .line 305
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 310
    iget-object v5, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 311
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 312
    .local v3, t:Lcom/android/camera/Thumbnail;
    iget-boolean v5, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v3

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    .line 333
    .end local v3           #t:Lcom/android/camera/Thumbnail;
    :cond_1
    :goto_0
    return-object v3

    .line 318
    .restart local v3       #t:Lcom/android/camera/Thumbnail;
    :cond_2
    if-nez v3, :cond_1

    .line 319
    new-array v2, v6, [Lcom/android/camera/Thumbnail;

    .line 321
    .local v2, result:[Lcom/android/camera/Thumbnail;
    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;)I

    move-result v0

    .line 323
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v4

    .line 327
    goto :goto_0

    .line 325
    :pswitch_1
    const/4 v4, 0x0

    aget-object v3, v2, v4

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->cancel(Z)Z

    move-object v3, v4

    .line 330
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    iput-object p1, v0, Lcom/android/camera/ActivityBase;->mThumbnail:Lcom/android/camera/Thumbnail;

    .line 340
    iget-object v0, p0, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->updateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 300
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
