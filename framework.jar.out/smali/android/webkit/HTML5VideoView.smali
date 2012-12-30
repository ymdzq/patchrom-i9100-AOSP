.class public Landroid/webkit/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoView$FullscreenMediaController;,
        Landroid/webkit/HTML5VideoView$VideoTextureView;,
        Landroid/webkit/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANIMATION_DURATION:J = 0x2eeL

.field static final ANIMATION_STATE_FINISHED:I = 0x2

.field static final ANIMATION_STATE_NONE:I = 0x0

.field static final ANIMATION_STATE_STARTED:I = 0x1

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_BUFFERING:I = 0x4

.field static final STATE_INITIALIZED:I = 0x0

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RELEASED:I = 0x5

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field private mAnimationState:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDuration:I

.field private mFullscreenHeight:I

.field private mFullscreenWidth:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInlineHeight:F

.field private mInlineWidth:F

.field private mInlineX:F

.field private mInlineY:F

.field private mIsFullscreen:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mMediaController:Landroid/widget/MediaController;

.field private mNeedsAttachToInlineGlContext:Z

.field protected mPauseDuringPreparing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerBuffering:Z

.field private mProgressView:Landroid/view/View;

.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mSaveSeekTime:I

.field private mStartWhenPrepared:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureNames:[I

.field private mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

.field private mTimer:Ljava/util/Timer;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWebViewLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HTML5VideoView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 2
    .parameter "proxy"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 597
    new-instance v0, Landroid/webkit/HTML5VideoView$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoView$1;-><init>(Landroid/webkit/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 732
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 749
    new-instance v0, Landroid/webkit/HTML5VideoView$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoView$3;-><init>(Landroid/webkit/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 276
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 277
    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 278
    iput-object p1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 279
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 281
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 282
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    .line 283
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mDisplaySize:Landroid/graphics/Point;

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mWebViewLocation:[I

    .line 285
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->attachMediaController()V

    return-void
.end method

.method static synthetic access$1102(Landroid/webkit/HTML5VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mNeedsAttachToInlineGlContext:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->finishExitingFullscreen()V

    return-void
.end method

.method static synthetic access$1402(Landroid/webkit/HTML5VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I

    return v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mAnimationState:I

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mAnimationState:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineXOffset()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoView;)Landroid/webkit/HTML5VideoView$VideoTextureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineYOffset()F

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineXScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineYScale()F

    move-result v0

    return v0
.end method

.method private attachMediaController()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    iget-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v2, v6, :cond_5

    .line 551
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-nez v2, :cond_0

    .line 552
    new-instance v1, Landroid/webkit/HTML5VideoView$FullscreenMediaController;

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v5}, Landroid/webkit/HTML5VideoView$FullscreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 553
    .local v1, mc:Landroid/widget/MediaController;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 554
    iput-object v1, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 555
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 556
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-object v5, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, v5}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 557
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 560
    .end local v1           #mc:Landroid/widget/MediaController;
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 562
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_9

    .line 563
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    .line 565
    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    .line 567
    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    .line 574
    :goto_3
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 576
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mAnimationState:I

    if-ne v2, v6, :cond_5

    .line 578
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 579
    :cond_4
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 584
    .end local v0           #data:Landroid/media/Metadata;
    :cond_5
    :goto_4
    return-void

    .restart local v0       #data:Landroid/media/Metadata;
    :cond_6
    move v2, v3

    .line 563
    goto :goto_0

    :cond_7
    move v2, v3

    .line 565
    goto :goto_1

    :cond_8
    move v2, v3

    .line 567
    goto :goto_2

    .line 570
    :cond_9
    iput-boolean v4, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    iput-boolean v4, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    iput-boolean v4, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    goto :goto_3

    .line 581
    :cond_a
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_4
.end method

.method private finishExitingFullscreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullscreen()V

    .line 830
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 831
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    .line 832
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 834
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    .line 836
    :cond_0
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    .line 838
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 840
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->setInlineFrameAvailableListener()V

    .line 841
    return-void
.end method

.method private static generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 290
    .local v2, isPrivate:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 292
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 293
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    if-eqz v2, :cond_1

    .line 296
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    return-object v1
.end method

.method private getInlineXOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 790
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->updateDisplaySize()V

    .line 791
    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mInlineX:F

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mWebViewLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineXScale()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 806
    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I

    if-nez v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineYOffset()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 798
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->updateDisplaySize()V

    .line 799
    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mInlineY:F

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mWebViewLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getInlineYScale()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 813
    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I

    if-nez v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    iget v1, p0, Landroid/webkit/HTML5VideoView;->mFullscreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 345
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 353
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 354
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 351
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setInlineFrameAvailableListener()V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 380
    return-void
.end method

.method private switchProgressView(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private updateDisplaySize()V
    .locals 6

    .prologue
    .line 820
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 821
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 822
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 824
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mWebViewLocation:[I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 825
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mWebViewLocation:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    iget-object v5, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 826
    return-void
.end method


# virtual methods
.method public attachToInlineGlContextIfNeeded()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mNeedsAttachToInlineGlContext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 210
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mNeedsAttachToInlineGlContext:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 424
    .local v1, surfaceTexture:Landroid/graphics/SurfaceTexture;
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 425
    .local v0, surface:Landroid/view/Surface;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 426
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 427
    return-void
.end method

.method public enterFullscreenVideoState(Landroid/webkit/WebViewClassic;FFFF)V
    .locals 8
    .parameter "webView"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 626
    iget-boolean v2, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-ne v2, v6, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iput-boolean v6, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    .line 629
    iput v5, p0, Landroid/webkit/HTML5VideoView;->mAnimationState:I

    .line 630
    iput v5, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    .line 631
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 632
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mInlineX:F

    .line 633
    iput p3, p0, Landroid/webkit/HTML5VideoView;->mInlineY:F

    .line 634
    iput p4, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    .line 635
    iput p5, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    .line 637
    sget-boolean v2, Landroid/webkit/HTML5VideoView;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 638
    :cond_2
    new-instance v2, Landroid/webkit/HTML5VideoView$VideoTextureView;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Landroid/webkit/HTML5VideoView$VideoTextureView;-><init>(Landroid/webkit/HTML5VideoView;Landroid/content/Context;Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    .line 639
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, p0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 640
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, v6}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setFocusable(Z)V

    .line 641
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, v6}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setFocusableInTouchMode(Z)V

    .line 642
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView$VideoTextureView;->requestFocus()Z

    .line 644
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    .line 645
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v7, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 649
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, v5}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setVisibility(I)V

    .line 650
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, p0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 652
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 655
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 656
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 657
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 660
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 661
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    .line 664
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    .line 665
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 666
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 668
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 670
    :cond_4
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public exitFullscreenVideoState(FFFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 679
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    .line 681
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mInlineX:F

    .line 682
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mInlineY:F

    .line 683
    iput p3, p0, Landroid/webkit/HTML5VideoView;->mInlineWidth:F

    .line 684
    iput p4, p0, Landroid/webkit/HTML5VideoView;->mInlineHeight:F

    .line 687
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 692
    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 693
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 694
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->finishExitingFullscreen()V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/webkit/HTML5VideoView$2;

    invoke-direct {v1, p0}, Landroid/webkit/HTML5VideoView$2;-><init>(Landroid/webkit/HTML5VideoView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 703
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 704
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineXScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineYScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineXOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->getInlineYOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public fullscreenExited()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 727
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentBufferPercentage:I

    .line 729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x3

    .line 386
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPauseDuringPreparing()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getStartWhenPrepared()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    if-nez v0, :cond_1

    .line 433
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    .line 434
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 435
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 437
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureName()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mTextureNames:[I

    aget v0, v1, v0

    .line 457
    :cond_0
    return v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 312
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 313
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 404
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 405
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 407
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 410
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v0

    if-nez v0, :cond_3

    .line 411
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 415
    :goto_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-eqz v0, :cond_2

    .line 416
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->attachMediaController()V

    .line 417
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_2
    return-void

    .line 413
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 605
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 611
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 608
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 757
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 758
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->toggleMediaControlsVisiblity()V

    .line 759
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 441
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I

    .line 442
    iput p3, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I

    .line 443
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTextureView:Landroid/webkit/HTML5VideoView$VideoTextureView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView$VideoTextureView;->requestLayout()V

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 451
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 192
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 198
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 201
    :cond_2
    return-void

    .line 183
    :cond_3
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_0

    .line 184
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_0
.end method

.method public prepareDataAndDisplayMode()V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->decideDisplayMode()V

    .line 359
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 360
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 361
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 362
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 363
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 365
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 369
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 373
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsFullscreen:Z

    if-nez v0, :cond_1

    .line 374
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;->setInlineFrameAvailableListener()V

    .line 375
    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 250
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->stopPlayback()V

    .line 252
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 253
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 255
    :cond_0
    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 256
    return-void
.end method

.method public retrieveMetadata(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 316
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 318
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :try_start_2
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 319
    const/16 v2, 0x12

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v2

    :try_start_6
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 321
    const/16 v2, 0x13

    :try_start_7
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v2

    :try_start_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9

    move-result v2

    :try_start_9
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a

    .line 323
    const/16 v2, 0x9

    :try_start_a
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b

    move-result-object v2

    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    move-result v2

    :try_start_c
    iput v2, p0, Landroid/webkit/HTML5VideoView;->mDuration:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d

    .line 325
    :try_start_d
    iget v2, p0, Landroid/webkit/HTML5VideoView;->mVideoWidth:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e

    :try_start_e
    iget v3, p0, Landroid/webkit/HTML5VideoView;->mVideoHeight:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    iget v4, p0, Landroid/webkit/HTML5VideoView;->mDuration:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    :try_start_10
    invoke-virtual {p1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy;->updateSizeAndDuration(III)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_11

    .line 333
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 335
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2

    .line 328
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_0

    :catch_5
    move-exception v2

    goto :goto_0

    :catch_6
    move-exception v2

    goto :goto_0

    :catch_7
    move-exception v2

    goto :goto_0

    :catch_8
    move-exception v2

    goto :goto_0

    :catch_9
    move-exception v2

    goto :goto_0

    :catch_a
    move-exception v2

    goto :goto_0

    :catch_b
    move-exception v2

    goto :goto_0

    :catch_c
    move-exception v2

    goto :goto_0

    :catch_d
    move-exception v2

    goto :goto_0

    :catch_e
    move-exception v2

    goto :goto_0

    :catch_f
    move-exception v2

    goto :goto_0

    :catch_10
    move-exception v2

    goto :goto_0

    :catch_11
    move-exception v2

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 235
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 339
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 340
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 469
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 470
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoView;->switchProgressView(Z)V

    .line 472
    :cond_0
    return-void
.end method

.method public setStartWhenPrepared(Z)V
    .locals 0
    .parameter "willPlay"

    .prologue
    .line 735
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 736
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 304
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-static {p1, v0}, Landroid/webkit/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 305
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 269
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 272
    :cond_0
    return-void
.end method

.method public showControllerInFullscreen()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 156
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 162
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoView;Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 172
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPlaying()V

    .line 174
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 262
    :cond_0
    return-void
.end method
