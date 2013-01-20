.class Lcom/android/camera/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x3

    .line 552
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "SurfaceTexture ready callback received"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #setter for: Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v1, p1}, Lcom/android/camera/EffectsRecorder;->access$102(Lcom/android/camera/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 556
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-nez v1, :cond_2

    .line 560
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    monitor-exit v2

    .line 611
    :goto_0
    return-void

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 566
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    :cond_4
    if-nez p1, :cond_9

    .line 570
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 571
    const-string v1, "EffectsRecorder"

    const-string v3, "Ready callback: source null! Looks like graph was closed!"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_5
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 579
    :cond_6
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 580
    const-string v1, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ready callback: State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v4}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". stopCameraPreview"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_7
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 585
    :cond_8
    monitor-exit v2

    goto :goto_0

    .line 589
    :cond_9
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 591
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 592
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "EffectsRecorder"

    const-string v3, "Runner active, connecting effects preview"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v3}, Lcom/android/camera/EffectsRecorder;->access$100(Lcom/android/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 599
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 602
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 604
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v3, 0x3

    #setter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v1, v3}, Lcom/android/camera/EffectsRecorder;->access$202(Lcom/android/camera/EffectsRecorder;I)I

    .line 606
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "EffectsRecorder"

    const-string v3, "Start preview/effect switch complete"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_b
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$1;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v3}, Lcom/android/camera/EffectsRecorder;->access$400(Lcom/android/camera/EffectsRecorder;)I

    move-result v3

    const/4 v4, 0x5

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v1, v3, v4}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    .line 610
    monitor-exit v2

    goto/16 :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect camera to effect input"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
