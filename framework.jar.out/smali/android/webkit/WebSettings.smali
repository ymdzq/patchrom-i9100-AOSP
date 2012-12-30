.class public abstract Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 319
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 284
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 266
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public abstract getAllowFileAccessFromFileURLs()Z
.end method

.method public abstract getAllowUniversalAccessFromFileURLs()Z
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 816
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 224
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1201
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 730
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 436
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 247
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1050
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 450
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 298
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1082
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 358
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 372
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 275
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setAllowFileAccess(Z)V
    .locals 1
    .parameter "allow"

    .prologue
    .line 257
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public abstract setAllowFileAccessFromFileURLs(Z)V
.end method

.method public abstract setAllowUniversalAccessFromFileURLs(Z)V
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 1
    .parameter "appCacheMaxSize"

    .prologue
    .line 986
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "appCachePath"

    .prologue
    .line 977
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 806
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 214
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1193
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 943
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 740
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1135
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 426
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 235
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 309
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 955
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1040
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 858
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 443
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1
    .parameter "overview"

    .prologue
    .line 291
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMediaPreloadEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1170
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 1
    .parameter "priority"

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 350
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public setSavePassword(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 365
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 185
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1
    .parameter "textZoom"

    .prologue
    .line 381
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 1
    .parameter "view"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 331
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 1
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 1
    .parameter "ua"

    .prologue
    .line 1153
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 195
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method
