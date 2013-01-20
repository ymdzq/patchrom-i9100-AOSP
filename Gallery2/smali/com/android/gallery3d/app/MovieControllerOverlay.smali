.class public Lcom/android/gallery3d/app/MovieControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay;
.implements Lcom/android/gallery3d/app/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    }
.end annotation


# instance fields
.field private final background:Landroid/view/View;

.field private canReplay:Z

.field private final errorView:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

.field private final loadingView:Landroid/widget/LinearLayout;

.field private final mWindowInsets:Landroid/graphics/Rect;

.field private mainView:Landroid/view/View;

.field private final playPauseReplayView:Landroid/widget/ImageView;

.field private final startHidingRunnable:Ljava/lang/Runnable;

.field private state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

.field private final timeBar:Lcom/android/gallery3d/app/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, -0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v8, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    .line 318
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 82
    sget-object v5, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 84
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    .line 90
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v5, Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {v5, p1, p0}, Lcom/android/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/TimeBar$Listener;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    .line 94
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    .line 97
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 99
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 100
    .local v3, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 101
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .line 103
    .local v0, loadingText:Landroid/widget/TextView;
    const v5, 0x7f0d0129

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    .line 108
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f02000a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 112
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 113
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 117
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 120
    new-instance v5, Lcom/android/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 126
    const v5, 0x7f050008

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 127
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 247
    return-void
.end method

.method private createOverlayTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 136
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, view:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 140
    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 360
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 361
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 362
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 363
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 364
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    :cond_0
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    .line 204
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 209
    return-void

    :cond_0
    move v0, v2

    .line 204
    goto :goto_0

    :cond_1
    move v0, v2

    .line 205
    goto :goto_1

    :cond_2
    move v1, v2

    .line 206
    goto :goto_2
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method private updateViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 378
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_2

    const v0, 0x7f020080

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v3, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v3, :cond_3

    const v0, 0x7f02007f

    goto :goto_1

    :cond_3
    const v0, 0x7f020081

    goto :goto_1

    .line 382
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "insets"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 152
    return-object p0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 188
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 189
    .local v0, wasHidden:Z
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 190
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/TimeBar;->setVisibility(I)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestFocus()Z

    .line 197
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 200
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 259
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 251
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onReplay()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    .line 280
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 330
    iget-object v7, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mWindowInsets:Landroid/graphics/Rect;

    .line 331
    .local v7, insets:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    .line 332
    .local v9, pl:I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 333
    .local v10, pr:I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    .line 334
    .local v11, pt:I
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 336
    .local v8, pb:I
    sub-int v5, p5, p3

    .line 337
    .local v5, h:I
    sub-int v4, p4, p2

    .line 338
    .local v4, w:I
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 340
    .local v6, error:Z
    :goto_0
    sub-int v12, v5, v8

    .line 344
    .local v12, y:I
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->background:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/TimeBar;->getBarHeight()I

    move-result v2

    sub-int v2, v12, v2

    invoke-virtual {v0, v1, v2, v4, v12}, Landroid/view/View;->layout(IIII)V

    .line 345
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TimeBar;->getPreferredHeight()I

    move-result v1

    sub-int v1, v12, v1

    sub-int v2, v4, v10

    invoke-virtual {v0, v9, v1, v2, v12}, Lcom/android/gallery3d/app/TimeBar;->layout(IIII)V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/TimeBar;->requestLayout()V

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 353
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->mainView:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 356
    :cond_0
    return-void

    .line 338
    .end local v6           #error:Z
    .end local v12           #y:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->measureChildren(II)V

    .line 370
    return-void
.end method

.method public onScrubbingEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekEnd(I)V

    .line 404
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekMove(I)V

    .line 399
    return-void
.end method

.method public onScrubbingStart()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onSeekStart()V

    .line 394
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 285
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 296
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCanReplay(Z)V
    .locals 0
    .parameter "canReplay"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->canReplay:Z

    .line 149
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    .line 145
    return-void
.end method

.method public setTimes(II)V
    .locals 1
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->timeBar:Lcom/android/gallery3d/app/TimeBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/TimeBar;->setTime(II)V

    .line 185
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 213
    .local v0, wasHidden:Z
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 214
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateViews()V

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setFocusable(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->listener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 221
    return-void
.end method

.method public showEnded()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ENDED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 167
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 176
    sget-object v1, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->ERROR:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 177
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 178
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 179
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->LOADING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public showPaused()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PAUSED:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public showPlaying()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 158
    return-void
.end method
